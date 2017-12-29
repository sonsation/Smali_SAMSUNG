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

.field public static final RETRY_THEFT_REPORT:I = 0x12

.field public static final RETRY_UNLOCK_REPORT:I = 0x11

.field public static final RET_TYPE:Ljava/lang/String; = "retType"

.field public static final STORAGE_NONE:I = -0x1

.field public static final STORAGE_PRIMARY:I = 0x0

.field public static final STORAGE_SECONDARY:I = 0x1

.field private static final SUPPORT_STORAGE_MANAGER:Z

.field public static final TAG:Ljava/lang/String;

.field public static final maxDate:I = 0x16d

.field public static messageId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    const-class v0, Lcom/samsung/android/rlc/util/PushUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    .line 311
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-gt v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/rlc/util/PushUtil;->SUPPORT_STORAGE_MANAGER:Z

    .line 54
    return-void

    .line 311
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addIntentFlagStoppedPackages(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 461
    sget-object v2, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    const-string v3, "[addIntentFlag]"

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    if-eqz p0, :cond_0

    .line 464
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 479
    .local v0, "SDK_VERSION":I
    const/16 v2, 0xc

    if-gt v2, v0, :cond_0

    .line 498
    const/16 v1, 0x20

    .line 500
    .local v1, "flag":I
    invoke-virtual {p0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 502
    sget-object v2, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    const-string v3, "add Intent.FLAG_INCLUDE_STOPPED_PACKAGES"

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    .end local v0    # "SDK_VERSION":I
    .end local v1    # "flag":I
    :cond_0
    return-object p0
.end method

.method public static getDMDomain(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 431
    const-string v1, "rlc.dm.url"

    invoke-static {p0, v1}, Lcom/samsung/android/rlc/util/PushUtil;->getRlcDebugProp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 433
    const-string v0, "rmm.samsung.com"

    .line 435
    :cond_0
    return-object v0
.end method

.method public static getDMURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subURL"    # Ljava/lang/String;

    .prologue
    .line 307
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->getDMDomain(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeliveryURL(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 290
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getMessageGatewayURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 291
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getMessageGatewayURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 293
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->getMGDomain(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "mgUrlInfo":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 296
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getMessageGatewayURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 298
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 299
    const-string v1, "https://%s/mg/v1/push/deliveryreport"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 301
    :cond_2
    const-string v1, "https://%s/mg/v1/push/deliveryreport"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "rmm.samsung.com"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getExternalSDCardStoragePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 368
    const/4 v0, 0x0

    .line 370
    .local v0, "secondarySDPath":Ljava/lang/String;
    const-string v2, "storage"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 381
    .local v1, "storageManager":Landroid/os/storage/StorageManager;
    return-object v0
.end method

.method public static getExternalStorageDirectory(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 351
    const/4 v0, 0x0

    .line 353
    .local v0, "primarySDPath":Ljava/lang/String;
    const-string v2, "storage"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 364
    .local v1, "storageManager":Landroid/os/storage/StorageManager;
    return-object v0
.end method

.method public static getMGDomain(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 427
    const-string v0, "rlc.mg.url"

    invoke-static {p0, v0}, Lcom/samsung/android/rlc/util/PushUtil;->getRlcDebugProp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMGRegisterURL(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 285
    const-string v0, "https://%s/dm/v1/dev/register"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->getDMDomain(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPrimaryStoragePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 329
    const/4 v0, 0x0

    .line 331
    .local v0, "storagePath":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    sget-boolean v1, Lcom/samsung/android/rlc/util/PushUtil;->SUPPORT_STORAGE_MANAGER:Z

    if-eqz v1, :cond_2

    .line 333
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_1

    .line 334
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->getExternalStorageDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 343
    .end local v0    # "storagePath":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 336
    .restart local v0    # "storagePath":Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .local v0, "storagePath":Ljava/lang/String;
    goto :goto_0

    .line 339
    .local v0, "storagePath":Ljava/lang/String;
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .local v0, "storagePath":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getPushTypeList(Landroid/content/Context;)[Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 202
    sget-object v3, Lcom/samsung/android/rlc/common/Extra$PushInfo;->DEFAULT_PUSH_TYPE_LIST:[Ljava/lang/String;

    .line 204
    .local v3, "pushList":[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v0, "aPushList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v3

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 208
    const-string v4, "SPP"

    aget-object v5, v3, v1

    if-ne v4, v5, :cond_1

    .line 209
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->isSPPClientInstalled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 210
    aget-object v4, v3, v1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    :cond_1
    const-string v4, "GCM"

    aget-object v5, v3, v1

    if-ne v4, v5, :cond_0

    .line 213
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->isGCMClientInstalled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 214
    aget-object v4, v3, v1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 219
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    .line 220
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "pushList":[Ljava/lang/String;
    check-cast v3, [Ljava/lang/String;

    .line 222
    .restart local v3    # "pushList":[Ljava/lang/String;
    sget-object v4, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPushTypeList : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return-object v3
.end method

.method public static getRLCClientVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 441
    if-eqz p0, :cond_0

    .line 442
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.samsung.android.rlc"

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 443
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 444
    sget-object v2, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getRLCClientVersionName]Version : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 448
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 449
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NameNotFoundException in getRLCClientVersionName : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const-string v2, "NONE"

    return-object v2

    .line 449
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const-string v2, "context is null"

    goto :goto_0
.end method

.method public static getRlcDebugProp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 398
    const/4 v5, 0x0

    .line 399
    .local v5, "result":Ljava/lang/String;
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 400
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 401
    .local v2, "prop":Ljava/util/Properties;
    const/4 v3, 0x0

    .line 403
    .local v3, "propStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    const-string v6, "/data/data/com.samsung.android.rlc/files/rlc.prop"

    invoke-direct {v4, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    .end local v3    # "propStream":Ljava/io/FileInputStream;
    .local v4, "propStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v2, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 405
    invoke-virtual {v2}, Ljava/util/Properties;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 406
    invoke-virtual {v2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 407
    .local v5, "result":Ljava/lang/String;
    sget-object v6, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 414
    if-eqz v4, :cond_0

    .line 416
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 408
    :cond_0
    :goto_0
    return-object v5

    .line 417
    :catch_0
    move-exception v1

    .line 418
    .local v1, "e1":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 414
    .end local v1    # "e1":Ljava/io/IOException;
    .local v5, "result":Ljava/lang/String;
    :cond_1
    if-eqz v4, :cond_2

    .line 416
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 423
    .end local v2    # "prop":Ljava/util/Properties;
    .end local v4    # "propStream":Ljava/io/FileInputStream;
    .end local v5    # "result":Ljava/lang/String;
    :cond_2
    :goto_1
    return-object v5

    .line 417
    .restart local v2    # "prop":Ljava/util/Properties;
    .restart local v4    # "propStream":Ljava/io/FileInputStream;
    .restart local v5    # "result":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 418
    .restart local v1    # "e1":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 411
    .end local v1    # "e1":Ljava/io/IOException;
    .end local v4    # "propStream":Ljava/io/FileInputStream;
    .restart local v3    # "propStream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    .line 412
    .end local v3    # "propStream":Ljava/io/FileInputStream;
    .end local v5    # "result":Ljava/lang/String;
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    sget-object v6, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    const-string v7, "NO RLC Pro file "

    invoke-static {v6, v7}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 414
    if-eqz v3, :cond_2

    .line 416
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 417
    :catch_3
    move-exception v1

    .line 418
    .restart local v1    # "e1":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 413
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 414
    :goto_3
    if-eqz v3, :cond_3

    .line 416
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 413
    :cond_3
    :goto_4
    throw v6

    .line 417
    :catch_4
    move-exception v1

    .line 418
    .restart local v1    # "e1":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 413
    .end local v1    # "e1":Ljava/io/IOException;
    .restart local v4    # "propStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "propStream":Ljava/io/FileInputStream;
    .local v3, "propStream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 411
    .end local v3    # "propStream":Ljava/io/FileInputStream;
    .restart local v4    # "propStream":Ljava/io/FileInputStream;
    :catch_5
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "propStream":Ljava/io/FileInputStream;
    .restart local v3    # "propStream":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static getSecondaryStoragePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 347
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->getExternalSDCardStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStoragePath(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "storage"    # I

    .prologue
    .line 314
    const/4 v0, 0x0

    .line 316
    .local v0, "storagePath":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 324
    .end local v0    # "storagePath":Ljava/lang/String;
    :goto_0
    sget-object v1, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storagePath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    return-object v0

    .line 318
    .restart local v0    # "storagePath":Ljava/lang/String;
    :pswitch_0
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->getPrimaryStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .local v0, "storagePath":Ljava/lang/String;
    goto :goto_0

    .line 321
    .local v0, "storagePath":Ljava/lang/String;
    :pswitch_1
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->getSecondaryStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .local v0, "storagePath":Ljava/lang/String;
    goto :goto_0

    nop

    .line 316
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isGCMClientInstalled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 229
    invoke-static {p0}, Lcom/samsung/android/rlc/receiver/GCMReceiver;->isInstalled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/samsung/android/rlc/receiver/GCMReceiver;->isSignatureMatch(Landroid/content/Context;)Z

    move-result v0

    .line 230
    :goto_0
    sget-object v1, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GCMPushClient is installed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    return v0

    .line 229
    :cond_0
    const/4 v0, 0x0

    .local v0, "installed":Z
    goto :goto_0
.end method

.method public static isSPPClientInstalled(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 235
    const/4 v0, 0x0

    .line 241
    .local v0, "installed":Z
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 242
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "com.sec.spp.action.SPP_REQUEST"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    if-eqz p0, :cond_0

    .line 245
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 247
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v1, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 249
    .local v2, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 250
    const/4 v0, 0x1

    .line 279
    .end local v2    # "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    sget-object v4, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SPPPushClient is installed : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    return v0
.end method

.method public static retryBackoff(Landroid/content/Context;Landroid/os/Bundle;I)I
    .locals 24
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "retryType"    # I

    .prologue
    .line 88
    const/16 v19, 0x0

    .line 90
    .local v19, "retryIntent":Landroid/content/Intent;
    const-string v20, "180000"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 91
    .local v5, "backoffTimeMs":I
    const-string v15, ""

    .line 92
    .local v15, "nextBackoff":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "retry_"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 93
    .local v17, "retTime":Ljava/lang/String;
    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string v20, "yyyy-MM-dd"

    move-object/from16 v0, v20

    invoke-direct {v14, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 95
    .local v14, "formatter":Ljava/text/SimpleDateFormat;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 96
    sget-object v20, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Save Retry Time : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "retry_"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_0
    :goto_0
    packed-switch p2, :pswitch_data_0

    .line 172
    .end local v19    # "retryIntent":Landroid/content/Intent;
    :goto_1
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 173
    sget-object v20, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Scheduling retry , back off time : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ")"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const/16 v20, 0x0

    const/high16 v21, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v19

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 175
    .local v16, "pending":Landroid/app/PendingIntent;
    const-string v20, "alarm"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    .line 177
    .local v4, "am":Landroid/app/AlarmManager;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    int-to-long v0, v5

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    const/16 v22, 0x3

    move/from16 v0, v22

    move-wide/from16 v1, v20

    move-object/from16 v3, v16

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 179
    mul-int/lit8 v5, v5, 0x2

    .line 180
    const v20, 0x44aa200

    move/from16 v0, v20

    if-gt v0, v5, :cond_2

    .line 181
    const v5, 0x44aa200

    .line 183
    const/16 v20, 0xe

    move/from16 v0, p2

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    const/16 v20, 0xc

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 184
    :cond_1
    :goto_2
    sget-object v20, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    const-string v21, "Retry back off for check api is max value"

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/rlc/service/RmmTask;->regConnReceiver(Landroid/content/Context;)V

    .line 189
    :cond_2
    move-object/from16 v0, p0

    invoke-static {v0, v15, v5}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setRetryBackoff(Landroid/content/Context;Ljava/lang/String;I)V

    .line 190
    return v5

    .line 100
    .end local v4    # "am":Landroid/app/AlarmManager;
    .end local v16    # "pending":Landroid/app/PendingIntent;
    .restart local v19    # "retryIntent":Landroid/content/Intent;
    :cond_3
    :try_start_0
    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 101
    .local v18, "retTimeDate":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    .line 102
    .local v6, "beginDate":Ljava/util/Date;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v13

    .line 103
    .local v13, "endDate":Ljava/util/Date;
    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v22

    sub-long v8, v20, v22

    .line 104
    .local v8, "diff":J
    const-wide/32 v20, 0x5265c00

    div-long v10, v8, v20

    .line 105
    .local v10, "diffDays":J
    const-wide/16 v20, 0x16d

    cmp-long v20, v10, v20

    if-lez v20, :cond_0

    .line 106
    const/16 v20, 0xa

    move/from16 v0, p2

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    const/16 v20, 0xb

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 107
    :cond_4
    sget-object v20, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Save Retry Time : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 120
    .end local v6    # "beginDate":Ljava/util/Date;
    .end local v8    # "diff":J
    .end local v10    # "diffDays":J
    .end local v13    # "endDate":Ljava/util/Date;
    .end local v18    # "retTimeDate":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 121
    .local v12, "e":Ljava/text/ParseException;
    invoke-virtual {v12}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_0

    .line 108
    .end local v12    # "e":Ljava/text/ParseException;
    .restart local v6    # "beginDate":Ljava/util/Date;
    .restart local v8    # "diff":J
    .restart local v10    # "diffDays":J
    .restart local v13    # "endDate":Ljava/util/Date;
    .restart local v18    # "retTimeDate":Ljava/lang/String;
    :cond_5
    const/16 v20, 0x10

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 109
    :try_start_1
    sget-object v20, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    const-string v21, "Retry Time is expired"

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/16 v20, 0x0

    return v20

    .line 111
    :cond_6
    const/16 v20, 0xe

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 112
    sget-object v20, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    const-string v21, "Check retry Time is expired"

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v20, "callcheckapi"

    const-string v21, "Y"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    sget-object v20, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    const-string v21, "CheckDeviceStatusManager : not supported device "

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 116
    .local v7, "clearBundle":Landroid/os/Bundle;
    const-string v20, "clearOp"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 117
    const/16 v20, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v7, v1}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 126
    .end local v6    # "beginDate":Ljava/util/Date;
    .end local v7    # "clearBundle":Landroid/os/Bundle;
    .end local v8    # "diff":J
    .end local v10    # "diffDays":J
    .end local v13    # "endDate":Ljava/util/Date;
    .end local v18    # "retTimeDate":Ljava/lang/String;
    :pswitch_0
    new-instance v19, Landroid/content/Intent;

    .end local v19    # "retryIntent":Landroid/content/Intent;
    const-string v20, "com.samsung.android.rlc.SPP_REGISTRATION_RETRY"

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    .local v19, "retryIntent":Landroid/content/Intent;
    const-string v20, "spp_backoff"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getRetryBackoff(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 128
    const-string v15, "spp_backoff"

    goto/16 :goto_1

    .line 131
    .local v19, "retryIntent":Landroid/content/Intent;
    :pswitch_1
    new-instance v19, Landroid/content/Intent;

    .end local v19    # "retryIntent":Landroid/content/Intent;
    const-string v20, "com.samsung.android.rlc.GCM_REGISTRATION_RETRY"

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    .local v19, "retryIntent":Landroid/content/Intent;
    const-string v20, "gcm_backoff"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getRetryBackoff(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 133
    const-string v15, "gcm_backoff"

    goto/16 :goto_1

    .line 136
    .local v19, "retryIntent":Landroid/content/Intent;
    :pswitch_2
    new-instance v19, Landroid/content/Intent;

    .end local v19    # "retryIntent":Landroid/content/Intent;
    const-string v20, "com.samsung.android.rlc.SPP_MG_REGISTRATION_REQUEST_RETRY"

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    .local v19, "retryIntent":Landroid/content/Intent;
    const-string v20, "spp_mg_registration_backoff"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getRetryBackoff(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 138
    const-string v15, "spp_mg_registration_backoff"

    goto/16 :goto_1

    .line 141
    .local v19, "retryIntent":Landroid/content/Intent;
    :pswitch_3
    new-instance v19, Landroid/content/Intent;

    .end local v19    # "retryIntent":Landroid/content/Intent;
    const-string v20, "com.samsung.android.rlc.GCM_MG_REGISTRATION_REQUEST_RETRY"

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    .local v19, "retryIntent":Landroid/content/Intent;
    const-string v20, "gcm_mg_registration_backoff"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getRetryBackoff(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 143
    const-string v15, "gcm_mg_registration_backoff"

    goto/16 :goto_1

    .line 146
    .local v19, "retryIntent":Landroid/content/Intent;
    :pswitch_4
    new-instance v19, Landroid/content/Intent;

    .end local v19    # "retryIntent":Landroid/content/Intent;
    const-string v20, "com.samsung.android.rlc.CHECK_DEVICE_STATUS_RETRY"

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v19, "retryIntent":Landroid/content/Intent;
    const-string v20, "check_backoff"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getRetryBackoff(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 148
    const-string v15, "check_backoff"

    goto/16 :goto_1

    .line 151
    .local v19, "retryIntent":Landroid/content/Intent;
    :pswitch_5
    new-instance v19, Landroid/content/Intent;

    .end local v19    # "retryIntent":Landroid/content/Intent;
    const-string v20, "com.samsung.android.rlc.REPORT_RETRY"

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    .local v19, "retryIntent":Landroid/content/Intent;
    const-string v20, "report_backoff"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getRetryBackoff(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 153
    const-string v15, "report_backoff"

    goto/16 :goto_1

    .line 156
    .local v19, "retryIntent":Landroid/content/Intent;
    :pswitch_6
    new-instance v19, Landroid/content/Intent;

    .end local v19    # "retryIntent":Landroid/content/Intent;
    const-string v20, "com.samsung.android.rlc.DELIVERY_REQUEST_RETRY"

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    .local v19, "retryIntent":Landroid/content/Intent;
    const-string v20, "delivery_backoff"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getRetryBackoff(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 158
    const-string v15, "delivery_backoff"

    goto/16 :goto_1

    .line 161
    .local v19, "retryIntent":Landroid/content/Intent;
    :pswitch_7
    new-instance v19, Landroid/content/Intent;

    .end local v19    # "retryIntent":Landroid/content/Intent;
    const-string v20, "com.samsung.android.rlc.UNLOCK_REPORT_RETRY"

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    .local v19, "retryIntent":Landroid/content/Intent;
    const-string v20, "unlock_backoff"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getRetryBackoff(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 163
    const-string v15, "unlock_backoff"

    goto/16 :goto_1

    .line 166
    .local v19, "retryIntent":Landroid/content/Intent;
    :pswitch_8
    new-instance v19, Landroid/content/Intent;

    .end local v19    # "retryIntent":Landroid/content/Intent;
    const-string v20, "com.samsung.android.rlc.THEFT_PROTECTION_RETRY"

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .local v19, "retryIntent":Landroid/content/Intent;
    const-string v20, "theft_backoff"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getRetryBackoff(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 168
    const-string v15, "theft_backoff"

    goto/16 :goto_1

    .line 183
    .end local v19    # "retryIntent":Landroid/content/Intent;
    .restart local v4    # "am":Landroid/app/AlarmManager;
    .restart local v16    # "pending":Landroid/app/PendingIntent;
    :cond_7
    const/16 v20, 0xd

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    goto/16 :goto_2

    .line 124
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
        :pswitch_8
    .end packed-switch
.end method

.method public static declared-synchronized retryCancel(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-class v3, Lcom/samsung/android/rlc/util/PushUtil;

    monitor-enter v3

    .line 60
    :try_start_0
    sget-object v2, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action canceled ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const/4 v2, 0x0

    const/high16 v4, 0x8000000

    invoke-static {p0, v2, p1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 63
    .local v1, "pending":Landroid/app/PendingIntent;
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 64
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 59
    return-void

    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "pending":Landroid/app/PendingIntent;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static retryMgBackOff(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "pushType"    # Ljava/lang/String;

    .prologue
    .line 194
    const-string v0, "SPP"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {p0, v0, v1}, Lcom/samsung/android/rlc/util/PushUtil;->retryBackoff(Landroid/content/Context;Landroid/os/Bundle;I)I

    .line 193
    :goto_0
    return-void

    .line 197
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/16 v1, 0xd

    invoke-static {p0, v0, v1}, Lcom/samsung/android/rlc/util/PushUtil;->retryBackoff(Landroid/content/Context;Landroid/os/Bundle;I)I

    goto :goto_0
.end method
