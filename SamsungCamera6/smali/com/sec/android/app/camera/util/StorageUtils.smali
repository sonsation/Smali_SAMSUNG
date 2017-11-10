.class public Lcom/sec/android/app/camera/util/StorageUtils;
.super Ljava/lang/Object;
.source "StorageUtils.java"


# static fields
.field public static final CANNOT_STAT_ERROR:I = -0x2

.field public static final LOW_STORAGE_THRESHOLD:J = 0x6400000L

.field public static final NO_STORAGE_ERROR:I = -0x1

.field protected static final TAG:Ljava/lang/String; = "StorageUtils"

.field protected static mSDStorageVolume:Landroid/os/storage/StorageVolume;

.field protected static mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAvailableStorage(I)J
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p0, v3, :cond_0

    :try_start_0
    sget-object v3, Lcom/sec/android/app/camera/util/StorageUtils;->mSDStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->semGetPath()Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v4

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v6

    mul-long/2addr v4, v6

    const-wide/32 v6, 0x6400000

    sub-long/2addr v4, v6

    :goto_1
    return-wide v4

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "StorageUtils"

    const-string v4, "cannot stat the filesystem then we don\'t know how many free bytes exist"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, -0x2

    goto :goto_1
.end method

.method public static getExternalSDStoragePath()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->MICRO_SD_SLOT:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/util/StorageUtils;->mSDStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/util/StorageUtils;->mSDStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->semGetPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getExternalStoragePath()Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMaxSizeOfImage(II)J
    .locals 10

    const-wide/16 v8, 0x50

    const-wide/16 v6, 0x1194

    const-wide/16 v4, 0x400

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    div-long/2addr v0, v6

    mul-long/2addr v0, v4

    :goto_0
    return-wide v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    div-long/2addr v0, v6

    const-wide/16 v2, 0x78

    mul-long/2addr v0, v2

    div-long/2addr v0, v8

    mul-long/2addr v0, v4

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    div-long/2addr v0, v6

    const-wide/16 v2, 0x96

    mul-long/2addr v0, v2

    div-long/2addr v0, v8

    mul-long/2addr v0, v4

    goto :goto_0

    :cond_2
    const-string v0, "StorageUtils"

    const-string v1, "Resolution or Quality setting maybe wrong"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v0, 0x100000

    goto :goto_0
.end method

.method public static getRemainCount(III)I
    .locals 8

    const/4 v4, -0x1

    invoke-static {p0}, Lcom/sec/android/app/camera/util/StorageUtils;->getAvailableStorage(I)J

    move-result-wide v2

    const-wide/16 v6, -0x2

    cmp-long v5, v2, v6

    if-eqz v5, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, p2}, Lcom/sec/android/app/camera/util/StorageUtils;->getMaxSizeOfImage(II)J

    move-result-wide v6

    div-long v4, v2, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v1, v4

    :goto_0
    return v1

    :catch_0
    move-exception v0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v4

    goto :goto_0
.end method

.method public static getRemainTime(II)I
    .locals 8

    const/4 v4, -0x1

    invoke-static {p0}, Lcom/sec/android/app/camera/util/StorageUtils;->getAvailableStorage(I)J

    move-result-wide v2

    const-wide/16 v6, -0x2

    cmp-long v5, v2, v6

    if-eqz v5, :cond_0

    const/4 v1, 0x0

    :try_start_0
    div-int/lit8 v5, p1, 0x8

    int-to-long v6, v5

    div-long v4, v2, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v1, v4

    :goto_0
    return v1

    :catch_0
    move-exception v0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v4

    goto :goto_0
.end method

.method public static getTotalStorage(I)J
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p0, v3, :cond_0

    :try_start_0
    sget-object v3, Lcom/sec/android/app/camera/util/StorageUtils;->mSDStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->semGetPath()Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v4

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v6

    mul-long/2addr v4, v6

    const-wide/32 v6, 0x6400000

    sub-long/2addr v4, v6

    :goto_1
    return-wide v4

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "StorageUtils"

    const-string v4, "cannot stat the filesystem then we don\'t know how many free bytes exist"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, -0x2

    goto :goto_1
.end method

.method public static isStorageMounted()Z
    .locals 5

    const/4 v1, 0x0

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->MICRO_SD_SLOT:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-object v2, Lcom/sec/android/app/camera/util/StorageUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v2, :cond_2

    const-string v2, "StorageUtils"

    const-string v3, "return mStorageManger is null"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/sec/android/app/camera/util/StorageUtils;->mSDStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/sec/android/app/camera/util/StorageUtils;->mSDStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->semGetPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    :cond_3
    const-string v2, "StorageUtils"

    const-string v3, "return mSDStorageVolume.getPath() is null"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/sec/android/app/camera/util/StorageUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/sec/android/app/camera/util/StorageUtils;->mSDStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->semGetPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->getStorageVolume(Ljava/io/File;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public static setStorageVolume(Landroid/content/Context;)V
    .locals 5

    const-string v2, "storage"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    sput-object v2, Lcom/sec/android/app/camera/util/StorageUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v2, Lcom/sec/android/app/camera/util/StorageUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/sec/android/app/camera/util/StorageUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->semGetSubSystem()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sd"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sput-object v0, Lcom/sec/android/app/camera/util/StorageUtils;->mSDStorageVolume:Landroid/os/storage/StorageVolume;

    goto :goto_0

    :cond_1
    const-string v2, "StorageUtils"

    const-string v3, "cannot create mStorageManger"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method
