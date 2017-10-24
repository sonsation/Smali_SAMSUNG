.class public Lcom/samsung/android/rlc/util/PushUtil;
.super Ljava/lang/Object;
.source "PushUtil.java"


# static fields
.field public static final RETRY_CHECK_DVC:I = 0xe

.field public static final RETRY_DELIVERY_REPORT:I = 0x10

.field public static final RETRY_GCM:I = 0xb

.field public static final RETRY_GCM_MG:I = 0xd

.field public static final RETRY_RESULT_REPORT:I = 0xf

.field public static final RETRY_SPP:I = 0xa

.field public static final RETRY_SPP_MG:I = 0xc

.field public static final RETRY_UNLOCK_REPORT:I = 0x11

.field public static final RET_TYPE:Ljava/lang/String; = "retType"

.field public static final STORAGE_NONE:I = -0x1

.field public static final STORAGE_PRIMARY:I = 0x0

.field public static final STORAGE_SECONDARY:I = 0x1

.field private static final SUPPORT_STORAGE_MANAGER:Z

.field public static final TAG:Ljava/lang/String;

.field public static final maxDate:I = 0x1e

.field public static messageId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-class v0, Lcom/samsung/android/rlc/util/PushUtil;

    .line 53
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    .line 287
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-le v1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/samsung/android/rlc/util/PushUtil;->SUPPORT_STORAGE_MANAGER:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addIntentFlagStoppedPackages(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 435
    sget-object v0, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "[addIntentFlag]"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    if-nez p0, :cond_1

    .line 480
    :cond_0
    :goto_0
    return-object p0

    .line 438
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    .line 453
    if-gt v1, v0, :cond_0

    const/16 v0, 0x20

    .line 474
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 476
    sget-object v0, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "add Intent.FLAG_INCLUDE_STOPPED_PACKAGES"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getDMDomain(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "rlc.dm.url"

    .line 407
    invoke-static {p0, v0}, Lcom/samsung/android/rlc/util/PushUtil;->getRlcDebugProp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 408
    if-eqz v0, :cond_0

    .line 411
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "rmm.samsung.com"

    goto :goto_0
.end method

.method public static getDMURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 283
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->getDMDomain(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeliveryURL(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 266
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getMessageGatewayURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->getMGDomain(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_1

    .line 274
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v0, "https://%s/mg/v1/push/deliveryreport"

    .line 277
    new-array v1, v2, [Ljava/lang/Object;

    const-string/jumbo v2, "rmm.samsung.com"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 267
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getMessageGatewayURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 272
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getMessageGatewayURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "https://%s/mg/v1/push/deliveryreport"

    .line 275
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalSDCardStoragePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v0, "storage"

    .line 346
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 357
    return-object v1
.end method

.method public static getExternalStorageDirectory(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v0, "storage"

    .line 329
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 340
    return-object v1
.end method

.method public static getMGDomain(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "rlc.mg.url"

    .line 403
    invoke-static {p0, v0}, Lcom/samsung/android/rlc/util/PushUtil;->getRlcDebugProp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMGRegisterURL(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const-string/jumbo v0, "https://%s/dm/v1/dev/register"

    const/4 v1, 0x1

    .line 261
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->getDMDomain(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPrimaryStoragePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 307
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 319
    :goto_0
    return-object v0

    .line 308
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rlc/util/PushUtil;->SUPPORT_STORAGE_MANAGER:Z

    if-nez v0, :cond_1

    .line 315
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 309
    :cond_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_2

    .line 312
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 310
    :cond_2
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->getExternalStorageDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPushTypeList(Landroid/content/Context;)[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 178
    sget-object v1, Lcom/samsung/android/rlc/common/Extra$PushInfo;->DEFAULT_PUSH_TYPE_LIST:[Ljava/lang/String;

    .line 180
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 183
    array-length v3, v1

    :goto_0
    if-lt v0, v3, :cond_0

    .line 195
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 196
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 198
    sget-object v1, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPushTypeList : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-object v0

    :cond_0
    const-string/jumbo v4, "SPP"

    .line 184
    aget-object v5, v1, v0

    if-eq v4, v5, :cond_2

    const-string/jumbo v4, "GCM"

    .line 188
    aget-object v5, v1, v0

    if-eq v4, v5, :cond_3

    .line 183
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    :cond_2
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->isSPPClientInstalled(Landroid/content/Context;)Z

    move-result v4

    if-ne v6, v4, :cond_1

    .line 186
    aget-object v4, v1, v0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 189
    :cond_3
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->isGCMClientInstalled(Landroid/content/Context;)Z

    move-result v4

    if-ne v6, v4, :cond_1

    .line 190
    aget-object v4, v1, v0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static getRLCClientVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 417
    if-nez p0, :cond_0

    :goto_0
    const-string/jumbo v0, "NONE"

    .line 425
    return-object v0

    .line 418
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.rlc"

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 419
    sget-object v1, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[getRLCClientVersionName]Version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    if-nez v0, :cond_1

    const-string/jumbo v0, "NONE"

    :goto_1
    return-object v0

    :cond_1
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 424
    :catch_0
    move-exception v0

    .line 423
    sget-object v1, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NameNotFoundException in getRLCClientVersionName : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p0, :cond_2

    const-string/jumbo v0, "context is null"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public static getRlcDebugProp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 375
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-nez v0, :cond_1

    .line 399
    :cond_0
    :goto_0
    return-object v1

    .line 376
    :cond_1
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 379
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    const-string/jumbo v3, "/data/data/com.samsung.android.rlc/files/rlc.prop"

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 381
    invoke-virtual {v2}, Ljava/util/Properties;->isEmpty()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-eqz v3, :cond_2

    .line 390
    if-eqz v0, :cond_0

    .line 392
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 395
    :catch_0
    move-exception v0

    .line 394
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 382
    :cond_2
    :try_start_3
    invoke-virtual {v2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 383
    sget-object v2, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 390
    if-nez v0, :cond_3

    .line 395
    :goto_1
    return-object v1

    .line 392
    :cond_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 395
    :catch_1
    move-exception v0

    .line 394
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 395
    :catch_2
    move-exception v0

    move-object v0, v1

    .line 388
    :goto_2
    :try_start_5
    sget-object v2, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "NO RLC Pro file "

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 390
    if-eqz v0, :cond_0

    .line 392
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 395
    :catch_3
    move-exception v0

    .line 394
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 395
    :catchall_0
    move-exception v0

    .line 390
    :goto_3
    if-nez v1, :cond_4

    .line 395
    :goto_4
    throw v0

    .line 392
    :cond_4
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_4

    .line 395
    :catch_4
    move-exception v1

    .line 394
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 395
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    :catch_5
    move-exception v2

    goto :goto_2
.end method

.method public static getSecondaryStoragePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->getExternalSDCardStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStoragePath(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 292
    packed-switch p1, :pswitch_data_0

    .line 300
    :goto_0
    sget-object v1, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "storagePath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    return-object v0

    .line 294
    :pswitch_0
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->getPrimaryStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 297
    :pswitch_1
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->getSecondaryStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 292
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isGCMClientInstalled(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 205
    invoke-static {p0}, Lcom/samsung/android/rlc/receiver/GCMReceiver;->isInstalled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 206
    :cond_0
    :goto_0
    sget-object v1, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "GCMPushClient is installed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return v0

    .line 205
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/rlc/receiver/GCMReceiver;->isSignatureMatch(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSPPClientInstalled(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 217
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.sec.spp.action.SPP_REQUEST"

    .line 218
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    if-nez p0, :cond_1

    .line 255
    :cond_0
    :goto_0
    sget-object v1, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SPPPushClient is installed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    return v0

    .line 221
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 223
    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 225
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 226
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static retryBackoff(Landroid/content/Context;Landroid/os/Bundle;I)I
    .locals 13

    .prologue
    const v4, 0x36ee80

    const/4 v5, 0x0

    const/4 v3, 0x0

    const-string/jumbo v0, "1000"

    .line 86
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string/jumbo v1, ""

    .line 88
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "retType"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/samsung/android/rlc/util/RLCUtil;->getStringInSecure(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 89
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy-MM-dd"

    invoke-direct {v0, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 96
    :try_start_0
    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/32 v10, 0x5265c00

    .line 99
    div-long/2addr v8, v10

    const-wide/16 v10, 0x1e

    .line 100
    cmp-long v0, v8, v10

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    .line 101
    sget-object v0, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Retry Time is expired"

    invoke-static {v0, v6}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    return v5

    .line 92
    :cond_0
    sget-object v6, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Save Retry Time : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "retType"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Lcom/samsung/android/rlc/util/RLCUtil;->setStringInSecure(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :goto_1
    packed-switch p2, :pswitch_data_0

    move-object v0, v3

    .line 153
    :goto_2
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 154
    sget-object v3, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Scheduling retry , back off time : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v3, 0x8000000

    .line 155
    invoke-static {p0, v5, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const-string/jumbo v0, "alarm"

    .line 156
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/4 v5, 0x3

    .line 158
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    int-to-long v8, v2

    add-long/2addr v6, v8

    invoke-virtual {v0, v5, v6, v7, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 160
    mul-int/lit8 v0, v2, 0x2

    .line 161
    if-le v4, v0, :cond_3

    .line 165
    :goto_3
    invoke-static {p0, v1, v0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setRetryBackoff(Landroid/content/Context;Ljava/lang/String;I)V

    .line 166
    return v0

    :cond_1
    move v0, v5

    .line 100
    goto/16 :goto_0

    .line 104
    :cond_2
    :try_start_1
    sget-object v0, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Save Retry Time : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 108
    :catch_0
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1

    .line 112
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.android.rlc.SPP_REGISTRATION_RETRY"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "spp_backoff"

    .line 113
    invoke-static {p0, v0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getRetryBackoff(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v0, "spp_backoff"

    move-object v12, v0

    move-object v0, v2

    move v2, v1

    move-object v1, v12

    .line 115
    goto/16 :goto_2

    .line 117
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.android.rlc.GCM_REGISTRATION_RETRY"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "gcm_backoff"

    .line 118
    invoke-static {p0, v0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getRetryBackoff(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v0, "gcm_backoff"

    move-object v12, v0

    move-object v0, v2

    move v2, v1

    move-object v1, v12

    .line 120
    goto/16 :goto_2

    .line 122
    :pswitch_2
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.android.rlc.SPP_MG_REGISTRATION_REQUEST_RETRY"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "spp_mg_registration_backoff"

    .line 123
    invoke-static {p0, v0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getRetryBackoff(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v0, "spp_mg_registration_backoff"

    move-object v12, v0

    move-object v0, v2

    move v2, v1

    move-object v1, v12

    .line 125
    goto/16 :goto_2

    .line 127
    :pswitch_3
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.android.rlc.GCM_MG_REGISTRATION_REQUEST_RETRY"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "gcm_mg_registration_backoff"

    .line 128
    invoke-static {p0, v0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getRetryBackoff(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v0, "gcm_mg_registration_backoff"

    move-object v12, v0

    move-object v0, v2

    move v2, v1

    move-object v1, v12

    .line 130
    goto/16 :goto_2

    .line 132
    :pswitch_4
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.android.rlc.CHECK_DEVICE_STATUS_RETRY"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "check_backoff"

    .line 133
    invoke-static {p0, v0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getRetryBackoff(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v0, "check_backoff"

    move-object v12, v0

    move-object v0, v2

    move v2, v1

    move-object v1, v12

    .line 135
    goto/16 :goto_2

    .line 137
    :pswitch_5
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.android.rlc.REPORT_RETRY"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "report_backoff"

    .line 138
    invoke-static {p0, v0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getRetryBackoff(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v0, "report_backoff"

    move-object v12, v0

    move-object v0, v2

    move v2, v1

    move-object v1, v12

    .line 140
    goto/16 :goto_2

    .line 142
    :pswitch_6
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.android.rlc.DELIVERY_REQUEST_RETRY"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "delivery_backoff"

    .line 143
    invoke-static {p0, v0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getRetryBackoff(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v0, "delivery_backoff"

    move-object v12, v0

    move-object v0, v2

    move v2, v1

    move-object v1, v12

    .line 145
    goto/16 :goto_2

    .line 147
    :pswitch_7
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.android.rlc.UNLOCK_REPORT_RETRY"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "unlock_backoff"

    .line 148
    invoke-static {p0, v0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getRetryBackoff(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v0, "unlock_backoff"

    move-object v12, v0

    move-object v0, v2

    move v2, v1

    move-object v1, v12

    .line 149
    goto/16 :goto_2

    :cond_3
    move v0, v4

    .line 162
    goto/16 :goto_3

    .line 110
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static declared-synchronized retryCancel(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const-class v1, Lcom/samsung/android/rlc/util/PushUtil;

    monitor-enter v1

    .line 57
    :try_start_0
    sget-object v0, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "action canceled ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/high16 v2, 0x8000000

    .line 59
    invoke-static {p0, v0, p1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const-string/jumbo v0, "alarm"

    .line 60
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 61
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 62
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static retryMgBackOff(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2

    .prologue
    const-string/jumbo v0, "SPP"

    .line 170
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/16 v1, 0xd

    invoke-static {p0, v0, v1}, Lcom/samsung/android/rlc/util/PushUtil;->retryBackoff(Landroid/content/Context;Landroid/os/Bundle;I)I

    .line 175
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {p0, v0, v1}, Lcom/samsung/android/rlc/util/PushUtil;->retryBackoff(Landroid/content/Context;Landroid/os/Bundle;I)I

    goto :goto_0
.end method
