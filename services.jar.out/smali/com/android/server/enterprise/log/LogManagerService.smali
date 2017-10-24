.class public Lcom/android/server/enterprise/log/LogManagerService;
.super Landroid/app/enterprise/ILogManager$Stub;
.source "LogManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/log/LogManagerService$1;
    }
.end annotation


# static fields
.field private static final DISABLED:Ljava/lang/String; = "0"

.field private static final ENABLED:Ljava/lang/String; = "1"

.field private static final LOGGER_NAMES:[Ljava/lang/String;

.field private static final LOGGER_TYPES:[I

.field private static final LOG_CONFIG_FILE:Ljava/lang/String; = "/data/system/enterprise/log.cfg"

.field private static final TAG:Ljava/lang/String; = "LogManagerService"

.field private static mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLogReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/enterprise/log/LogManagerService;I)Lcom/android/server/enterprise/log/Logger;
    .locals 1
    .param p1, "logType"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/LogManagerService;->getLogger(I)Lcom/android/server/enterprise/log/Logger;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 65
    new-array v0, v4, [Ljava/lang/String;

    .line 66
    const-string/jumbo v1, "ConsoleLogger"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "FileLogger"

    aput-object v1, v0, v3

    .line 65
    sput-object v0, Lcom/android/server/enterprise/log/LogManagerService;->LOGGER_NAMES:[Ljava/lang/String;

    .line 68
    filled-new-array {v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/log/LogManagerService;->LOGGER_TYPES:[I

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    invoke-direct {p0}, Landroid/app/enterprise/ILogManager$Stub;-><init>()V

    .line 138
    new-instance v1, Lcom/android/server/enterprise/log/LogManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/log/LogManagerService$1;-><init>(Lcom/android/server/enterprise/log/LogManagerService;)V

    iput-object v1, p0, Lcom/android/server/enterprise/log/LogManagerService;->mLogReceiver:Landroid/content/BroadcastReceiver;

    .line 86
    iput-object p1, p0, Lcom/android/server/enterprise/log/LogManagerService;->mContext:Landroid/content/Context;

    .line 87
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/log/LogManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/enterprise/log/LogManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    .line 89
    const-string/jumbo v1, "android.intent.action.DEVICE_STORAGE_LOW"

    .line 88
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/android/server/enterprise/log/LogManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/log/LogManagerService;->mLogReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    invoke-direct {p0}, Lcom/android/server/enterprise/log/LogManagerService;->initLog()V

    .line 85
    return-void
.end method

.method private checkAdminExistsInELMDB(I)Z
    .locals 11
    .param p1, "uid"    # I

    .prologue
    const/4 v8, 0x0

    .line 204
    sget-object v7, Lcom/android/server/enterprise/log/LogManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v7, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v5

    .line 205
    .local v5, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 207
    .local v2, "ident":J
    :try_start_0
    const-string/jumbo v7, "enterprise_license_policy"

    invoke-static {v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 208
    .local v6, "service":Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    if-eqz v6, :cond_1

    .line 209
    invoke-virtual {v6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getAllLicenseInfo()[Lcom/samsung/android/knox/license/LicenseInfo;

    move-result-object v4

    .line 210
    .local v4, "list":[Lcom/samsung/android/knox/license/LicenseInfo;
    if-eqz v4, :cond_1

    .line 211
    array-length v9, v4

    move v7, v8

    :goto_0
    if-ge v7, v9, :cond_1

    aget-object v1, v4, v7

    .line 212
    .local v1, "info":Lcom/samsung/android/knox/license/LicenseInfo;
    invoke-virtual {v1}, Lcom/samsung/android/knox/license/LicenseInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-eqz v10, :cond_0

    .line 213
    const/4 v7, 0x1

    .line 221
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 213
    return v7

    .line 211
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 221
    .end local v1    # "info":Lcom/samsung/android/knox/license/LicenseInfo;
    .end local v4    # "list":[Lcom/samsung/android/knox/license/LicenseInfo;
    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 224
    .end local v6    # "service":Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    :goto_1
    return v8

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v7, "LogManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "checkAdminExistsInELMDB Ex: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 220
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 221
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 220
    throw v7
.end method

.method private checkCallingUidAccess()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 229
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 230
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 231
    return v2

    .line 232
    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveSamsungAuthorizedAdmin(I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/log/LogManagerService;->checkAdminExistsInELMDB(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 235
    :cond_1
    return v2

    .line 233
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private static createLogger(I)Lcom/android/server/enterprise/log/Logger;
    .locals 4
    .param p0, "type"    # I

    .prologue
    const/4 v3, 0x0

    .line 122
    packed-switch p0, :pswitch_data_0

    .line 128
    const-string/jumbo v0, "LogManagerService"

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid Logger Type Returning Console Logger"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-instance v0, Lcom/android/server/enterprise/log/ConsoleLogger;

    sget-object v1, Lcom/android/server/enterprise/log/LogManagerService;->LOGGER_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/log/ConsoleLogger;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 124
    :pswitch_0
    new-instance v0, Lcom/android/server/enterprise/log/ConsoleLogger;

    sget-object v1, Lcom/android/server/enterprise/log/LogManagerService;->LOGGER_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/log/ConsoleLogger;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 126
    :pswitch_1
    new-instance v0, Lcom/android/server/enterprise/log/FileLogger;

    sget-object v1, Lcom/android/server/enterprise/log/LogManagerService;->LOGGER_NAMES:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/log/FileLogger;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getLogger(I)Lcom/android/server/enterprise/log/Logger;
    .locals 2
    .param p1, "logType"    # I

    .prologue
    .line 197
    if-eqz p1, :cond_0

    .line 198
    sget-object v0, Lcom/android/server/enterprise/log/LogManagerService;->LOGGER_NAMES:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/android/server/enterprise/log/Log;->getLogger(Ljava/lang/String;)Lcom/android/server/enterprise/log/Logger;

    move-result-object v0

    return-object v0

    .line 200
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private initLog()V
    .locals 6

    .prologue
    .line 99
    new-instance v1, Ljava/io/File;

    const-string/jumbo v4, "/data/system/enterprise/log.cfg"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v1, "logCfg":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 101
    .local v2, "parentFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v2, :cond_0

    .line 102
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 103
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/log/LogManagerService;->enableLogging(I)I

    .line 106
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v4, Lcom/android/server/enterprise/log/LogManagerService;->LOGGER_NAMES:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 107
    sget-object v4, Lcom/android/server/enterprise/log/LogManagerService;->LOGGER_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v0

    const-string/jumbo v5, "/data/system/enterprise/log.cfg"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 109
    sget-object v4, Lcom/android/server/enterprise/log/LogManagerService;->LOGGER_TYPES:[I

    aget v4, v4, v0

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/log/LogManagerService;->enableLogging(I)I

    .line 106
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    .end local v3    # "value":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private isValidLogLevel(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 177
    packed-switch p1, :pswitch_data_0

    .line 186
    const/4 v0, 0x0

    return v0

    .line 184
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isValidLogType(I)Z
    .locals 5
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x0

    .line 162
    sget-object v3, Lcom/android/server/enterprise/log/LogManagerService;->LOGGER_TYPES:[I

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget v0, v3, v1

    .line 163
    .local v0, "logType":I
    if-ne p1, v0, :cond_0

    .line 164
    const/4 v1, 0x1

    return v1

    .line 162
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    .end local v0    # "logType":I
    :cond_1
    return v2
.end method


# virtual methods
.method public copyLogs(Landroid/os/ParcelFileDescriptor;)I
    .locals 6
    .param p1, "file"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 349
    if-nez p1, :cond_0

    .line 350
    const/4 v4, -0x1

    return v4

    .line 352
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/log/LogManagerService;->checkCallingUidAccess()Z

    move-result v4

    if-nez v4, :cond_1

    .line 353
    const/4 v4, -0x2

    return v4

    .line 355
    :cond_1
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/log/LogManagerService;->getLogger(I)Lcom/android/server/enterprise/log/Logger;

    move-result-object v4

    if-nez v4, :cond_2

    .line 356
    const/4 v4, -0x5

    return v4

    .line 359
    :cond_2
    :try_start_0
    new-instance v3, Ljava/lang/SecurityManager;

    invoke-direct {v3}, Ljava/lang/SecurityManager;-><init>()V

    .line 360
    .local v3, "sm":Ljava/lang/SecurityManager;
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/SecurityManager;->checkWrite(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    const/4 v1, 0x0

    .line 369
    .local v1, "error":I
    :try_start_1
    new-instance v4, Lcom/android/server/enterprise/log/LogManagerService$2;

    invoke-direct {v4, p0, p1}, Lcom/android/server/enterprise/log/LogManagerService$2;-><init>(Lcom/android/server/enterprise/log/LogManagerService;Landroid/os/ParcelFileDescriptor;)V

    .line 368
    invoke-static {v4}, Lcom/android/server/enterprise/utils/IOExceptionHandler;->process(Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 413
    :goto_0
    return v1

    .line 361
    .end local v1    # "error":I
    .end local v3    # "sm":Ljava/lang/SecurityManager;
    :catch_0
    move-exception v2

    .line 362
    .local v2, "ex":Ljava/lang/SecurityException;
    const-string/jumbo v4, "LogManagerService"

    const-string/jumbo v5, "can\'t write to file descriptor"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const/4 v4, -0x6

    return v4

    .line 408
    .end local v2    # "ex":Ljava/lang/SecurityException;
    .restart local v1    # "error":I
    .restart local v3    # "sm":Ljava/lang/SecurityManager;
    :catch_1
    move-exception v0

    .line 409
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 410
    const/4 v1, -0x6

    goto :goto_0
.end method

.method public disableLogging(I)I
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 267
    invoke-direct {p0}, Lcom/android/server/enterprise/log/LogManagerService;->checkCallingUidAccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    const/4 v0, -0x2

    return v0

    .line 270
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/LogManagerService;->isValidLogType(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 271
    const/4 v0, -0x3

    return v0

    .line 273
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/LogManagerService;->getLogger(I)Lcom/android/server/enterprise/log/Logger;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 274
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/LogManagerService;->getLogger(I)Lcom/android/server/enterprise/log/Logger;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/log/Log;->removeLogger(Lcom/android/server/enterprise/log/Logger;)Z

    .line 276
    :cond_2
    sget-object v0, Lcom/android/server/enterprise/log/LogManagerService;->LOGGER_NAMES:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    const-string/jumbo v1, "0"

    const-string/jumbo v2, "/data/system/enterprise/log.cfg"

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method public enableLogging(I)I
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/android/server/enterprise/log/LogManagerService;->checkCallingUidAccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    const/4 v0, -0x2

    return v0

    .line 249
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/LogManagerService;->isValidLogType(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 250
    const/4 v0, -0x3

    return v0

    .line 252
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/LogManagerService;->getLogger(I)Lcom/android/server/enterprise/log/Logger;

    move-result-object v0

    if-nez v0, :cond_2

    .line 253
    invoke-static {p1}, Lcom/android/server/enterprise/log/LogManagerService;->createLogger(I)Lcom/android/server/enterprise/log/Logger;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/log/Log;->addLogger(Lcom/android/server/enterprise/log/Logger;)Z

    .line 255
    :cond_2
    sget-object v0, Lcom/android/server/enterprise/log/LogManagerService;->LOGGER_NAMES:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "/data/system/enterprise/log.cfg"

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public getLogLevel(I)I
    .locals 2
    .param p1, "logType"    # I

    .prologue
    .line 328
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/LogManagerService;->isValidLogType(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 329
    const/4 v1, -0x3

    return v1

    .line 331
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/LogManagerService;->getLogger(I)Lcom/android/server/enterprise/log/Logger;

    move-result-object v0

    .line 332
    .local v0, "logger":Lcom/android/server/enterprise/log/Logger;
    if-eqz v0, :cond_1

    .line 333
    invoke-virtual {v0}, Lcom/android/server/enterprise/log/Logger;->getLogLevel()I

    move-result v1

    return v1

    .line 335
    :cond_1
    const/4 v1, -0x5

    return v1
.end method

.method public isLoggingEnabled(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 288
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/LogManagerService;->getLogger(I)Lcom/android/server/enterprise/log/Logger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 289
    const/4 v0, 0x1

    return v0

    .line 291
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 415
    return-void
.end method

.method public setLogLevel(II)I
    .locals 2
    .param p1, "logType"    # I
    .param p2, "level"    # I

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/android/server/enterprise/log/LogManagerService;->checkCallingUidAccess()Z

    move-result v1

    if-nez v1, :cond_0

    .line 304
    const/4 v1, -0x2

    return v1

    .line 306
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/LogManagerService;->isValidLogType(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 307
    const/4 v1, -0x3

    return v1

    .line 309
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/log/LogManagerService;->isValidLogLevel(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 310
    const/4 v1, -0x4

    return v1

    .line 312
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/LogManagerService;->getLogger(I)Lcom/android/server/enterprise/log/Logger;

    move-result-object v0

    .line 313
    .local v0, "logger":Lcom/android/server/enterprise/log/Logger;
    if-eqz v0, :cond_3

    .line 314
    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/log/Logger;->setLogLevel(I)V

    .line 315
    const/4 v1, 0x0

    return v1

    .line 317
    :cond_3
    const/4 v1, -0x5

    return v1
.end method
