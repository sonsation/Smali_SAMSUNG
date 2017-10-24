.class Lcom/android/server/power/ShutdownThread$LogFileWriter;
.super Ljava/lang/Object;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LogFileWriter"
.end annotation


# static fields
.field private static final FILELOG_EXTENTION:Ljava/lang/String; = "txt"

.field private static final MAX_TIMESTAMP_FILELOG:I = 0x5


# instance fields
.field private file:Ljava/io/File;

.field private fos:Ljava/io/FileOutputStream;

.field private latestfile:Ljava/io/File;

.field private latestfos:Ljava/io/FileOutputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2242
    iput-object v2, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestfos:Ljava/io/FileOutputStream;

    .line 2245
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/ShutdownThread$LogFileWriter;->generateFilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2246
    .local v1, "filename":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 2248
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->file:Ljava/io/File;

    .line 2249
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->file:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    .line 2250
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "latest_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestfile:Ljava/io/File;

    .line 2251
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestfile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestfos:Ljava/io/FileOutputStream;

    .line 2253
    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->file:Ljava/io/File;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z

    .line 2254
    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestfile:Ljava/io/File;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2244
    :cond_0
    :goto_0
    return-void

    .line 2255
    :catch_0
    move-exception v0

    .line 2256
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v3, "LogFileWriter.LogFileWriter error"

    invoke-static {v2, v3, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_0
.end method

.method private generateFilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 2262
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2263
    .local v4, "folder":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_0

    .line 2265
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 2266
    const-string/jumbo v13, "ShutdownThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "create dir: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2277
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 2278
    .local v6, "listOfFiles":[Ljava/io/File;
    if-eqz v6, :cond_5

    .line 2279
    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    .line 2280
    .local v7, "loglist":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Long;Ljava/lang/String;>;"
    const/4 v13, 0x0

    array-length v14, v6

    :goto_0
    if-ge v13, v14, :cond_3

    aget-object v2, v6, v13

    .line 2281
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 2282
    .local v3, "fname":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v15

    if-eqz v15, :cond_1

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 2283
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    .line 2284
    .local v10, "moddate":J
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v7, v15, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2280
    .end local v10    # "moddate":J
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 2268
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fname":Ljava/lang/String;
    .end local v6    # "listOfFiles":[Ljava/io/File;
    .end local v7    # "loglist":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    const-string/jumbo v13, "ShutdownThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "create dir fail: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2269
    const/4 v13, 0x0

    return-object v13

    .line 2271
    :catch_0
    move-exception v12

    .line 2272
    .local v12, "se":Ljava/lang/SecurityException;
    const-string/jumbo v13, "ShutdownThread"

    const-string/jumbo v14, "!@Create dir error"

    invoke-static {v13, v14, v12}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 2273
    const/4 v13, 0x0

    return-object v13

    .line 2288
    .end local v12    # "se":Ljava/lang/SecurityException;
    .restart local v6    # "listOfFiles":[Ljava/io/File;
    .restart local v7    # "loglist":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v7}, Ljava/util/TreeMap;->size()I

    move-result v13

    const/4 v14, 0x5

    if-ge v13, v14, :cond_4

    .line 2289
    const-string/jumbo v13, "%s.%d.%s"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p2, v14, v15

    invoke-virtual {v7}, Ljava/util/TreeMap;->size()I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x1

    aput-object v15, v14, v16

    .line 2290
    const-string/jumbo v15, "txt"

    const/16 v16, 0x2

    aput-object v15, v14, v16

    .line 2289
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    return-object v13

    .line 2292
    :cond_4
    invoke-virtual {v7}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2293
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 2294
    .local v8, "modDate":J
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    return-object v13

    .line 2297
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    .end local v7    # "loglist":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v8    # "modDate":J
    :cond_5
    const/4 v13, 0x0

    return-object v13
.end method


# virtual methods
.method public save()V
    .locals 3

    .prologue
    .line 2326
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    if-nez v1, :cond_0

    .line 2327
    return-void

    .line 2330
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 2331
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestfos:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_1

    .line 2332
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestfos:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2325
    :cond_1
    :goto_0
    return-void

    .line 2334
    :catch_0
    move-exception v0

    .line 2335
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v2, "LogFileWriter.save fail"

    invoke-static {v1, v2, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_0
.end method

.method public saveAndClose()V
    .locals 4

    .prologue
    .line 2340
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    if-nez v1, :cond_0

    .line 2341
    return-void

    .line 2344
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 2345
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 2346
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    .line 2347
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestfos:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_1

    .line 2348
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestfos:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 2349
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestfos:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 2350
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestfos:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2356
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_2

    .line 2357
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 2358
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    .line 2360
    :cond_2
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestfos:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_3

    .line 2361
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestfos:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 2362
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestfos:Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2339
    :cond_3
    :goto_0
    return-void

    .line 2364
    :catch_0
    move-exception v0

    .line 2365
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v2, "LogFileWriter.saveAndClose error"

    invoke-static {v1, v2, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_0

    .line 2352
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 2353
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v2, "LogFileWriter.saveAndClose fail"

    invoke-static {v1, v2, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2356
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_4

    .line 2357
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 2358
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    .line 2360
    :cond_4
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestfos:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_3

    .line 2361
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestfos:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 2362
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestfos:Ljava/io/FileOutputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 2364
    :catch_2
    move-exception v0

    .line 2365
    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v2, "LogFileWriter.saveAndClose error"

    invoke-static {v1, v2, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_0

    .line 2354
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 2356
    :try_start_4
    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_5

    .line 2357
    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 2358
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    .line 2360
    :cond_5
    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestfos:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_6

    .line 2361
    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestfos:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 2362
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestfos:Ljava/io/FileOutputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 2354
    :cond_6
    :goto_1
    throw v1

    .line 2364
    :catch_3
    move-exception v0

    .line 2365
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v3, "LogFileWriter.saveAndClose error"

    invoke-static {v2, v3, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_1
.end method

.method public write(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "TAG"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x2

    .line 2301
    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    if-nez v3, :cond_0

    .line 2302
    const-string/jumbo v3, "fos is null"

    invoke-static {p1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2303
    return-void

    .line 2305
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2307
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 2308
    .local v1, "oCalendar":Ljava/util/Calendar;
    const-string/jumbo v3, "%02d-%02d %02d:%02d:%02d %s\n"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    .line 2309
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 2310
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 2311
    const/16 v5, 0xb

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 2312
    const/16 v5, 0xc

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    .line 2313
    const/16 v5, 0xd

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x4

    aput-object v5, v4, v6

    .line 2314
    aput-object p2, v4, v8

    .line 2308
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2316
    :try_start_0
    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 2317
    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestfos:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_1

    .line 2318
    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestfos:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2300
    :cond_1
    :goto_0
    return-void

    .line 2320
    :catch_0
    move-exception v0

    .line 2321
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v3, "LogFileWriter.write fail"

    invoke-static {p1, v3, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_0
.end method
