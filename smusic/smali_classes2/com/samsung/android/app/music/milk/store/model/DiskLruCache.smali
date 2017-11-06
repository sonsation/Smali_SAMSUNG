.class public Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;,
        Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;,
        Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Snapshot;
    }
.end annotation


# static fields
.field private static final ANY_SEQUENCE_NUMBER:J = -0x1L

.field private static final CLEAN:Ljava/lang/String; = "CLEAN"

.field private static final DIRTY:Ljava/lang/String; = "DIRTY"

.field private static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field private static final JOURNAL_FILE_TMP:Ljava/lang/String; = "journal.tmp"

.field private static final LOG_TAG:Ljava/lang/String; = "DiskLruCache"

.field private static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final READ:Ljava/lang/String; = "READ"

.field private static final REMOVE:Ljava/lang/String; = "REMOVE"

.field private static final UTF_8:Ljava/nio/charset/Charset;

.field private static final VERSION_1:Ljava/lang/String; = "1"


# instance fields
.field private final appVersion:I

.field private final cleanupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final directory:Ljava/io/File;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final journalFile:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field private journalWriter:Ljava/io/Writer;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final maxSize:J

.field private nextSequenceNumber:J

.field private redundantOpCount:I

.field private size:J

.field private final valueCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 8
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "appVersion"    # I
    .param p3, "valueCount"    # I
    .param p4, "maxSize"    # J

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-wide v4, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->size:J

    .line 182
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v1, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 191
    iput-wide v4, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->nextSequenceNumber:J

    .line 194
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 196
    new-instance v0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$1;-><init>(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    .line 213
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->directory:Ljava/io/File;

    .line 214
    iput p2, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->appVersion:I

    .line 215
    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->journalFile:Ljava/io/File;

    .line 216
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 217
    iput p3, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->valueCount:I

    .line 218
    iput-wide p4, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->maxSize:J

    .line 219
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;)Ljava/io/Writer;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->journalWriter:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->trimToSize()V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;Ljava/lang/String;J)Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {p0}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Ljava/io/Closeable;)V
    .locals 0
    .param p0, "x0"    # Ljava/io/Closeable;

    .prologue
    .line 35
    invoke-static {p0}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;
    .param p1, "x1"    # Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;
    .param p2, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->completeEdit(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;

    .prologue
    .line 35
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->valueCount:I

    return v0
.end method

.method static synthetic access$2200(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->rebuildJournal()V

    return-void
.end method

.method static synthetic access$402(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->redundantOpCount:I

    return p1
.end method

.method private checkNotClosed()V
    .locals 2

    .prologue
    .line 610
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 611
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 613
    :cond_0
    return-void
.end method

.method private static closeQuietly(Ljava/io/Closeable;)V
    .locals 2
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 87
    if-eqz p0, :cond_0

    .line 89
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 92
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private declared-synchronized completeEdit(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;Z)V
    .locals 12
    .param p1, "editor"    # Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;
    .param p2, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 507
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;->access$1400(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;)Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;

    move-result-object v2

    .line 508
    .local v2, "entry":Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;
    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->access$700(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;)Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 509
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8}, Ljava/lang/IllegalStateException;-><init>()V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    .end local v2    # "entry":Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 513
    .restart local v2    # "entry":Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;
    :cond_0
    if-eqz p2, :cond_2

    :try_start_1
    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->access$600(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 514
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v8, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->valueCount:I

    if-ge v3, v8, :cond_2

    .line 515
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 516
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;->abort()V

    .line 517
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "edit didn\'t create file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 514
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 522
    .end local v3    # "i":I
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget v8, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->valueCount:I

    if-ge v3, v8, :cond_5

    .line 523
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v1

    .line 524
    .local v1, "dirty":Ljava/io/File;
    if-eqz p2, :cond_4

    .line 525
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 526
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v0

    .line 527
    .local v0, "clean":Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 528
    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->access$1000(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;)[J

    move-result-object v8

    aget-wide v6, v8, v3

    .line 529
    .local v6, "oldLength":J
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 530
    .local v4, "newLength":J
    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->access$1000(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;)[J

    move-result-object v8

    aput-wide v4, v8, v3

    .line 531
    iget-wide v8, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->size:J

    sub-long/2addr v8, v6

    add-long/2addr v8, v4

    iput-wide v8, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->size:J

    .line 522
    .end local v0    # "clean":Ljava/io/File;
    .end local v4    # "newLength":J
    .end local v6    # "oldLength":J
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 534
    :cond_4
    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    goto :goto_2

    .line 538
    .end local v1    # "dirty":Ljava/io/File;
    :cond_5
    iget v8, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->redundantOpCount:I

    .line 539
    const/4 v8, 0x0

    invoke-static {v2, v8}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->access$702(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;)Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;

    .line 540
    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->access$600(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;)Z

    move-result v8

    or-int/2addr v8, p2

    if-eqz v8, :cond_9

    .line 541
    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->access$602(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;Z)Z

    .line 542
    iget-object v8, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CLEAN "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->access$1100(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 543
    if-eqz p2, :cond_6

    .line 544
    iget-wide v8, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->nextSequenceNumber:J

    const-wide/16 v10, 0x1

    add-long/2addr v10, v8

    iput-wide v10, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->nextSequenceNumber:J

    invoke-static {v2, v8, v9}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->access$1202(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;J)J

    .line 551
    :cond_6
    :goto_3
    iget-wide v8, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->size:J

    iget-wide v10, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->maxSize:J

    cmp-long v8, v8, v10

    if-gtz v8, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->journalRebuildRequired()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 552
    :cond_7
    iget-object v8, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v9, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v8, v9}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 554
    :cond_8
    monitor-exit p0

    return-void

    .line 547
    :cond_9
    :try_start_2
    iget-object v8, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->access$1100(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    iget-object v8, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "REMOVE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->access$1100(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method private static copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "original":[Ljava/lang/Object;, "[TT;"
    array-length v1, p0

    .line 50
    .local v1, "originalLength":I
    if-le p1, p2, :cond_0

    .line 51
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 53
    :cond_0
    if-ltz p1, :cond_1

    if-le p1, v1, :cond_2

    .line 54
    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 56
    :cond_2
    sub-int v3, p2, p1

    .line 57
    .local v3, "resultLength":I
    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 58
    .local v0, "copyLength":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v2, v4

    check-cast v2, [Ljava/lang/Object;

    .line 59
    .local v2, "result":[Ljava/lang/Object;, "[TT;"
    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    return-object v2
.end method

.method private static deleteContents(Ljava/io/File;)V
    .locals 5
    .param p0, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 69
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 70
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_3

    .line 71
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v0, v1, v2

    .line 72
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 73
    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->deleteContents(Ljava/io/File;)V

    .line 75
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_1

    .line 76
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to delete file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "files":[Ljava/io/File;
    :cond_2
    const-string v2, "DiskLruCache"

    const-string v3, "deleteContents : dir does not exist "

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    :cond_3
    return-void
.end method

.method private static deleteIfExists(Ljava/io/File;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 397
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 398
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 400
    :cond_0
    return-void
.end method

.method private declared-synchronized edit(Ljava/lang/String;J)Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "expectedSequenceNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 462
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->checkNotClosed()V

    .line 463
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 464
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;

    .line 465
    .local v1, "entry":Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    .line 466
    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->access$1200(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_1

    .line 484
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 469
    :cond_1
    if-nez v1, :cond_3

    .line 470
    :try_start_1
    new-instance v1, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;

    .end local v1    # "entry":Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;
    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;-><init>(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;Ljava/lang/String;Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$1;)V

    .line 471
    .restart local v1    # "entry":Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    :cond_2
    new-instance v0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;-><init>(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$1;)V

    .line 477
    .local v0, "editor":Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;
    invoke-static {v1, v0}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->access$702(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;)Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;

    .line 480
    if-eqz p1, :cond_0

    .line 481
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DIRTY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 482
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 462
    .end local v0    # "editor":Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;
    .end local v1    # "entry":Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 472
    .restart local v1    # "entry":Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;
    :cond_3
    :try_start_2
    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->access$700(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;)Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_0
.end method

.method private static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 668
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private journalRebuildRequired()Z
    .locals 3

    .prologue
    .line 561
    const/16 v0, 0x7d0

    .line 562
    .local v0, "REDUNDANT_OP_COMPACT_THRESHOLD":I
    iget v1, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->redundantOpCount:I

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->redundantOpCount:I

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 563
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized open(Ljava/io/File;IIJ)Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;
    .locals 9
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "appVersion"    # I
    .param p2, "valueCount"    # I
    .param p3, "maxSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    const-class v7, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;

    monitor-enter v7

    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-gtz v1, :cond_0

    .line 234
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxSize <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    :catchall_0
    move-exception v1

    monitor-exit v7

    throw v1

    .line 236
    :cond_0
    if-gtz p2, :cond_1

    .line 237
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "valueCount <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 241
    :cond_1
    new-instance v0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 242
    .local v0, "cache":Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;
    iget-object v1, v0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    .line 244
    :try_start_2
    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->readJournal()V

    .line 245
    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->processJournal()V

    .line 246
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, v0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 260
    :goto_0
    monitor-exit v7

    return-object v0

    .line 248
    :catch_0
    move-exception v6

    .line 249
    .local v6, "journalIsCorrupt":Ljava/io/IOException;
    :try_start_3
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DiskLruCache "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is corrupt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 250
    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", removing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 249
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->delete()V

    .line 256
    .end local v6    # "journalIsCorrupt":Ljava/io/IOException;
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 259
    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->rebuildJournal()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized processJournal()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 329
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 330
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;

    .line 331
    .local v0, "entry":Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;
    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->access$700(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;)Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;

    move-result-object v3

    if-nez v3, :cond_1

    .line 332
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_1
    iget v3, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_0

    .line 333
    iget-wide v4, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->size:J

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->access$1000(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;)[J

    move-result-object v3

    aget-wide v6, v3, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->size:J

    .line 332
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 336
    .end local v2    # "t":I
    :cond_1
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->access$702(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;)Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;

    .line 337
    const/4 v2, 0x0

    .restart local v2    # "t":I
    :goto_2
    iget v3, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_2

    .line 338
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 339
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 337
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 341
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 328
    .end local v0    # "entry":Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;>;"
    .end local v2    # "t":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 344
    .restart local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;>;"
    :cond_3
    monitor-exit p0

    return-void
.end method

.method private static readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x50

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 118
    .local v2, "result":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 119
    .local v0, "c":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 120
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 121
    :cond_0
    const/16 v3, 0xa

    if-ne v0, v3, :cond_2

    .line 127
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 128
    .local v1, "length":I
    if-lez v1, :cond_1

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_1

    .line 129
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 131
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 125
    .end local v1    # "length":I
    :cond_2
    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static readFully(Ljava/io/Reader;)Ljava/lang/String;
    .locals 4
    .param p0, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    :try_start_0
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 101
    .local v2, "writer":Ljava/io/StringWriter;
    const/16 v3, 0x400

    new-array v0, v3, [C

    .line 103
    .local v0, "buffer":[C
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v1

    .local v1, "count":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 104
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/StringWriter;->write([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 108
    .end local v0    # "buffer":[C
    .end local v1    # "count":I
    .end local v2    # "writer":Ljava/io/StringWriter;
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    throw v3

    .line 106
    .restart local v0    # "buffer":[C
    .restart local v1    # "count":I
    .restart local v2    # "writer":Ljava/io/StringWriter;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 108
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    return-object v3
.end method

.method private readJournal()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    iget-object v8, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 266
    .local v3, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 267
    .local v4, "magic":Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 268
    .local v6, "version":Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "appVersionString":Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 270
    .local v5, "valueCountString":Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "blank":Ljava/lang/String;
    const-string v7, "libcore.io.DiskLruCache"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "1"

    .line 272
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->appVersion:I

    .line 273
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->valueCount:I

    .line 274
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, ""

    .line 275
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 276
    :cond_0
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unexpected journal header: ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    .end local v0    # "appVersionString":Ljava/lang/String;
    .end local v1    # "blank":Ljava/lang/String;
    .end local v4    # "magic":Ljava/lang/String;
    .end local v5    # "valueCountString":Ljava/lang/String;
    .end local v6    # "version":Ljava/lang/String;
    :catchall_0
    move-exception v7

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    throw v7

    .line 282
    .restart local v0    # "appVersionString":Ljava/lang/String;
    .restart local v1    # "blank":Ljava/lang/String;
    .restart local v4    # "magic":Ljava/lang/String;
    .restart local v5    # "valueCountString":Ljava/lang/String;
    .restart local v6    # "version":Ljava/lang/String;
    :cond_1
    :goto_0
    :try_start_1
    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 283
    :catch_0
    move-exception v2

    .line 288
    .local v2, "endOfJournal":Ljava/io/EOFException;
    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    .line 290
    return-void
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .locals 9
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 293
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 294
    .local v2, "parts":[Ljava/lang/String;
    array-length v3, v2

    if-ge v3, v5, :cond_0

    .line 295
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unexpected journal line: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 298
    :cond_0
    aget-object v1, v2, v8

    .line 299
    .local v1, "key":Ljava/lang/String;
    aget-object v3, v2, v6

    const-string v4, "REMOVE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    array-length v3, v2

    if-ne v3, v5, :cond_2

    .line 300
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    :cond_1
    :goto_0
    return-void

    .line 304
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;

    .line 305
    .local v0, "entry":Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;
    if-nez v0, :cond_3

    .line 306
    new-instance v0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;

    .end local v0    # "entry":Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;
    invoke-direct {v0, p0, v1, v7}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;-><init>(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;Ljava/lang/String;Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$1;)V

    .line 307
    .restart local v0    # "entry":Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    :cond_3
    aget-object v3, v2, v6

    const-string v4, "CLEAN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    array-length v3, v2

    iget v4, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->valueCount:I

    add-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_4

    .line 311
    invoke-static {v0, v8}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->access$602(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;Z)Z

    .line 312
    invoke-static {v0, v7}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->access$702(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;)Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;

    .line 313
    array-length v3, v2

    invoke-static {v2, v5, v3}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->access$800(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;[Ljava/lang/String;)V

    goto :goto_0

    .line 314
    :cond_4
    aget-object v3, v2, v6

    const-string v4, "DIRTY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    array-length v3, v2

    if-ne v3, v5, :cond_5

    .line 315
    new-instance v3, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;

    invoke-direct {v3, p0, v0, v7}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;-><init>(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$1;)V

    invoke-static {v0, v3}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->access$702(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;)Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;

    goto :goto_0

    .line 316
    :cond_5
    aget-object v3, v2, v6

    const-string v4, "READ"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    array-length v3, v2

    if-eq v3, v5, :cond_1

    .line 319
    :cond_6
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unexpected journal line: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private declared-synchronized rebuildJournal()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 352
    monitor-enter p0

    const/4 v2, 0x0

    .line 354
    .local v2, "writer":Ljava/io/Writer;
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-eqz v4, :cond_0

    .line 355
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v4}, Ljava/io/Writer;->close()V

    .line 358
    :cond_0
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 359
    .end local v2    # "writer":Ljava/io/Writer;
    .local v3, "writer":Ljava/io/Writer;
    :try_start_1
    const-string v4, "libcore.io.DiskLruCache"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 360
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 361
    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 362
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 363
    iget v4, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->appVersion:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 364
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 365
    iget v4, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->valueCount:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 366
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 367
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 369
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;

    .line 370
    .local v1, "entry":Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;
    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->access$700(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;)Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 371
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DIRTY "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->access$1100(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 380
    .end local v1    # "entry":Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 381
    .end local v3    # "writer":Ljava/io/Writer;
    .local v0, "e":Ljava/io/IOException;
    .restart local v2    # "writer":Ljava/io/Writer;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 383
    if-eqz v2, :cond_1

    .line 384
    :try_start_3
    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 387
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    monitor-exit p0

    return-void

    .line 373
    .end local v2    # "writer":Ljava/io/Writer;
    .restart local v1    # "entry":Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;
    .restart local v3    # "writer":Ljava/io/Writer;
    :cond_2
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CLEAN "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->access$1100(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 383
    .end local v1    # "entry":Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;
    :catchall_0
    move-exception v4

    move-object v2, v3

    .end local v3    # "writer":Ljava/io/Writer;
    .restart local v2    # "writer":Ljava/io/Writer;
    :goto_3
    if-eqz v2, :cond_3

    .line 384
    :try_start_5
    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    :cond_3
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 352
    :catchall_1
    move-exception v4

    :goto_4
    monitor-exit p0

    throw v4

    .line 377
    .end local v2    # "writer":Ljava/io/Writer;
    .restart local v3    # "writer":Ljava/io/Writer;
    :cond_4
    :try_start_6
    invoke-virtual {v3}, Ljava/io/Writer;->close()V

    .line 378
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->journalFileTmp:Ljava/io/File;

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 379
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v4, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 383
    if-eqz v3, :cond_5

    .line 384
    :try_start_7
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object v2, v3

    .end local v3    # "writer":Ljava/io/Writer;
    .restart local v2    # "writer":Ljava/io/Writer;
    goto :goto_2

    .line 383
    :catchall_2
    move-exception v4

    goto :goto_3

    .line 380
    :catch_1
    move-exception v0

    goto :goto_1

    .line 352
    .end local v2    # "writer":Ljava/io/Writer;
    .restart local v3    # "writer":Ljava/io/Writer;
    :catchall_3
    move-exception v4

    move-object v2, v3

    .end local v3    # "writer":Ljava/io/Writer;
    .restart local v2    # "writer":Ljava/io/Writer;
    goto :goto_4

    .end local v2    # "writer":Ljava/io/Writer;
    .restart local v3    # "writer":Ljava/io/Writer;
    :cond_5
    move-object v2, v3

    .end local v3    # "writer":Ljava/io/Writer;
    .restart local v2    # "writer":Ljava/io/Writer;
    goto :goto_2
.end method

.method private trimToSize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 642
    :goto_0
    iget-wide v2, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->size:J

    iget-wide v4, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->maxSize:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 643
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 644
    .local v0, "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->remove(Ljava/lang/String;)Z

    goto :goto_0

    .line 646
    .end local v0    # "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;>;"
    :cond_0
    return-void
.end method

.method private validateKey(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 659
    if-eqz p1, :cond_1

    .line 660
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\r"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 661
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keys must not contain spaces or newlines: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 665
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 628
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 639
    :goto_0
    monitor-exit p0

    return-void

    .line 631
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;

    .line 632
    .local v0, "entry":Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;
    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->access$700(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;)Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 633
    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->access$700(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;)Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 628
    .end local v0    # "entry":Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 636
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->trimToSize()V

    .line 637
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 638
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 654
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->close()V

    .line 655
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->directory:Ljava/io/File;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->deleteContents(Ljava/io/File;)V

    .line 656
    return-void
.end method

.method public edit(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 458
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 619
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->checkNotClosed()V

    .line 620
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->trimToSize()V

    .line 621
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 622
    monitor-exit p0

    return-void

    .line 619
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Snapshot;
    .locals 11
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 408
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->checkNotClosed()V

    .line 409
    if-eqz p1, :cond_0

    .line 410
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 412
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    .local v8, "entry":Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;
    if-nez v8, :cond_2

    .line 450
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v1

    .line 417
    :cond_2
    :try_start_1
    invoke-static {v8}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->access$600(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 426
    iget v2, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->valueCount:I

    new-array v6, v2, [Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 428
    .local v6, "ins":[Ljava/io/InputStream;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    :try_start_2
    iget v2, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->valueCount:I

    if-ge v9, v2, :cond_4

    .line 429
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {v8, v9}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v2, v6, v9
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 428
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, "e":Ljava/io/FileNotFoundException;
    if-eqz v6, :cond_1

    :try_start_3
    array-length v2, v6

    if-lez v2, :cond_1

    .line 433
    array-length v3, v6

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_1

    aget-object v10, v6, v2

    .line 434
    .local v10, "in":Ljava/io/InputStream;
    if-eqz v10, :cond_3

    .line 435
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 433
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 442
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v10    # "in":Ljava/io/InputStream;
    :cond_4
    iget v1, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->redundantOpCount:I

    .line 443
    if-eqz p1, :cond_5

    .line 444
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "READ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 446
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 447
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 450
    :cond_6
    new-instance v1, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Snapshot;

    invoke-static {v8}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->access$1200(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;)J

    move-result-wide v4

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Snapshot;-><init>(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 408
    .end local v6    # "ins":[Ljava/io/InputStream;
    .end local v8    # "entry":Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;
    .end local v9    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    .prologue
    .line 606
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public maxSize()J
    .locals 2

    .prologue
    .line 499
    iget-wide v0, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->maxSize:J

    return-wide v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 573
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->checkNotClosed()V

    .line 574
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 575
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;

    .line 576
    .local v0, "entry":Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->access$700(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;)Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_1

    .line 577
    :cond_0
    const/4 v3, 0x0

    .line 599
    :goto_0
    monitor-exit p0

    return v3

    .line 580
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    :try_start_1
    iget v3, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_3

    .line 581
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v1

    .line 582
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2

    .line 583
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 573
    .end local v0    # "entry":Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 585
    .restart local v0    # "entry":Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "i":I
    :cond_2
    :try_start_2
    iget-wide v4, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->size:J

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->access$1000(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;)[J

    move-result-object v3

    aget-wide v6, v3, v2

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->size:J

    .line 586
    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->access$1000(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;)[J

    move-result-object v3

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    .line 580
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 589
    .end local v1    # "file":Ljava/io/File;
    :cond_3
    iget v3, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->redundantOpCount:I

    .line 590
    if-eqz p1, :cond_4

    .line 591
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "REMOVE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 592
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->journalRebuildRequired()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 596
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 599
    :cond_5
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public declared-synchronized size()J
    .locals 2

    .prologue
    .line 503
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->size:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
