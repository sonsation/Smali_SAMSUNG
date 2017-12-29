.class public Ljava/util/zip/ZipFile;
.super Ljava/lang/Object;
.source "ZipFile.java"

# interfaces
.implements Ljava/util/zip/ZipConstants;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;,
        Ljava/util/zip/ZipFile$ZipFileInputStream;
    }
.end annotation


# static fields
.field private static final DEFLATED:I = 0x8

.field private static final JZENTRY_COMMENT:I = 0x2

.field private static final JZENTRY_EXTRA:I = 0x1

.field private static final JZENTRY_NAME:I = 0x0

.field public static final OPEN_DELETE:I = 0x4

.field public static final OPEN_READ:I = 0x1

.field private static final STORED:I

.field private static final usemmap:Z


# instance fields
.field private volatile closeRequested:Z

.field private final fileToRemoveOnClose:Ljava/io/File;

.field private final guard:Ldalvik/system/CloseGuard;

.field private inflaterCache:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Ljava/util/zip/Inflater;",
            ">;"
        }
    .end annotation
.end field

.field private jzfile:J

.field private final locsig:Z

.field private final name:Ljava/lang/String;

.field private final streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/io/InputStream;",
            "Ljava/util/zip/Inflater;",
            ">;"
        }
    .end annotation
.end field

.field private final total:I

.field private zc:Ljava/util/zip/ZipCoder;


# direct methods
.method static synthetic -get0(Ljava/util/zip/ZipFile;)Z
    .locals 1

    iget-boolean v0, p0, Ljava/util/zip/ZipFile;->closeRequested:Z

    return v0
.end method

.method static synthetic -get1(Ljava/util/zip/ZipFile;)J
    .locals 2

    iget-wide v0, p0, Ljava/util/zip/ZipFile;->jzfile:J

    return-wide v0
.end method

.method static synthetic -get2(Ljava/util/zip/ZipFile;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/zip/ZipFile;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Ljava/util/zip/ZipFile;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Ljava/util/zip/ZipFile;->streams:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get4(Ljava/util/zip/ZipFile;)I
    .locals 1

    iget v0, p0, Ljava/util/zip/ZipFile;->total:I

    return v0
.end method

.method static synthetic -wrap0(JJJ[BII)I
    .locals 2
    .param p0, "jzfile"    # J
    .param p2, "jzentry"    # J
    .param p4, "pos"    # J
    .param p6, "b"    # [B
    .param p7, "off"    # I
    .param p8, "len"    # I

    .prologue
    invoke-static/range {p0 .. p8}, Ljava/util/zip/ZipFile;->read(JJJ[BII)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(J)Ljava/lang/String;
    .locals 2
    .param p0, "jzfile"    # J

    .prologue
    invoke-static {p0, p1}, Ljava/util/zip/ZipFile;->getZipMessage(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Ljava/util/zip/ZipFile;Ljava/lang/String;J)Ljava/util/zip/ZipEntry;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "jzentry"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3}, Ljava/util/zip/ZipFile;->getZipEntry(Ljava/lang/String;J)Ljava/util/zip/ZipEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(J)J
    .locals 2
    .param p0, "jzentry"    # J

    .prologue
    invoke-static {p0, p1}, Ljava/util/zip/ZipFile;->getEntryCSize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap4(J)J
    .locals 2
    .param p0, "jzentry"    # J

    .prologue
    invoke-static {p0, p1}, Ljava/util/zip/ZipFile;->getEntrySize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap5(JI)J
    .locals 2
    .param p0, "jzfile"    # J
    .param p2, "i"    # I

    .prologue
    invoke-static {p0, p1, p2}, Ljava/util/zip/ZipFile;->getNextEntry(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap6(Ljava/util/zip/ZipFile;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/zip/ZipFile;->ensureOpenOrZipException()V

    return-void
.end method

.method static synthetic -wrap7(Ljava/util/zip/ZipFile;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/zip/ZipFile;->ensureOpen()V

    return-void
.end method

.method static synthetic -wrap8(JJ)V
    .locals 0
    .param p0, "jzfile"    # J
    .param p2, "jzentry"    # J

    .prologue
    invoke-static {p0, p1, p2, p3}, Ljava/util/zip/ZipFile;->freeEntry(JJ)V

    return-void
.end method

.method static synthetic -wrap9(Ljava/util/zip/ZipFile;Ljava/util/zip/Inflater;)V
    .locals 0
    .param p1, "inf"    # Ljava/util/zip/Inflater;

    .prologue
    invoke-direct {p0, p1}, Ljava/util/zip/ZipFile;->releaseInflater(Ljava/util/zip/Inflater;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    sput-boolean v0, Ljava/util/zip/ZipFile;->usemmap:Z

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    .line 161
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, p2, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;ILjava/nio/charset/Charset;)V

    .line 147
    return-void
.end method

.method public constructor <init>(Ljava/io/File;ILjava/nio/charset/Charset;)V
    .locals 8
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mode"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-boolean v5, p0, Ljava/util/zip/ZipFile;->closeRequested:Z

    .line 70
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v5

    iput-object v5, p0, Ljava/util/zip/ZipFile;->guard:Ldalvik/system/CloseGuard;

    .line 341
    new-instance v5, Ljava/util/WeakHashMap;

    invoke-direct {v5}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v5, p0, Ljava/util/zip/ZipFile;->streams:Ljava/util/Map;

    .line 483
    new-instance v5, Ljava/util/ArrayDeque;

    invoke-direct {v5}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v5, p0, Ljava/util/zip/ZipFile;->inflaterCache:Ljava/util/Deque;

    .line 201
    and-int/lit8 v5, p2, 0x1

    if-eqz v5, :cond_0

    .line 202
    and-int/lit8 v5, p2, -0x6

    if-eqz v5, :cond_1

    .line 203
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal mode: 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 204
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 203
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 209
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 210
    .local v2, "length":J
    const-wide/16 v6, 0x16

    cmp-long v5, v2, v6

    if-gez v5, :cond_4

    .line 211
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 214
    :cond_2
    new-instance v4, Ljava/util/zip/ZipException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File too short to be a zip file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 212
    :cond_3
    new-instance v4, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File doesn\'t exist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 217
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "name":Ljava/lang/String;
    and-int/lit8 v5, p2, 0x4

    if-eqz v5, :cond_5

    move-object v4, p1

    :cond_5
    iput-object v4, p0, Ljava/util/zip/ZipFile;->fileToRemoveOnClose:Ljava/io/File;

    .line 222
    if-nez p3, :cond_6

    .line 223
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "charset is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 224
    :cond_6
    invoke-static {p3}, Ljava/util/zip/ZipCoder;->get(Ljava/nio/charset/Charset;)Ljava/util/zip/ZipCoder;

    move-result-object v4

    iput-object v4, p0, Ljava/util/zip/ZipFile;->zc:Ljava/util/zip/ZipCoder;

    .line 225
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    sget-boolean v6, Ljava/util/zip/ZipFile;->usemmap:Z

    invoke-static {v1, p2, v4, v5, v6}, Ljava/util/zip/ZipFile;->open(Ljava/lang/String;IJZ)J

    move-result-wide v4

    iput-wide v4, p0, Ljava/util/zip/ZipFile;->jzfile:J

    .line 226
    iput-object v1, p0, Ljava/util/zip/ZipFile;->name:Ljava/lang/String;

    .line 227
    iget-wide v4, p0, Ljava/util/zip/ZipFile;->jzfile:J

    invoke-static {v4, v5}, Ljava/util/zip/ZipFile;->getTotal(J)I

    move-result v4

    iput v4, p0, Ljava/util/zip/ZipFile;->total:I

    .line 228
    iget-wide v4, p0, Ljava/util/zip/ZipFile;->jzfile:J

    invoke-static {v4, v5}, Ljava/util/zip/ZipFile;->startsWithLOC(J)Z

    move-result v4

    iput-boolean v4, p0, Ljava/util/zip/ZipFile;->locsig:Z

    .line 229
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 232
    .local v0, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->size()I

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 237
    iget-object v4, p0, Ljava/util/zip/ZipFile;->guard:Ldalvik/system/CloseGuard;

    const-string v5, "close"

    invoke-virtual {v4, v5}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 199
    return-void

    .line 233
    :cond_7
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V

    .line 234
    new-instance v4, Ljava/util/zip/ZipException;

    const-string v5, "No entries"

    invoke-direct {v4, v5}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public constructor <init>(Ljava/io/File;Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;ILjava/nio/charset/Charset;)V

    .line 284
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    .line 118
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;ILjava/nio/charset/Charset;)V

    .line 264
    return-void
.end method

.method private static native close(J)V
.end method

.method private ensureOpen()V
    .locals 4

    .prologue
    .line 660
    iget-boolean v0, p0, Ljava/util/zip/ZipFile;->closeRequested:Z

    if-eqz v0, :cond_0

    .line 661
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "zip file closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 664
    :cond_0
    iget-wide v0, p0, Ljava/util/zip/ZipFile;->jzfile:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 665
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The object is not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 659
    :cond_1
    return-void
.end method

.method private ensureOpenOrZipException()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 670
    iget-boolean v0, p0, Ljava/util/zip/ZipFile;->closeRequested:Z

    if-eqz v0, :cond_0

    .line 671
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "ZipFile closed"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 669
    :cond_0
    return-void
.end method

.method private static native freeEntry(JJ)V
.end method

.method private static native getCommentBytes(J)[B
.end method

.method private static native getEntry(J[BZ)J
.end method

.method private static native getEntryBytes(JI)[B
.end method

.method private static native getEntryCSize(J)J
.end method

.method private static native getEntryCrc(J)J
.end method

.method private static native getEntryFlag(J)I
.end method

.method private static native getEntryMethod(J)I
.end method

.method private static native getEntrySize(J)J
.end method

.method private static native getEntryTime(J)J
.end method

.method private static native getFileDescriptor(J)I
.end method

.method private getInflater()Ljava/util/zip/Inflater;
    .locals 3

    .prologue
    .line 460
    iget-object v2, p0, Ljava/util/zip/ZipFile;->inflaterCache:Ljava/util/Deque;

    monitor-enter v2

    .line 461
    :cond_0
    :try_start_0
    iget-object v1, p0, Ljava/util/zip/ZipFile;->inflaterCache:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/Inflater;

    .local v0, "inf":Ljava/util/zip/Inflater;
    if-eqz v0, :cond_1

    .line 462
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->ended()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v2

    .line 463
    return-object v0

    :cond_1
    monitor-exit v2

    .line 467
    new-instance v1, Ljava/util/zip/Inflater;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/zip/Inflater;-><init>(Z)V

    return-object v1

    .line 460
    .end local v0    # "inf":Ljava/util/zip/Inflater;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static native getNextEntry(JI)J
.end method

.method private static native getTotal(J)I
.end method

.method private getZipEntry(Ljava/lang/String;J)Ljava/util/zip/ZipEntry;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "jzentry"    # J

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 539
    new-instance v2, Ljava/util/zip/ZipEntry;

    invoke-direct {v2}, Ljava/util/zip/ZipEntry;-><init>()V

    .line 540
    .local v2, "e":Ljava/util/zip/ZipEntry;
    invoke-static {p2, p3}, Ljava/util/zip/ZipFile;->getEntryFlag(J)I

    move-result v3

    iput v3, v2, Ljava/util/zip/ZipEntry;->flag:I

    .line 541
    if-eqz p1, :cond_0

    .line 542
    iput-object p1, v2, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    .line 551
    :goto_0
    invoke-static {p2, p3}, Ljava/util/zip/ZipFile;->getEntryTime(J)J

    move-result-wide v4

    iput-wide v4, v2, Ljava/util/zip/ZipEntry;->time:J

    .line 552
    invoke-static {p2, p3}, Ljava/util/zip/ZipFile;->getEntryCrc(J)J

    move-result-wide v4

    iput-wide v4, v2, Ljava/util/zip/ZipEntry;->crc:J

    .line 553
    invoke-static {p2, p3}, Ljava/util/zip/ZipFile;->getEntrySize(J)J

    move-result-wide v4

    iput-wide v4, v2, Ljava/util/zip/ZipEntry;->size:J

    .line 554
    invoke-static {p2, p3}, Ljava/util/zip/ZipFile;->getEntryCSize(J)J

    move-result-wide v4

    iput-wide v4, v2, Ljava/util/zip/ZipEntry;->csize:J

    .line 555
    invoke-static {p2, p3}, Ljava/util/zip/ZipFile;->getEntryMethod(J)I

    move-result v3

    iput v3, v2, Ljava/util/zip/ZipEntry;->method:I

    .line 556
    const/4 v3, 0x1

    invoke-static {p2, p3, v3}, Ljava/util/zip/ZipFile;->getEntryBytes(JI)[B

    move-result-object v3

    iput-object v3, v2, Ljava/util/zip/ZipEntry;->extra:[B

    .line 557
    const/4 v3, 0x2

    invoke-static {p2, p3, v3}, Ljava/util/zip/ZipFile;->getEntryBytes(JI)[B

    move-result-object v0

    .line 558
    .local v0, "bcomm":[B
    if-nez v0, :cond_2

    .line 559
    iput-object v6, v2, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    .line 567
    :goto_1
    return-object v2

    .line 544
    .end local v0    # "bcomm":[B
    :cond_0
    invoke-static {p2, p3, v4}, Ljava/util/zip/ZipFile;->getEntryBytes(JI)[B

    move-result-object v1

    .line 545
    .local v1, "bname":[B
    iget-object v3, p0, Ljava/util/zip/ZipFile;->zc:Ljava/util/zip/ZipCoder;

    invoke-virtual {v3}, Ljava/util/zip/ZipCoder;->isUTF8()Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, v2, Ljava/util/zip/ZipEntry;->flag:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_1

    .line 546
    iget-object v3, p0, Ljava/util/zip/ZipFile;->zc:Ljava/util/zip/ZipCoder;

    array-length v4, v1

    invoke-virtual {v3, v1, v4}, Ljava/util/zip/ZipCoder;->toStringUTF8([BI)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    goto :goto_0

    .line 548
    :cond_1
    iget-object v3, p0, Ljava/util/zip/ZipFile;->zc:Ljava/util/zip/ZipCoder;

    array-length v4, v1

    invoke-virtual {v3, v1, v4}, Ljava/util/zip/ZipCoder;->toString([BI)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    goto :goto_0

    .line 561
    .end local v1    # "bname":[B
    .restart local v0    # "bcomm":[B
    :cond_2
    iget-object v3, p0, Ljava/util/zip/ZipFile;->zc:Ljava/util/zip/ZipCoder;

    invoke-virtual {v3}, Ljava/util/zip/ZipCoder;->isUTF8()Z

    move-result v3

    if-nez v3, :cond_3

    iget v3, v2, Ljava/util/zip/ZipEntry;->flag:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_3

    .line 562
    iget-object v3, p0, Ljava/util/zip/ZipFile;->zc:Ljava/util/zip/ZipCoder;

    array-length v4, v0

    invoke-virtual {v3, v0, v4}, Ljava/util/zip/ZipCoder;->toStringUTF8([BI)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    goto :goto_1

    .line 564
    :cond_3
    iget-object v3, p0, Ljava/util/zip/ZipFile;->zc:Ljava/util/zip/ZipCoder;

    array-length v4, v0

    invoke-virtual {v3, v0, v4}, Ljava/util/zip/ZipCoder;->toString([BI)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    goto :goto_1
.end method

.method private static native getZipMessage(J)Ljava/lang/String;
.end method

.method private static native open(Ljava/lang/String;IJZ)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native read(JJJ[BII)I
.end method

.method private releaseInflater(Ljava/util/zip/Inflater;)V
    .locals 2
    .param p1, "inf"    # Ljava/util/zip/Inflater;

    .prologue
    .line 474
    invoke-virtual {p1}, Ljava/util/zip/Inflater;->ended()Z

    move-result v0

    if-nez v0, :cond_0

    .line 475
    invoke-virtual {p1}, Ljava/util/zip/Inflater;->reset()V

    .line 476
    iget-object v1, p0, Ljava/util/zip/ZipFile;->inflaterCache:Ljava/util/Deque;

    monitor-enter v1

    .line 477
    :try_start_0
    iget-object v0, p0, Ljava/util/zip/ZipFile;->inflaterCache:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 473
    :cond_0
    return-void

    .line 476
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native startsWithLOC(J)Z
.end method


# virtual methods
.method public close()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    .line 591
    iget-boolean v6, p0, Ljava/util/zip/ZipFile;->closeRequested:Z

    if-eqz v6, :cond_0

    .line 592
    return-void

    .line 593
    :cond_0
    iget-object v6, p0, Ljava/util/zip/ZipFile;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v6}, Ldalvik/system/CloseGuard;->close()V

    .line 594
    const/4 v6, 0x1

    iput-boolean v6, p0, Ljava/util/zip/ZipFile;->closeRequested:Z

    .line 596
    monitor-enter p0

    .line 598
    :try_start_0
    iget-object v7, p0, Ljava/util/zip/ZipFile;->streams:Ljava/util/Map;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 599
    :try_start_1
    iget-object v6, p0, Ljava/util/zip/ZipFile;->streams:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 600
    new-instance v0, Ljava/util/HashMap;

    iget-object v6, p0, Ljava/util/zip/ZipFile;->streams:Ljava/util/Map;

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 601
    .local v0, "copy":Ljava/util/Map;, "Ljava/util/Map<Ljava/io/InputStream;Ljava/util/zip/Inflater;>;"
    iget-object v6, p0, Ljava/util/zip/ZipFile;->streams:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 602
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "e$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 603
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/InputStream;Ljava/util/zip/Inflater;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 604
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/Inflater;

    .line 605
    .local v3, "inf":Ljava/util/zip/Inflater;
    if-eqz v3, :cond_1

    .line 606
    invoke-virtual {v3}, Ljava/util/zip/Inflater;->end()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 598
    .end local v0    # "copy":Ljava/util/Map;, "Ljava/util/Map<Ljava/io/InputStream;Ljava/util/zip/Inflater;>;"
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/InputStream;Ljava/util/zip/Inflater;>;"
    .end local v2    # "e$iterator":Ljava/util/Iterator;
    .end local v3    # "inf":Ljava/util/zip/Inflater;
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v7

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 596
    :catchall_1
    move-exception v6

    monitor-exit p0

    throw v6

    :cond_2
    :try_start_3
    monitor-exit v7

    .line 614
    iget-object v7, p0, Ljava/util/zip/ZipFile;->inflaterCache:Ljava/util/Deque;

    monitor-enter v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 615
    :goto_1
    :try_start_4
    iget-object v6, p0, Ljava/util/zip/ZipFile;->inflaterCache:Ljava/util/Deque;

    invoke-interface {v6}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/Inflater;

    .restart local v3    # "inf":Ljava/util/zip/Inflater;
    if-eqz v3, :cond_3

    .line 616
    invoke-virtual {v3}, Ljava/util/zip/Inflater;->end()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    .line 614
    .end local v3    # "inf":Ljava/util/zip/Inflater;
    :catchall_2
    move-exception v6

    :try_start_5
    monitor-exit v7

    throw v6

    .restart local v3    # "inf":Ljava/util/zip/Inflater;
    :cond_3
    monitor-exit v7

    .line 620
    iget-wide v6, p0, Ljava/util/zip/ZipFile;->jzfile:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    .line 622
    iget-wide v4, p0, Ljava/util/zip/ZipFile;->jzfile:J

    .line 623
    .local v4, "zf":J
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Ljava/util/zip/ZipFile;->jzfile:J

    .line 625
    invoke-static {v4, v5}, Ljava/util/zip/ZipFile;->close(J)V

    .line 629
    .end local v4    # "zf":J
    :cond_4
    iget-object v6, p0, Ljava/util/zip/ZipFile;->fileToRemoveOnClose:Ljava/io/File;

    if-eqz v6, :cond_5

    .line 630
    iget-object v6, p0, Ljava/util/zip/ZipFile;->fileToRemoveOnClose:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_5
    monitor-exit p0

    .line 590
    return-void
.end method

.method public entries()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<+",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 499
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->ensureOpen()V

    .line 500
    new-instance v0, Ljava/util/zip/ZipFile$1;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile$1;-><init>(Ljava/util/zip/ZipFile;)V

    return-object v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 650
    iget-object v0, p0, Ljava/util/zip/ZipFile;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Ljava/util/zip/ZipFile;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 654
    :cond_0
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V

    .line 649
    return-void
.end method

.method public getComment()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 299
    monitor-enter p0

    .line 300
    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->ensureOpen()V

    .line 301
    iget-wide v2, p0, Ljava/util/zip/ZipFile;->jzfile:J

    invoke-static {v2, v3}, Ljava/util/zip/ZipFile;->getCommentBytes(J)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 302
    .local v0, "bcomm":[B
    if-nez v0, :cond_0

    monitor-exit p0

    .line 303
    return-object v1

    .line 304
    :cond_0
    :try_start_1
    iget-object v1, p0, Ljava/util/zip/ZipFile;->zc:Ljava/util/zip/ZipCoder;

    array-length v2, v0

    invoke-virtual {v1, v0, v2}, Ljava/util/zip/ZipCoder;->toString([BI)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 299
    .end local v0    # "bcomm":[B
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 317
    if-nez p1, :cond_0

    .line 318
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "name"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 320
    :cond_0
    const-wide/16 v0, 0x0

    .line 321
    .local v0, "jzentry":J
    monitor-enter p0

    .line 322
    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->ensureOpen()V

    .line 323
    iget-wide v4, p0, Ljava/util/zip/ZipFile;->jzfile:J

    iget-object v3, p0, Ljava/util/zip/ZipFile;->zc:Ljava/util/zip/ZipCoder;

    invoke-virtual {v3, p1}, Ljava/util/zip/ZipCoder;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v6, 0x1

    invoke-static {v4, v5, v3, v6}, Ljava/util/zip/ZipFile;->getEntry(J[BZ)J

    move-result-wide v0

    .line 324
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-eqz v3, :cond_1

    .line 325
    invoke-direct {p0, p1, v0, v1}, Ljava/util/zip/ZipFile;->getZipEntry(Ljava/lang/String;J)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 326
    .local v2, "ze":Ljava/util/zip/ZipEntry;
    iget-wide v4, p0, Ljava/util/zip/ZipFile;->jzfile:J

    invoke-static {v4, v5, v0, v1}, Ljava/util/zip/ZipFile;->freeEntry(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 327
    return-object v2

    .end local v2    # "ze":Ljava/util/zip/ZipEntry;
    :cond_1
    monitor-exit p0

    .line 330
    return-object v7

    .line 321
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getFileDescriptor()I
    .locals 2

    .prologue
    .line 784
    iget-wide v0, p0, Ljava/util/zip/ZipFile;->jzfile:J

    invoke-static {v0, v1}, Ljava/util/zip/ZipFile;->getFileDescriptor(J)I

    move-result v0

    return v0
.end method

.method public getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    .locals 12
    .param p1, "entry"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 358
    if-nez p1, :cond_0

    .line 359
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "entry"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 361
    :cond_0
    const-wide/16 v4, 0x0

    .line 362
    .local v4, "jzentry":J
    const/4 v0, 0x0

    .line 363
    .local v0, "in":Ljava/util/zip/ZipFile$ZipFileInputStream;
    monitor-enter p0

    .line 364
    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->ensureOpen()V

    .line 365
    iget-object v8, p0, Ljava/util/zip/ZipFile;->zc:Ljava/util/zip/ZipCoder;

    invoke-virtual {v8}, Ljava/util/zip/ZipCoder;->isUTF8()Z

    move-result v8

    if-nez v8, :cond_1

    iget v8, p1, Ljava/util/zip/ZipEntry;->flag:I

    and-int/lit16 v8, v8, 0x800

    if-eqz v8, :cond_1

    .line 366
    iget-wide v8, p0, Ljava/util/zip/ZipFile;->jzfile:J

    iget-object v10, p0, Ljava/util/zip/ZipFile;->zc:Ljava/util/zip/ZipCoder;

    iget-object v11, p1, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/zip/ZipCoder;->getBytesUTF8(Ljava/lang/String;)[B

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v8, v9, v10, v11}, Ljava/util/zip/ZipFile;->getEntry(J[BZ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result-wide v4

    .line 370
    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-nez v8, :cond_2

    .line 371
    const/4 v8, 0x0

    monitor-exit p0

    return-object v8

    .line 368
    :cond_1
    :try_start_1
    iget-wide v8, p0, Ljava/util/zip/ZipFile;->jzfile:J

    iget-object v10, p0, Ljava/util/zip/ZipFile;->zc:Ljava/util/zip/ZipCoder;

    iget-object v11, p1, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/zip/ZipCoder;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v8, v9, v10, v11}, Ljava/util/zip/ZipFile;->getEntry(J[BZ)J

    move-result-wide v4

    goto :goto_0

    .line 373
    :cond_2
    new-instance v1, Ljava/util/zip/ZipFile$ZipFileInputStream;

    invoke-direct {v1, p0, v4, v5}, Ljava/util/zip/ZipFile$ZipFileInputStream;-><init>(Ljava/util/zip/ZipFile;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 375
    .end local v0    # "in":Ljava/util/zip/ZipFile$ZipFileInputStream;
    .local v1, "in":Ljava/util/zip/ZipFile$ZipFileInputStream;
    :try_start_2
    invoke-static {v4, v5}, Ljava/util/zip/ZipFile;->getEntryMethod(J)I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 394
    new-instance v8, Ljava/util/zip/ZipException;

    const-string v9, "invalid compression method"

    invoke-direct {v8, v9}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 363
    :catchall_0
    move-exception v8

    move-object v0, v1

    .end local v1    # "in":Ljava/util/zip/ZipFile$ZipFileInputStream;
    :goto_1
    monitor-exit p0

    throw v8

    .line 377
    .restart local v1    # "in":Ljava/util/zip/ZipFile$ZipFileInputStream;
    :sswitch_0
    :try_start_3
    iget-object v9, p0, Ljava/util/zip/ZipFile;->streams:Ljava/util/Map;

    monitor-enter v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 378
    :try_start_4
    iget-object v8, p0, Ljava/util/zip/ZipFile;->streams:Ljava/util/Map;

    const/4 v10, 0x0

    invoke-interface {v8, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    .line 380
    return-object v1

    .line 377
    :catchall_1
    move-exception v8

    :try_start_6
    monitor-exit v9

    throw v8

    .line 383
    :sswitch_1
    invoke-static {v4, v5}, Ljava/util/zip/ZipFile;->getEntrySize(J)J

    move-result-wide v8

    const-wide/16 v10, 0x2

    add-long v6, v8, v10

    .line 384
    .local v6, "size":J
    const-wide/32 v8, 0x10000

    cmp-long v8, v6, v8

    if-lez v8, :cond_3

    const-wide/16 v6, 0x2000

    .line 385
    :cond_3
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gtz v8, :cond_4

    const-wide/16 v6, 0x1000

    .line 386
    :cond_4
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->getInflater()Ljava/util/zip/Inflater;

    move-result-object v2

    .line 388
    .local v2, "inf":Ljava/util/zip/Inflater;
    new-instance v3, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;

    long-to-int v8, v6

    invoke-direct {v3, p0, v1, v2, v8}, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;-><init>(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipFile$ZipFileInputStream;Ljava/util/zip/Inflater;I)V

    .line 389
    .local v3, "is":Ljava/io/InputStream;
    iget-object v9, p0, Ljava/util/zip/ZipFile;->streams:Ljava/util/Map;

    monitor-enter v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 390
    :try_start_7
    iget-object v8, p0, Ljava/util/zip/ZipFile;->streams:Ljava/util/Map;

    invoke-interface {v8, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    .line 392
    return-object v3

    .line 389
    :catchall_2
    move-exception v8

    :try_start_9
    monitor-exit v9

    throw v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 363
    .end local v1    # "in":Ljava/util/zip/ZipFile$ZipFileInputStream;
    .end local v2    # "inf":Ljava/util/zip/Inflater;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v6    # "size":J
    .restart local v0    # "in":Ljava/util/zip/ZipFile$ZipFileInputStream;
    :catchall_3
    move-exception v8

    goto :goto_1

    .line 375
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Ljava/util/zip/ZipFile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 578
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->ensureOpen()V

    .line 579
    iget v0, p0, Ljava/util/zip/ZipFile;->total:I

    return v0
.end method

.method public startsWithLocHeader()Z
    .locals 1

    .prologue
    .line 778
    iget-boolean v0, p0, Ljava/util/zip/ZipFile;->locsig:Z

    return v0
.end method