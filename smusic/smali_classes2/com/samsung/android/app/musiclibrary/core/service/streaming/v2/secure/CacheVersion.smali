.class public final Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;
.super Ljava/lang/Object;
.source "CacheVersion.java"


# static fields
.field private static final CAFE:Ljava/lang/String; = "cafe"

.field private static final CAFE_NAME:Ljava/lang/String; = ".cafe"

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-PlayerServer"

.field private static final SUB_TAG:Ljava/lang/String; = "CacheManager> "

.field private static final UNDEFINED:J = -0x1L

.field private static final UTF8:Ljava/lang/String; = "UTF-8"

.field private static final VERSION:Ljava/lang/String; = "version"

.field private static final VERSION_CODE:J = 0x3L


# instance fields
.field private final mCachePath:Ljava/lang/String;

.field private mCafe:Ljava/lang/String;

.field private final mCafePath:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mVersion:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;->mVersion:J

    .line 53
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;->mCachePath:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;->mCachePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".cafe"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;->mCafePath:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private getVersion()J
    .locals 2

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;->mVersion:J

    return-wide v0
.end method

.method private jsonRead(Ljava/io/InputStream;)V
    .locals 7
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    new-instance v1, Landroid/util/JsonReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-direct {v2, p1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .local v1, "reader":Landroid/util/JsonReader;
    const/4 v3, 0x0

    .line 154
    :try_start_0
    invoke-virtual {v1}, Landroid/util/JsonReader;->beginObject()V

    .line 155
    :goto_0
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 156
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v2, "version"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 158
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;->mVersion:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 153
    .end local v0    # "name":Ljava/lang/String;
    :catch_0
    move-exception v2

    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    :catchall_0
    move-exception v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    :goto_1
    if-eqz v1, :cond_0

    if-eqz v3, :cond_6

    :try_start_2
    invoke-virtual {v1}, Landroid/util/JsonReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_2
    throw v2

    .line 159
    .restart local v0    # "name":Ljava/lang/String;
    :cond_1
    :try_start_3
    const-string v2, "cafe"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 160
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;->mCafe:Ljava/lang/String;

    goto :goto_0

    .line 166
    .end local v0    # "name":Ljava/lang/String;
    :catchall_1
    move-exception v2

    goto :goto_1

    .line 162
    .restart local v0    # "name":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 165
    .end local v0    # "name":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Landroid/util/JsonReader;->endObject()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 166
    if-eqz v1, :cond_4

    if-eqz v3, :cond_5

    :try_start_4
    invoke-virtual {v1}, Landroid/util/JsonReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 167
    :cond_4
    :goto_3
    return-void

    .line 166
    :catch_1
    move-exception v2

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Landroid/util/JsonReader;->close()V

    goto :goto_3

    :catch_2
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Landroid/util/JsonReader;->close()V

    goto :goto_2
.end method

.method private jsonWrite(Ljava/io/OutputStream;)V
    .locals 7
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    new-instance v0, Landroid/util/JsonWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    .local v0, "writer":Landroid/util/JsonWriter;
    const/4 v2, 0x0

    .line 145
    :try_start_0
    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 146
    const-string/jumbo v1, "version"

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v1

    const-wide/16 v4, 0x3

    invoke-virtual {v1, v4, v5}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 147
    const-string v1, "cafe"

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;->mCafe:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 148
    invoke-virtual {v0}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 149
    if-eqz v0, :cond_0

    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {v0}, Landroid/util/JsonWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/util/JsonWriter;->close()V

    goto :goto_0

    .line 144
    :catch_1
    move-exception v1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    :catchall_0
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v2, :cond_3

    :try_start_3
    invoke-virtual {v0}, Landroid/util/JsonWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_2
    throw v1

    :catch_2
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Landroid/util/JsonWriter;->close()V

    goto :goto_2

    :catchall_1
    move-exception v1

    goto :goto_1
.end method

.method private makeDir(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 123
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    const-string v1, "makeDir. mkdirs failed."

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;->printInfoLog(Ljava/lang/String;)V

    .line 129
    :cond_0
    return-void
.end method

.method private printErrorLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 136
    const-string v0, "SMUSIC-SV-PlayerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CacheManager> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void
.end method

.method private printInfoLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 140
    const-string v0, "SMUSIC-SV-PlayerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CacheManager> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-void
.end method

.method private updateCafe(JJ)V
    .locals 9
    .param p1, "from"    # J
    .param p3, "to"    # J

    .prologue
    .line 105
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cafe updated from  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;->printInfoLog(Ljava/lang/String;)V

    .line 106
    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-gez v5, :cond_0

    .line 107
    const-wide/16 v0, 0x0

    .line 111
    .local v0, "base":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/mod"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "mod":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/caches/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "cachePath":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/streams/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, "streamsPath":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->delete(Ljava/io/File;)V

    .line 115
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->delete(Ljava/io/File;)V

    .line 120
    .end local v0    # "base":J
    .end local v2    # "cachePath":Ljava/lang/String;
    .end local v3    # "mod":Ljava/lang/String;
    .end local v4    # "streamsPath":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public ensureCafe()V
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    const-wide/16 v6, 0x3

    .line 68
    const-string v3, "ensureCafe."

    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;->printInfoLog(Ljava/lang/String;)V

    .line 69
    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;->mVersion:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ensureCafe. mVersion different "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;->mVersion:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;->printInfoLog(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;->mCafePath:Ljava/lang/String;

    .line 75
    .local v1, "cafeName":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;->mCachePath:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;->makeDir(Ljava/lang/String;)V

    .line 76
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, "cafeFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    .line 79
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;->jsonRead(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 86
    :cond_2
    :goto_1
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ensureCafe. mVersion after read "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;->mVersion:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;->printInfoLog(Ljava/lang/String;)V

    .line 87
    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;->mVersion:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 88
    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;->mVersion:J

    const-wide/16 v6, 0x3

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;->updateCafe(JJ)V

    .line 89
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->clearCache(Landroid/content/Context;)V

    .line 90
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;->mCachePath:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;->makeDir(Ljava/lang/String;)V

    .line 91
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;->mCafe:Ljava/lang/String;

    .line 92
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;->jsonWrite(Ljava/io/OutputStream;)V

    .line 93
    const-wide/16 v4, 0x3

    iput-wide v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;->mVersion:J

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ensureCafe. write version and mCafe... mVersion after read "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;->mVersion:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;->printInfoLog(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 97
    .end local v0    # "cafeFile":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 98
    .local v2, "e":Ljava/io/IOException;
    iput-wide v8, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;->mVersion:J

    .line 99
    const-string v3, "It is fail to during setup."

    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;->printErrorLog(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 80
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "cafeFile":Ljava/io/File;
    :catch_1
    move-exception v2

    .line 81
    .restart local v2    # "e":Ljava/io/IOException;
    const-wide/16 v4, -0x1

    :try_start_3
    iput-wide v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;->mVersion:J

    .line 82
    const-string v3, "It is fail to during setup."

    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;->printErrorLog(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method public getCafe()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;->mCafe:Ljava/lang/String;

    return-object v0
.end method

.method public hasCafe()Z
    .locals 6

    .prologue
    .line 59
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;->mCafePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;->getVersion()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
