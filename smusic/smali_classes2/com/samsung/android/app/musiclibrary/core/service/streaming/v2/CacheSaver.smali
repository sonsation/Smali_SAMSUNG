.class final Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheSaver;
.super Ljava/lang/Object;
.source "CacheSaver.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final EMPTY:Ljava/lang/String; = ""

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-PlayerServer"

.field private static final MAX_SIZE:I = 0x3e800000

.field private static final RESTORE_SIZE:I = 0x3200000

.field private static final SUB_TAG:Ljava/lang/String; = "CacheManager> "


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFileRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;

.field private final mSecure:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/ISecure;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/ISecure;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileRequest"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;
    .param p3, "secures"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/ISecure;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheSaver;->mContext:Landroid/content/Context;

    .line 46
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheSaver;->mSecure:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/ISecure;

    .line 47
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheSaver;->mFileRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;

    .line 48
    return-void
.end method

.method private cleanCachedSize(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "maxCacheSize"    # J

    .prologue
    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 188
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Online$StreamingCache;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "path"

    aput-object v5, v2, v3

    const-string v3, "content_length"

    aput-object v3, v2, v10

    const/4 v3, 0x2

    const-string v5, "last_access_time"

    aput-object v5, v2, v3

    const/4 v3, 0x3

    const-string v5, "_id"

    aput-object v5, v2, v3

    .line 194
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v4

    :goto_0
    const-string v5, "last_access_time ASC"

    .line 189
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 198
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    const/4 v7, 0x0

    .line 201
    .local v7, "size":I
    :cond_0
    int-to-long v0, v7

    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    long-to-int v7, v0

    .line 202
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    int-to-long v0, v7

    sub-long v8, v0, p3

    .line 205
    .local v8, "exceedSize":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cache exceed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheSaver;->printLog(Ljava/lang/String;)V

    .line 206
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_1

    .line 207
    const-wide/32 v0, 0x3200000

    add-long/2addr v0, v8

    invoke-direct {p0, p1, v6, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheSaver;->deleteFile(Landroid/content/Context;Landroid/database/Cursor;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 210
    .end local v7    # "size":I
    .end local v8    # "exceedSize":J
    :cond_1
    if-eqz v6, :cond_2

    if-eqz v4, :cond_4

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 211
    :cond_2
    :goto_1
    return-void

    .line 194
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "path LIKE \"%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 210
    .restart local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 188
    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    :catchall_0
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    :goto_2
    if-eqz v6, :cond_5

    if-eqz v4, :cond_6

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_5
    :goto_3
    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v4, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method private deleteFile(Landroid/content/Context;Landroid/database/Cursor;J)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "toBeRestoreSize"    # J

    .prologue
    .line 214
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 215
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v8, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-string v9, "_id"

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 217
    .local v4, "idxId":I
    const-string v9, "path"

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 218
    .local v5, "idxPath":I
    const-string v9, "content_length"

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 220
    .local v3, "idxContentLength":I
    :cond_0
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 222
    .local v7, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 223
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 224
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v9

    if-nez v9, :cond_1

    .line 225
    const-string v9, "deleteFile. File remove error !!"

    invoke-static {v9}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheSaver;->printInfoLog(Ljava/lang/String;)V

    .line 228
    :cond_1
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    sub-long p3, p3, v10

    .line 229
    const-wide/16 v10, 0x0

    cmp-long v9, p3, v10

    if-gez v9, :cond_3

    .line 234
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v9, "_id"

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    .local v2, "ids":Ljava/lang/StringBuilder;
    const-string v9, " IN ("

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    .line 237
    .local v6, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v6, :cond_4

    .line 238
    if-eqz v1, :cond_2

    .line 239
    const/16 v9, 0x2c

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 241
    :cond_2
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 237
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 232
    .end local v1    # "i":I
    .end local v2    # "ids":Ljava/lang/StringBuilder;
    .end local v6    # "length":I
    :cond_3
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_0

    goto :goto_0

    .line 243
    .restart local v1    # "i":I
    .restart local v2    # "ids":Ljava/lang/StringBuilder;
    .restart local v6    # "length":I
    :cond_4
    const/16 v9, 0x29

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Online$StreamingCache;->CONTENT_URI:Landroid/net/Uri;

    .line 246
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 247
    return-void
.end method

.method private deleteFileAndCp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 170
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    const-string v1, "deleteFileAndCp. File remove error !!"

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheSaver;->printInfoLog(Ljava/lang/String;)V

    .line 175
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteFileAndCp. File removed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheSaver;->printInfoLog(Ljava/lang/String;)V

    .line 177
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Online$StreamingCache;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "path=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 179
    return-void
.end method

.method private encryptAndSave(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/ISecure;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;Ljava/lang/String;JJ)Ljava/lang/String;
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "secure"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/ISecure;
    .param p3, "request"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;
    .param p4, "originPath"    # Ljava/lang/String;
    .param p5, "downloadedBytes"    # J
    .param p7, "totalBytes"    # J
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 78
    const-wide/16 v4, 0x0

    cmp-long v4, p7, v4

    if-gtz v4, :cond_0

    .line 82
    const-string v7, ""

    .line 129
    :goto_0
    return-object v7

    .line 85
    :cond_0
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    .local v17, "f":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v18

    .line 87
    .local v18, "freeSpace":J
    const-wide/32 v4, 0x3200000

    cmp-long v4, v18, v4

    if-gtz v4, :cond_1

    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "free space is not enough, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheSaver;->printLog(Ljava/lang/String;)V

    .line 89
    const-string v7, ""

    goto :goto_0

    .line 94
    :cond_1
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->options:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$Options;

    iget-boolean v4, v4, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$Options;->saveFullCacheOnly:Z

    if-eqz v4, :cond_2

    cmp-long v4, p5, p7

    if-nez v4, :cond_3

    .line 96
    :cond_2
    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheSaver;->getCacheId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-interface {v0, v4, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/ISecure;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 97
    .local v7, "pathToSave":Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/ISecure;->getSecureType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .local v12, "secureType":I
    :goto_1
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    .line 108
    invoke-direct/range {v4 .. v12}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheSaver;->saveToProvider(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;Ljava/lang/String;JJI)V

    .line 114
    const-wide/16 v14, 0x0

    .line 118
    .local v14, "base":J
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->options:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$Options;

    iget-wide v0, v4, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$Options;->maxCacheSize:J

    move-wide/from16 v20, v0

    .line 119
    .local v20, "maxCacheSize":J
    const-wide/16 v4, 0x0

    cmp-long v4, v20, v4

    if-lez v4, :cond_5

    .line 120
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v13

    .line 121
    .local v13, "basePath":Ljava/lang/String;
    cmp-long v4, v18, v20

    if-lez v4, :cond_4

    .end local v20    # "maxCacheSize":J
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v20

    invoke-direct {v0, v1, v13, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheSaver;->cleanCachedSize(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0

    .line 98
    .end local v7    # "pathToSave":Ljava/lang/String;
    .end local v12    # "secureType":I
    .end local v13    # "basePath":Ljava/lang/String;
    .end local v14    # "base":J
    :catch_0
    move-exception v16

    .line 99
    .local v16, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "do not encryptAndSave!, cafe fail! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheSaver;->printErrorLog(Ljava/lang/String;)V

    .line 100
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheSaver;->deleteFileAndCp(Landroid/content/Context;Ljava/lang/String;)V

    .line 101
    const-string v7, ""

    goto/16 :goto_0

    .line 104
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v12, 0x1

    .line 105
    .restart local v12    # "secureType":I
    move-object/from16 v7, p4

    .restart local v7    # "pathToSave":Ljava/lang/String;
    goto :goto_1

    .restart local v13    # "basePath":Ljava/lang/String;
    .restart local v14    # "base":J
    .restart local v20    # "maxCacheSize":J
    :cond_4
    move-wide/from16 v20, v18

    .line 121
    goto :goto_2

    .line 123
    .end local v13    # "basePath":Ljava/lang/String;
    :cond_5
    const/4 v4, 0x0

    const-wide/32 v8, 0x3e800000

    cmp-long v5, v18, v8

    if-lez v5, :cond_6

    const-wide/32 v18, 0x3e800000

    .end local v18    # "freeSpace":J
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v18

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheSaver;->cleanCachedSize(Landroid/content/Context;Ljava/lang/String;J)V

    goto/16 :goto_0
.end method

.method public static getCacheId(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 134
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 135
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 136
    .local v1, "lastIndex":I
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v2

    .line 137
    .local v2, "secondLastIndex":I
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 144
    .end local v1    # "lastIndex":I
    .end local v2    # "secondLastIndex":I
    .local v0, "id":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 139
    .end local v0    # "id":Ljava/lang/String;
    :cond_0
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "id":Ljava/lang/String;
    goto :goto_0
.end method

.method private static printErrorLog(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 69
    const-string v0, "SMUSIC-SV-PlayerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CacheManager> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method

.method private static printInfoLog(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 65
    const-string v0, "SMUSIC-SV-PlayerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CacheManager> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method

.method private static printLog(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 61
    const-string v0, "SMUSIC-SV-PlayerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CacheManager> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method

.method private saveToProvider(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;Ljava/lang/String;JJI)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "request"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "downloadedBytes"    # J
    .param p6, "totalBytes"    # J
    .param p8, "secureType"    # I

    .prologue
    .line 149
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 150
    .local v0, "v":Landroid/content/ContentValues;
    const-string/jumbo v1, "streaming_id"

    iget-object v2, p2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->id:Ljava/lang/String;

    .line 151
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->parseSourceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v1, "quality"

    iget-object v2, p2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->id:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->parseQuality(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 153
    const-string v1, "is_full_stream"

    iget-object v2, p2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->id:Ljava/lang/String;

    .line 154
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->parseFullSong(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v1, "path"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v1, "content_length"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 157
    const-string v1, "downloaded_length"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 158
    const-string/jumbo v1, "server_time_stamp"

    iget-object v2, p2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->serverTimeStamp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v1, "encrypt_type"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 160
    const-string v1, "last_access_time"

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 160
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Online$StreamingCache;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 163
    return-void
.end method


# virtual methods
.method deleteFileAndCp(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheSaver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheSaver;->deleteFileAndCp(Landroid/content/Context;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method encrypt(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;
    .locals 21
    .param p1, "file"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

    .prologue
    .line 51
    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;->getFilePath()Ljava/lang/String;

    move-result-object v7

    .line 52
    .local v7, "originPath":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;->getAvailableBytes()J

    move-result-wide v8

    .line 53
    .local v8, "downloaded":J
    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;->getTotalBytes()J

    move-result-wide v10

    .line 54
    .local v10, "total":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheSaver;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheSaver;->mSecure:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/ISecure;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheSaver;->mFileRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;

    move-object/from16 v3, p0

    .line 55
    invoke-direct/range {v3 .. v11}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheSaver;->encryptAndSave(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/ISecure;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v13

    .line 56
    .local v13, "encryptedPath":Ljava/lang/String;
    new-instance v12, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheSaver;->mFileRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;

    iget-object v0, v2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->serverTimeStamp:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheSaver;->mSecure:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/ISecure;

    .line 57
    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/ISecure;->getSecureType()I

    move-result v19

    const/16 v20, 0x1

    move-wide v14, v8

    move-wide/from16 v16, v10

    invoke-direct/range {v12 .. v20}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;-><init>(Ljava/lang/String;JJLjava/lang/String;IZ)V

    return-object v12
.end method
