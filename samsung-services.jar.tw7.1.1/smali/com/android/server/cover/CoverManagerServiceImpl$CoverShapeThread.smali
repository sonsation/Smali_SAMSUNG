.class Lcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;
.super Ljava/lang/Thread;
.source "CoverManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/CoverManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CoverShapeThread"
.end annotation


# static fields
.field private static final CMD_DELAY_TIME:I = 0x5

.field private static final NUM_FOR_CMD_DATA:I = 0x8

.field private static final SMART_COVER_CMD:Ljava/lang/String; = "smartcover_cmd"

.field private static final SMART_COVER_CMD_CHANGE:Ljava/lang/String; = "6"

.field private static final SMART_COVER_CMD_CLEAR:Ljava/lang/String; = "4"

.field private static final SMART_COVER_CMD_MODEON:Ljava/lang/String; = "3"

.field private static final SMART_COVER_CMD_WRITE:Ljava/lang/String; = "5"

.field private static final SYSFS_TSP_CMD:Ljava/lang/String; = "/sys/class/sec/tsp/cmd"


# instance fields
.field mCoverHeight:I

.field mCoverShapeArray:[B

.field mCoverWidth:I

.field mPreDefArray:[I


# direct methods
.method private constructor <init>([BII)V
    .locals 2
    .param p1, "coverShape"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v0, 0x0

    .line 1208
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1194
    iput v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;->mCoverWidth:I

    .line 1195
    iput v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;->mCoverHeight:I

    .line 1196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;->mCoverShapeArray:[B

    .line 1197
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;->mPreDefArray:[I

    .line 1209
    sget-boolean v0, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/cover/CoverManagerServiceImpl;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoverShapeThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    :cond_0
    iput-object p1, p0, Lcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;->mCoverShapeArray:[B

    .line 1211
    iput p2, p0, Lcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;->mCoverWidth:I

    .line 1212
    iput p3, p0, Lcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;->mCoverHeight:I

    .line 1208
    return-void

    .line 1197
    :array_0
    .array-data 4
        0x80
        0x40
        0x20
        0x10
        0x8
        0x4
        0x2
        0x1
    .end array-data
.end method

.method synthetic constructor <init>([BIILcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;)V
    .locals 0
    .param p1, "coverShape"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;-><init>([BII)V

    return-void
.end method

.method private getShapeCmdData(I)I
    .locals 4
    .param p1, "startIndex"    # I

    .prologue
    .line 1253
    const/4 v1, 0x0

    .line 1254
    .local v1, "shapeCmdData":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v0, v2, :cond_1

    .line 1255
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;->mCoverShapeArray:[B

    add-int v3, p1, v0

    aget-byte v2, v2, v3

    if-eqz v2, :cond_0

    .line 1256
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;->mPreDefArray:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    .line 1254
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1259
    :cond_1
    return v1
.end method

.method private sleepForCmdDelay(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    .line 1264
    int-to-long v2, p1

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1262
    :goto_0
    return-void

    .line 1265
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method private sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "sysfs"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1270
    const/4 v3, 0x0

    .line 1273
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1278
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 1279
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1289
    const/4 v5, 0x1

    return v5

    .line 1274
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 1275
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1276
    return v6

    .line 1280
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 1281
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v1, "e":Ljava/io/IOException;
    :goto_0
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1283
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1287
    :goto_1
    return v6

    .line 1284
    :catch_2
    move-exception v2

    .line 1285
    .local v2, "err":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1280
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "err":Ljava/lang/Exception;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    .line 1216
    sget-boolean v6, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/server/cover/CoverManagerServiceImpl;->-get0()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CoverShapeThread : run"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    :cond_0
    iget v6, p0, Lcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;->mCoverWidth:I

    div-int/lit8 v3, v6, 0x8

    .line 1218
    .local v3, "numShapeCmdDataPerRow":I
    const/4 v0, 0x0

    .line 1221
    .local v0, "checkZero":I
    const-string v6, "/sys/class/sec/tsp/cmd"

    const-string v7, "smartcover_cmd,4"

    invoke-direct {p0, v6, v7}, Lcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1222
    sget-boolean v6, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v6, :cond_1

    .line 1223
    invoke-static {}, Lcom/android/server/cover/CoverManagerServiceImpl;->-get0()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CoverShapeThread : run : smartcover_cmd,4"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    :cond_1
    invoke-direct {p0, v9}, Lcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;->sleepForCmdDelay(I)V

    .line 1227
    const/4 v5, 0x0

    .line 1228
    .local v5, "value":Ljava/lang/String;
    const/4 v2, 0x0

    .end local v5    # "value":Ljava/lang/String;
    .local v2, "j":I
    :goto_0
    iget v6, p0, Lcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;->mCoverHeight:I

    if-ge v2, v6, :cond_5

    .line 1229
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "smartcover_cmd,5,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1230
    .local v5, "value":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 1231
    iget v6, p0, Lcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;->mCoverWidth:I

    mul-int/2addr v6, v2

    mul-int/lit8 v7, v1, 0x8

    add-int/2addr v6, v7

    invoke-direct {p0, v6}, Lcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;->getShapeCmdData(I)I

    move-result v4

    .line 1232
    .local v4, "shapeCmdData":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1233
    add-int/2addr v0, v4

    .line 1230
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1236
    .end local v4    # "shapeCmdData":I
    :cond_2
    if-eqz v0, :cond_4

    .line 1237
    const-string v6, "/sys/class/sec/tsp/cmd"

    invoke-direct {p0, v6, v5}, Lcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1238
    sget-boolean v6, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/android/server/cover/CoverManagerServiceImpl;->-get0()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CoverShapeThread : run : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    :cond_3
    const/4 v0, 0x0

    .line 1242
    :cond_4
    invoke-direct {p0, v9}, Lcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;->sleepForCmdDelay(I)V

    .line 1228
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1246
    .end local v1    # "i":I
    .end local v5    # "value":Ljava/lang/String;
    :cond_5
    const-string v6, "/sys/class/sec/tsp/cmd"

    const-string v7, "smartcover_cmd,6"

    invoke-direct {p0, v6, v7}, Lcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1247
    sget-boolean v6, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v6, :cond_6

    .line 1248
    invoke-static {}, Lcom/android/server/cover/CoverManagerServiceImpl;->-get0()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CoverShapeThread : run : smartcover_cmd,6"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    :cond_6
    invoke-direct {p0, v9}, Lcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;->sleepForCmdDelay(I)V

    .line 1215
    return-void
.end method
