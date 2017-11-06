.class public Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;
.super Ljava/lang/Object;
.source "ParcelDiskCache.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/model/IDiskCache;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache$StoreParcelableValueTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/Parcelable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/music/milk/store/model/IDiskCache",
        "<",
        "Landroid/os/Parcelable;",
        ">;",
        "Ljava/io/Closeable;"
    }
.end annotation


# static fields
.field private static final LIST:Ljava/lang/String; = "list"

.field private static final MAX_KEY_SYMBOLS:I = 0x3e

.field private static final PARCELABLE:Ljava/lang/String; = "parcelable"

.field private static final VALIDATE_KEY_REGEX:Ljava/lang/String; = "[a-z0-9_-]{1,5}"


# instance fields
.field private cache:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;

.field private classLoader:Ljava/lang/ClassLoader;

.field private saveInUI:Z

.field private storeExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/ClassLoader;Ljava/lang/String;J)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "maxSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;, "Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache<TT;>;"
    const/4 v4, 0x1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v4, p0, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;->saveInUI:Z

    .line 39
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;->classLoader:Ljava/lang/ClassLoader;

    .line 40
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;->storeExecutor:Ljava/util/concurrent/Executor;

    .line 41
    invoke-static {p1, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->getCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 42
    .local v0, "dir":Ljava/io/File;
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;->getVersionCode(Landroid/content/Context;)I

    move-result v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    add-int v1, v2, v3

    .line 43
    .local v1, "version":I
    invoke-static {v0, v1, v4, p4, p5}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;->cache:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;Landroid/os/Parcel;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;
    .param p1, "x1"    # Landroid/os/Parcel;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;->saveValue(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;Landroid/os/Parcel;Ljava/lang/String;)V

    return-void
.end method

.method public static getBytesFromStream(Ljava/io/InputStream;)[B
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 288
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x400

    :try_start_0
    new-array v2, v3, [B

    .line 290
    .local v2, "data":[B
    :goto_0
    const/4 v3, 0x0

    array-length v4, v2

    invoke-virtual {p0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .local v1, "count":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 291
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 296
    .end local v1    # "count":I
    .end local v2    # "data":[B
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 297
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    throw v3

    .line 293
    .restart local v1    # "count":I
    .restart local v2    # "data":[B
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 294
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 296
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 297
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object v3
.end method

.method private getParcel(Ljava/lang/String;)Landroid/os/Parcel;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;, "Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache<TT;>;"
    const/4 v5, 0x0

    .line 98
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;->validateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 99
    const/4 v3, 0x0

    .line 100
    .local v3, "value":[B
    const/4 v2, 0x0

    .line 102
    .local v2, "snapshot":Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Snapshot;
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;->cache:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;

    invoke-virtual {v4, p1}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->get(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Snapshot;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 103
    if-nez v2, :cond_1

    .line 104
    const/4 v1, 0x0

    .line 110
    if-eqz v2, :cond_0

    .line 111
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Snapshot;->close()V

    .line 121
    :cond_0
    :goto_0
    return-object v1

    .line 106
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v2, v4}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;->getBytesFromStream(Ljava/io/InputStream;)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 110
    if-eqz v2, :cond_2

    .line 111
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Snapshot;->close()V

    .line 114
    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 115
    .local v1, "parcel":Landroid/os/Parcel;
    if-eqz v3, :cond_4

    .line 116
    array-length v4, v3

    invoke-virtual {v1, v3, v5, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 120
    :goto_2
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0

    .line 107
    .end local v1    # "parcel":Landroid/os/Parcel;
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    if-eqz v2, :cond_2

    .line 111
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Snapshot;->close()V

    goto :goto_1

    .line 110
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_3

    .line 111
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Snapshot;->close()V

    :cond_3
    throw v4

    .line 118
    .restart local v1    # "parcel":Landroid/os/Parcel;
    :cond_4
    invoke-virtual {v1, v3, v5, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    goto :goto_2
.end method

.method public static getVersionCode(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 309
    const/4 v2, 0x0

    .line 312
    .local v2, "result":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 313
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    .end local v1    # "pInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return v2

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static open(Landroid/content/Context;Ljava/lang/ClassLoader;Ljava/lang/String;J)Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "maxSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;-><init>(Landroid/content/Context;Ljava/lang/ClassLoader;Ljava/lang/String;J)V

    return-object v0
.end method

.method private static saveValue(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;Landroid/os/Parcel;Ljava/lang/String;)V
    .locals 5
    .param p0, "cache"    # Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;
    .param p1, "value"    # Landroid/os/Parcel;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 264
    if-nez p0, :cond_0

    .line 283
    :goto_0
    return-void

    .line 265
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 266
    const/4 v2, 0x0

    .line 268
    .local v2, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 269
    .local v3, "skey":Ljava/lang/String;
    monitor-enter v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 270
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->edit(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;

    move-result-object v1

    .line 271
    .local v1, "editor":Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;
    if-eqz v1, :cond_1

    .line 272
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v2

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;->writeBytesToStream(Ljava/io/OutputStream;[B)V

    .line 274
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;->commit()V

    .line 276
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 276
    .end local v1    # "editor":Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 277
    .end local v3    # "skey":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 280
    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 280
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v4

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method private validateKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 125
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;, "Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache<TT;>;"
    const-string v3, "[a-z0-9_-]{1,5}"

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;->getPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 126
    .local v1, "keyMatcher":Ljava/util/regex/Matcher;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .local v2, "newKey":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "group":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    const/16 v4, 0x3e

    if-le v3, v4, :cond_1

    .line 135
    .end local v0    # "group":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 133
    .restart local v0    # "group":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static writeBytesToStream(Ljava/io/OutputStream;[B)V
    .locals 0
    .param p0, "outputStream"    # Ljava/io/OutputStream;
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 303
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 304
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 305
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 306
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 206
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;, "Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache<TT;>;"
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;->cache:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->delete()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_0
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 235
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;, "Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache<TT;>;"
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;->cache:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public exists(Ljava/lang/String;)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;, "Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache<TT;>;"
    const/4 v2, 0x0

    .line 213
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;->validateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 214
    const/4 v1, 0x0

    .line 216
    .local v1, "snapshot":Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Snapshot;
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;->cache:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->get(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Snapshot;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 217
    if-nez v1, :cond_1

    .line 225
    if-eqz v1, :cond_0

    .line 226
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Snapshot;->close()V

    .line 229
    :cond_0
    :goto_0
    return v2

    .line 221
    :cond_1
    const/4 v2, 0x1

    .line 225
    if-eqz v1, :cond_0

    .line 226
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Snapshot;->close()V

    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    if-eqz v1, :cond_0

    .line 226
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Snapshot;->close()V

    goto :goto_0

    .line 225
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    .line 226
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Snapshot;->close()V

    :cond_2
    throw v2
.end method

.method public get(Ljava/lang/String;)Landroid/os/Parcelable;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;, "Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache<TT;>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;->validateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 77
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;->getParcel(Ljava/lang/String;)Landroid/os/Parcel;

    move-result-object v1

    .line 78
    .local v1, "parcel":Landroid/os/Parcel;
    if-eqz v1, :cond_0

    .line 80
    :try_start_0
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "type":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v3, "list"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 82
    new-instance v3, Ljava/lang/IllegalAccessError;

    const-string v4, "get list data with getList method"

    invoke-direct {v3, v4}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .end local v2    # "type":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 94
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    :goto_0
    return-object v3

    .line 84
    .restart local v2    # "type":Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_2

    :try_start_2
    const-string v3, "parcelable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 85
    new-instance v3, Ljava/lang/IllegalAccessError;

    const-string v4, "Parcel doesn\'t contain parcelable data"

    invoke-direct {v3, v4}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    .end local v2    # "type":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 87
    .restart local v2    # "type":Ljava/lang/String;
    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    .line 91
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0
.end method

.method public bridge synthetic get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;, "Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache<TT;>;"
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;->get(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public getAll()Ljava/util/List;
    .locals 1

    .prologue
    .line 182
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;, "Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAll(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "preffix"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;, "Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache<TT;>;"
    const/4 v8, 0x0

    .line 186
    new-instance v5, Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 187
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;->cache:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;

    invoke-virtual {v7}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->getDirectory()Ljava/io/File;

    move-result-object v0

    .line 188
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 189
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_3

    .line 190
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    array-length v7, v3

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 191
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    array-length v9, v3

    move v7, v8

    :goto_0
    if-ge v7, v9, :cond_3

    aget-object v1, v3, v7

    .line 192
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, "fileName":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "."

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-gtz v10, :cond_1

    .line 194
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "."

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_2

    .line 195
    :cond_1
    const-string v10, "."

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v2, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 196
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;->get(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    .line 197
    .local v6, "value":Landroid/os/Parcelable;, "TT;"
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "value":Landroid/os/Parcelable;, "TT;"
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 201
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileName":Ljava/lang/String;
    :cond_3
    return-object v5
.end method

.method public getList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;, "Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;->getList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "itemClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;, "Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache<TT;>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;->validateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 146
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v2, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;->getParcel(Ljava/lang/String;)Landroid/os/Parcel;

    move-result-object v1

    .line 148
    .local v1, "parcel":Landroid/os/Parcel;
    if-eqz v1, :cond_0

    .line 150
    :try_start_0
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, "type":Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v4, "parcelable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 152
    new-instance v4, Ljava/lang/IllegalAccessError;

    const-string v5, "Get not a list data with get method"

    invoke-direct {v4, v5}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    .end local v3    # "type":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 164
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-object v2

    .line 154
    .restart local v3    # "type":Ljava/lang/String;
    :cond_1
    if-eqz v3, :cond_2

    :try_start_2
    const-string v4, "list"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 155
    new-instance v4, Ljava/lang/IllegalAccessError;

    const-string v5, "Parcel doesn\'t contain list data"

    invoke-direct {v4, v5}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    .end local v3    # "type":Ljava/lang/String;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v4

    .line 157
    .restart local v3    # "type":Ljava/lang/String;
    :cond_2
    if-eqz p2, :cond_3

    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    :goto_1
    invoke-virtual {v1, v2, v4}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 161
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 157
    :cond_3
    :try_start_4
    const-class v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v4

    goto :goto_1
.end method

.method public getPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 2
    .param p1, "bodyRegex"    # Ljava/lang/String;

    .prologue
    .line 139
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;, "Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache<TT;>;"
    const/16 v0, 0x2a

    .line 140
    .local v0, "flags":I
    invoke-static {p1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 141
    .local v1, "pattern":Ljava/util/regex/Pattern;
    return-object v1
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 172
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;, "Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache<TT;>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;->validateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;->cache:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->remove(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 178
    :goto_0
    return v1

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 178
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public set(Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/Parcelable;

    .prologue
    .line 51
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;, "Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache<TT;>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;->validateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 53
    .local v0, "parcel":Landroid/os/Parcel;
    const-string v1, "parcelable"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 55
    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;->saveInUI:Z

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;->cache:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;

    invoke-static {v1, v0, p1}, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;->saveValue(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;Landroid/os/Parcel;Ljava/lang/String;)V

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;->storeExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache$StoreParcelableValueTask;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;->cache:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;

    invoke-direct {v2, v3, v0, p1}, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache$StoreParcelableValueTask;-><init>(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;Landroid/os/Parcel;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 27
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;, "Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache<TT;>;"
    check-cast p2, Landroid/os/Parcelable;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;->set(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;, "Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache<TT;>;"
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;->validateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 64
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 65
    .local v0, "parcel":Landroid/os/Parcel;
    const-string v1, "list"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 67
    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;->saveInUI:Z

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;->cache:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;

    invoke-static {v1, v0, p1}, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;->saveValue(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;Landroid/os/Parcel;Ljava/lang/String;)V

    .line 73
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;->storeExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache$StoreParcelableValueTask;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;->cache:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;

    invoke-direct {v2, v3, v0, p1}, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache$StoreParcelableValueTask;-><init>(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;Landroid/os/Parcel;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public shouldSaveInUI()V
    .locals 1

    .prologue
    .line 242
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;, "Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;->saveInUI:Z

    .line 243
    return-void
.end method
