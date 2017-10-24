.class public Lcom/android/server/enterprise/license/EnterpriseLicenseService;
.super Lcom/samsung/android/knox/license/IEnterpriseLicense$Stub;
.source "EnterpriseLicenseService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final DEACTIVATE_LICENSE_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_DEACTIVATE_LICENSE"

.field private static final MY_PID:I

.field private static final TAG:Ljava/lang/String; = "EnterpriseLicenseService"

.field private static final UMCpackageName:Ljava/lang/String; = "com.sec.enterprise.knox.cloudmdm.smdms"

.field private static mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private static mPMS:Landroid/content/pm/IPackageManager;


# instance fields
.field private allowedCaller:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mELMKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKLMKeyDeactivateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKLMKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUcmeService:Lcom/samsung/android/knox/ucm/core/IUcmService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->MY_PID:I

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "pms"    # Landroid/content/pm/IPackageManager;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/samsung/android/knox/license/IEnterpriseLicense$Stub;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mUcmeService:Lcom/samsung/android/knox/ucm/core/IUcmService;

    .line 144
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 145
    const-string/jumbo v1, "com.sec.enterprise.knox.cloudmdm.smdms"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 146
    const-string/jumbo v1, "com.sec.knox.kccagent"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 147
    const-string/jumbo v1, "com.sec.knox.klat.agent"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 144
    iput-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->allowedCaller:[Ljava/lang/String;

    .line 101
    iput-object p1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    .line 102
    sput-object p2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    .line 103
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mELMKeyMap:Ljava/util/Map;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyMap:Ljava/util/Map;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyDeactivateMap:Ljava/util/Map;

    .line 100
    return-void
.end method

.method private checkPackage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "callerPackage"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 151
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 152
    :cond_0
    const-string/jumbo v3, "EnterpriseLicenseService"

    const-string/jumbo v4, "caller is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return v8

    .line 154
    :cond_1
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 155
    return v8

    .line 157
    :cond_2
    const/4 v1, 0x0

    .line 158
    .local v1, "checkCallerPkgName":Z
    iget-object v5, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->allowedCaller:[Ljava/lang/String;

    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_3

    aget-object v0, v5, v3

    .line 159
    .local v0, "caller":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 160
    const-string/jumbo v3, "EnterpriseLicenseService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "caller is approved : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v1, 0x1

    .line 166
    .end local v0    # "caller":Ljava/lang/String;
    :cond_3
    if-nez v1, :cond_5

    .line 167
    const-string/jumbo v3, "EnterpriseLicenseService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "caller is not approved (caller:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " / target:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return v4

    .line 158
    .restart local v0    # "caller":Ljava/lang/String;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 172
    .end local v0    # "caller":Ljava/lang/String;
    :cond_5
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v5, "android"

    invoke-virtual {v3, v5, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_6

    .line 173
    return v8

    .line 175
    :cond_6
    const-string/jumbo v3, "EnterpriseLicenseService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "signature mismatched! caller : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    return v4

    .line 178
    :catch_0
    move-exception v2

    .line 179
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 182
    return v4
.end method

.method private deleteELMInfo(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1877
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v2, "pkgName"

    aput-object v2, v0, v3

    .line 1878
    .local v0, "sColumns":[Ljava/lang/String;
    new-array v1, v4, [Ljava/lang/String;

    aput-object p1, v1, v3

    .line 1879
    .local v1, "sValues":[Ljava/lang/String;
    sget-object v2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "LICENSE"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method private enforcePermission()V
    .locals 6

    .prologue
    .line 111
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    sget v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->MY_PID:I

    if-ne v3, v4, :cond_0

    .line 112
    return-void

    .line 116
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.sec.MDM_LICENSE_INTERNAL"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 119
    .local v0, "ex":Ljava/lang/SecurityException;
    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.sec.MDM_LICENSE_INTERNAL"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 120
    :catch_1
    move-exception v2

    .line 121
    .local v2, "innerEx":Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "finalMsg":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",android.permission.sec.MDM_LICENSE_INTERNAL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    :cond_1
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 1863
    sget-object v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPermissions(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p0, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 1547
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1548
    .local v2, "callingUid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    const/16 v8, 0x3e8

    if-eq v7, v8, :cond_0

    .line 1549
    new-instance v7, Ljava/lang/SecurityException;

    const-string/jumbo v8, "Caller is not SYSTEM_SERVICE OR SYSTEM APP"

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1552
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1553
    :cond_1
    return-object v9

    .line 1555
    :cond_2
    const/4 v5, 0x0

    .line 1556
    .local v5, "ro":Lcom/samsung/android/knox/license/RightsObject;
    const/4 v4, 0x0

    .line 1558
    .local v4, "perm":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    sget-object v7, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "LICENSE"

    .line 1559
    const-string/jumbo v9, "pkgName"

    .line 1560
    const-string/jumbo v10, "rightsObject"

    .line 1558
    invoke-virtual {v7, v8, v9, p0, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1562
    .local v1, "blob":[B
    if-eqz v1, :cond_3

    .line 1563
    const/4 v6, 0x0

    .line 1565
    .local v6, "roOld":Landroid/app/enterprise/license/RightsObject;
    :try_start_1
    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/app/enterprise/license/RightsObject;

    move-object v6, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1569
    .end local v6    # "roOld":Landroid/app/enterprise/license/RightsObject;
    :goto_0
    if-nez v6, :cond_4

    .line 1570
    :try_start_2
    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/samsung/android/knox/license/RightsObject;

    move-object v5, v0

    .line 1571
    .local v5, "ro":Lcom/samsung/android/knox/license/RightsObject;
    const-string/jumbo v7, "EnterpriseLicenseService"

    const-string/jumbo v8, "getPermissions() - deserializeObject"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    :goto_1
    if-eqz v5, :cond_3

    .line 1576
    invoke-virtual {v5}, Lcom/samsung/android/knox/license/RightsObject;->getPermissions()Ljava/util/List;

    move-result-object v4

    .line 1584
    .end local v1    # "blob":[B
    .end local v4    # "perm":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "ro":Lcom/samsung/android/knox/license/RightsObject;
    :cond_3
    :goto_2
    return-object v4

    .line 1566
    .restart local v1    # "blob":[B
    .restart local v4    # "perm":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v5, "ro":Lcom/samsung/android/knox/license/RightsObject;
    .restart local v6    # "roOld":Landroid/app/enterprise/license/RightsObject;
    :catch_0
    move-exception v3

    .line 1567
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "EnterpriseLicenseService"

    const-string/jumbo v8, "getPermissions() may new namespace "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1579
    .end local v1    # "blob":[B
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "ro":Lcom/samsung/android/knox/license/RightsObject;
    .end local v6    # "roOld":Landroid/app/enterprise/license/RightsObject;
    :catch_1
    move-exception v3

    .line 1580
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v7, "EnterpriseLicenseService"

    const-string/jumbo v8, "getPermissions() failed"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1573
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "blob":[B
    .restart local v5    # "ro":Lcom/samsung/android/knox/license/RightsObject;
    :cond_4
    :try_start_3
    invoke-virtual {v6}, Landroid/app/enterprise/license/RightsObject;->convertToNew()Lcom/samsung/android/knox/license/RightsObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v5

    .local v5, "ro":Lcom/samsung/android/knox/license/RightsObject;
    goto :goto_1
.end method

.method private declared-synchronized getUcmService()Lcom/samsung/android/knox/ucm/core/IUcmService;
    .locals 1

    .prologue
    monitor-enter p0

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mUcmeService:Lcom/samsung/android/knox/ucm/core/IUcmService;

    if-nez v0, :cond_0

    .line 138
    const-string/jumbo v0, "com.samsung.ucs.ucsservice"

    .line 137
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mUcmeService:Lcom/samsung/android/knox/ucm/core/IUcmService;

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mUcmeService:Lcom/samsung/android/knox/ucm/core/IUcmService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private resetELMInfo(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1868
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1869
    .local v1, "cv":Landroid/content/ContentValues;
    const/4 v0, 0x0

    .line 1870
    .local v0, "blob":[B
    const-string/jumbo v3, "rightsObject"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1871
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1872
    .local v2, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v3, "pkgName"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1873
    sget-object v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "LICENSE"

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v3

    return v3
.end method

.method public static updateAdminPermissions()V
    .locals 9

    .prologue
    .line 1813
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    sget v7, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->MY_PID:I

    if-eq v6, v7, :cond_0

    .line 1814
    new-instance v6, Ljava/lang/SecurityException;

    const-string/jumbo v7, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1818
    :cond_0
    const/4 v6, 0x1

    :try_start_0
    new-array v0, v6, [Ljava/lang/String;

    .line 1819
    .local v0, "columns":[Ljava/lang/String;
    const-string/jumbo v6, "pkgName"

    const/4 v7, 0x0

    aput-object v6, v0, v7

    .line 1821
    sget-object v6, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1822
    const-string/jumbo v7, "LICENSE"

    const/4 v8, 0x0

    .line 1821
    invoke-virtual {v6, v7, v0, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    .line 1824
    .local v5, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1812
    .end local v5    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_1
    :goto_0
    return-void

    .line 1825
    .restart local v5    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_2
    const/4 v1, 0x0

    .line 1826
    .local v1, "cv":Landroid/content/ContentValues;
    const/4 v4, 0x0

    .line 1827
    .local v4, "pkgName":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1829
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v4    # "pkgName":Ljava/lang/String;
    .local v3, "it":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1830
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 1831
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v6, "pkgName"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1833
    .local v4, "pkgName":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 1834
    const-string/jumbo v6, "EnterpriseLicenseService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateAdminPermissions() :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    sget-object v6, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v6, v4}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1840
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_0
    move-exception v2

    .line 1841
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "EnterpriseLicenseService"

    const-string/jumbo v7, "updateAdminPermissions() failed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized activateKnoxLicense(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 23
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "knoxLicenseKey"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 1215
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 1217
    new-instance v19, Ljava/lang/SecurityException;

    const-string/jumbo v20, "Operation not supported on profile"

    invoke-direct/range {v19 .. v20}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v19

    monitor-exit p0

    throw v19

    .line 1222
    :cond_0
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v15

    .line 1223
    .local v15, "uid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v18

    .line 1225
    .local v18, "userId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v5

    .line 1227
    .local v5, "callerPackage":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v16

    .line 1230
    .local v16, "token":J
    if-eqz p3, :cond_1

    :try_start_2
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 1231
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object p3

    .line 1232
    move-object/from16 v5, p3

    .line 1289
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_a

    .line 1320
    :cond_3
    const-string/jumbo v19, "EnterpriseLicenseService"

    const-string/jumbo v20, "package name is null"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1326
    :try_start_3
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1330
    :goto_0
    if-nez p3, :cond_d

    .line 1331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v12

    .line 1332
    .local v12, "pkgs":[Ljava/lang/String;
    if-eqz v12, :cond_f

    array-length v0, v12

    move/from16 v19, v0

    if-lez v19, :cond_f

    .line 1333
    const/16 v19, 0x0

    array-length v0, v12

    move/from16 v20, v0

    :goto_1
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_f

    aget-object v11, v12, v19

    .line 1334
    .local v11, "pkg":Ljava/lang/String;
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v21, "com.samsung.android.knox.intent.action.KNOX_LICENSE_STATUS"

    move-object/from16 v0, v21

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1335
    .local v9, "intent":Landroid/content/Intent;
    const-string/jumbo v21, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_STATUS"

    const-string/jumbo v22, "fail"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1336
    const-string/jumbo v21, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_ERROR_CODE"

    .line 1337
    const/16 v22, 0x12d

    .line 1336
    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1338
    const-string/jumbo v21, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_RESULT_TYPE"

    .line 1339
    const/16 v22, 0x320

    .line 1338
    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1340
    invoke-virtual {v9, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1342
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 1343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    sget-object v22, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1344
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1333
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 1235
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v11    # "pkg":Ljava/lang/String;
    .end local v12    # "pkgs":[Ljava/lang/String;
    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v12

    .line 1236
    .restart local v12    # "pkgs":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 1239
    .local v4, "approved":Z
    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 1240
    const/4 v4, 0x1

    .line 1241
    move-object/from16 v5, p3

    .line 1245
    :cond_5
    if-nez v4, :cond_6

    .line 1246
    const/16 v19, 0x0

    array-length v0, v12

    move/from16 v20, v0

    :goto_2
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_6

    aget-object v11, v12, v19

    .line 1247
    .restart local v11    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->checkPackage(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v21

    if-eqz v21, :cond_7

    .line 1248
    const/4 v4, 0x1

    .line 1254
    .end local v11    # "pkg":Ljava/lang/String;
    :cond_6
    if-nez v4, :cond_2

    .line 1256
    :try_start_5
    const-string/jumbo v19, "package"

    invoke-static/range {v19 .. v19}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v13

    .line 1257
    .local v13, "pm":Landroid/content/pm/IPackageManager;
    const/16 v19, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-interface {v13, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 1259
    .local v8, "info":Landroid/content/pm/PackageInfo;
    if-eqz v8, :cond_8

    .line 1261
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v19, "com.samsung.android.knox.intent.action.KNOX_LICENSE_STATUS"

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1262
    .restart local v9    # "intent":Landroid/content/Intent;
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_STATUS"

    const-string/jumbo v20, "fail"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1263
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_ERROR_CODE"

    .line 1264
    const/16 v20, 0xcc

    .line 1263
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1265
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_RESULT_TYPE"

    .line 1266
    const/16 v20, 0x320

    .line 1265
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1267
    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget-object v20, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1326
    :try_start_6
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    .line 1269
    return-void

    .line 1246
    .end local v8    # "info":Landroid/content/pm/PackageInfo;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v13    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v11    # "pkg":Ljava/lang/String;
    :cond_7
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 1271
    .end local v11    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1272
    .local v7, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 1275
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_8
    const/16 v19, 0x0

    array-length v0, v12

    move/from16 v20, v0

    :goto_3
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_9

    aget-object v11, v12, v19

    .line 1276
    .restart local v11    # "pkg":Ljava/lang/String;
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v21, "com.samsung.android.knox.intent.action.KNOX_LICENSE_STATUS"

    move-object/from16 v0, v21

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1277
    .restart local v9    # "intent":Landroid/content/Intent;
    const-string/jumbo v21, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_STATUS"

    const-string/jumbo v22, "fail"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1278
    const-string/jumbo v21, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_ERROR_CODE"

    .line 1279
    const/16 v22, 0xcc

    .line 1278
    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1280
    const-string/jumbo v21, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_RESULT_TYPE"

    .line 1281
    const/16 v22, 0x320

    .line 1280
    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1282
    invoke-virtual {v9, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    sget-object v22, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1275
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 1326
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v11    # "pkg":Ljava/lang/String;
    :cond_9
    :try_start_8
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    .line 1285
    return-void

    .line 1295
    .end local v4    # "approved":Z
    .end local v12    # "pkgs":[Ljava/lang/String;
    :cond_a
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyMap:Ljava/util/Map;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_b

    .line 1296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyMap:Ljava/util/Map;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1301
    :cond_b
    const-string/jumbo v19, "persona"

    invoke-static/range {v19 .. v19}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v14

    .line 1303
    .local v14, "pms":Lcom/samsung/android/knox/ISemPersonaManager;
    if-eqz v14, :cond_c

    move/from16 v0, v18

    invoke-interface {v14, v0}, Lcom/samsung/android/knox/ISemPersonaManager;->exists(I)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 1304
    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 1313
    .local v6, "dest":Landroid/os/UserHandle;
    :goto_4
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v19, "com.samsung.android.knox.intent.action.KNOX_LICENSE_REGISTRATION_INTERNAL"

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1314
    .local v10, "knoxSdkIntent":Landroid/content/Intent;
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_PACKAGENAME"

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1315
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_REQUEST_PACKAGENAME"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string/jumbo v20, "android.permission.sec.MDM_LICENSE_INTERNAL"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v10, v6, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1326
    :try_start_a
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    .line 1318
    return-void

    .line 1306
    .end local v6    # "dest":Landroid/os/UserHandle;
    .end local v10    # "knoxSdkIntent":Landroid/content/Intent;
    :cond_c
    :try_start_b
    new-instance v6, Landroid/os/UserHandle;

    move/from16 v0, v18

    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .restart local v6    # "dest":Landroid/os/UserHandle;
    goto :goto_4

    .line 1322
    .end local v6    # "dest":Landroid/os/UserHandle;
    .end local v14    # "pms":Lcom/samsung/android/knox/ISemPersonaManager;
    :catch_1
    move-exception v7

    .line 1323
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_c
    const-string/jumbo v19, "EnterpriseLicenseService"

    const-string/jumbo v20, "activateKnoxLicense() failed."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1326
    :try_start_d
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 1325
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v19

    .line 1326
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1325
    throw v19

    .line 1348
    :cond_d
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v19, "com.samsung.android.knox.intent.action.KNOX_LICENSE_STATUS"

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1349
    .restart local v9    # "intent":Landroid/content/Intent;
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_STATUS"

    const-string/jumbo v20, "fail"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1350
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_ERROR_CODE"

    .line 1351
    const/16 v20, 0x12d

    .line 1350
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1352
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_RESULT_TYPE"

    .line 1353
    const/16 v20, 0x320

    .line 1352
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1355
    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_e

    .line 1356
    invoke-virtual {v9, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1357
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 1358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget-object v20, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1359
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1362
    :cond_e
    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1363
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 1364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget-object v20, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1365
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .end local v9    # "intent":Landroid/content/Intent;
    :cond_f
    monitor-exit p0

    .line 1213
    return-void
.end method

.method public declared-synchronized activateKnoxLicenseForUMC(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "knoxLicenseKey"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 1375
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->activateKnoxLicense(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1374
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized activateLicense(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 24
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "licenseKey"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "pkgVer"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 1034
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1036
    new-instance v20, Ljava/lang/SecurityException;

    const-string/jumbo v21, "Operation not supported on profile"

    invoke-direct/range {v20 .. v21}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v20

    monitor-exit p0

    throw v20

    .line 1040
    :cond_0
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v18

    .line 1041
    .local v18, "uid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v19

    .line 1043
    .local v19, "userId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v5

    .line 1045
    .local v5, "callerPackage":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v16

    .line 1047
    .local v16, "token":J
    if-eqz p3, :cond_1

    :try_start_2
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 1048
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object p3

    .line 1049
    move-object/from16 v5, p3

    .line 1106
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_a

    .line 1150
    :cond_3
    const-string/jumbo v20, "EnterpriseLicenseService"

    const-string/jumbo v21, "package name is null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1156
    :try_start_3
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1160
    :goto_0
    if-nez p3, :cond_f

    .line 1161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v13

    .line 1162
    .local v13, "pkgs":[Ljava/lang/String;
    if-eqz v13, :cond_11

    array-length v0, v13

    move/from16 v20, v0

    if-lez v20, :cond_11

    .line 1163
    const/16 v20, 0x0

    array-length v0, v13

    move/from16 v21, v0

    :goto_1
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_11

    aget-object v11, v13, v20

    .line 1164
    .local v11, "pkg":Ljava/lang/String;
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v22, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    move-object/from16 v0, v22

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1165
    .local v9, "intent":Landroid/content/Intent;
    const-string/jumbo v22, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string/jumbo v23, "fail"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1166
    const-string/jumbo v22, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    .line 1167
    const/16 v23, 0x12d

    .line 1166
    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1168
    const-string/jumbo v22, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    .line 1169
    const/16 v23, 0x320

    .line 1168
    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1170
    invoke-virtual {v9, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1171
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 1172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    sget-object v23, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1173
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1163
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 1052
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v11    # "pkg":Ljava/lang/String;
    .end local v13    # "pkgs":[Ljava/lang/String;
    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v13

    .line 1053
    .restart local v13    # "pkgs":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 1056
    .local v4, "approved":Z
    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 1057
    const/4 v4, 0x1

    .line 1058
    move-object/from16 v5, p3

    .line 1062
    :cond_5
    if-nez v4, :cond_6

    .line 1063
    const/16 v20, 0x0

    array-length v0, v13

    move/from16 v21, v0

    :goto_2
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    aget-object v11, v13, v20

    .line 1064
    .restart local v11    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->checkPackage(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v22

    if-eqz v22, :cond_7

    .line 1065
    const/4 v4, 0x1

    .line 1071
    .end local v11    # "pkg":Ljava/lang/String;
    :cond_6
    if-nez v4, :cond_2

    .line 1073
    :try_start_5
    const-string/jumbo v20, "package"

    invoke-static/range {v20 .. v20}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v14

    .line 1074
    .local v14, "pm":Landroid/content/pm/IPackageManager;
    const/16 v20, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-interface {v14, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 1076
    .local v8, "info":Landroid/content/pm/PackageInfo;
    if-eqz v8, :cond_8

    .line 1078
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v20, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1079
    .restart local v9    # "intent":Landroid/content/Intent;
    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string/jumbo v21, "fail"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1080
    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    .line 1081
    const/16 v21, 0xcc

    .line 1080
    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1082
    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    .line 1083
    const/16 v21, 0x320

    .line 1082
    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1084
    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1156
    :try_start_6
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    .line 1086
    return-void

    .line 1063
    .end local v8    # "info":Landroid/content/pm/PackageInfo;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v14    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v11    # "pkg":Ljava/lang/String;
    :cond_7
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 1088
    .end local v11    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1089
    .local v7, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 1092
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_8
    const/16 v20, 0x0

    array-length v0, v13

    move/from16 v21, v0

    :goto_3
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_9

    aget-object v11, v13, v20

    .line 1093
    .restart local v11    # "pkg":Ljava/lang/String;
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v22, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    move-object/from16 v0, v22

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1094
    .restart local v9    # "intent":Landroid/content/Intent;
    const-string/jumbo v22, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string/jumbo v23, "fail"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1095
    const-string/jumbo v22, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    .line 1096
    const/16 v23, 0xcc

    .line 1095
    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1097
    const-string/jumbo v22, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    .line 1098
    const/16 v23, 0x320

    .line 1097
    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1099
    invoke-virtual {v9, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    sget-object v23, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1092
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 1156
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v11    # "pkg":Ljava/lang/String;
    :cond_9
    :try_start_8
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    .line 1102
    return-void

    .line 1112
    .end local v4    # "approved":Z
    .end local v13    # "pkgs":[Ljava/lang/String;
    :cond_a
    const/4 v12, 0x0

    .line 1113
    .local v12, "pkgVersion":Ljava/lang/String;
    if-eqz p4, :cond_d

    .line 1114
    move-object/from16 v12, p4

    .line 1124
    .end local v12    # "pkgVersion":Ljava/lang/String;
    :cond_b
    :goto_4
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mELMKeyMap:Ljava/util/Map;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_c

    .line 1125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mELMKeyMap:Ljava/util/Map;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    :cond_c
    const-string/jumbo v20, "persona"

    invoke-static/range {v20 .. v20}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v15

    .line 1132
    .local v15, "pms":Lcom/samsung/android/knox/ISemPersonaManager;
    if-eqz v15, :cond_e

    move/from16 v0, v19

    invoke-interface {v15, v0}, Lcom/samsung/android/knox/ISemPersonaManager;->exists(I)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 1133
    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 1142
    .local v6, "dest":Landroid/os/UserHandle;
    :goto_5
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v20, "com.samsung.android.knox.intent.action.LICENSE_REGISTRATION_INTERNAL"

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1143
    .local v10, "knoxSdkIntent":Landroid/content/Intent;
    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1144
    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGEVERSION"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1145
    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.LICENSE_DATA_REQUEST_PACKAGENAME"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string/jumbo v21, "android.permission.sec.MDM_LICENSE_INTERNAL"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v10, v6, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1156
    :try_start_a
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    .line 1148
    return-void

    .line 1117
    .end local v6    # "dest":Landroid/os/UserHandle;
    .end local v10    # "knoxSdkIntent":Landroid/content/Intent;
    .end local v15    # "pms":Lcom/samsung/android/knox/ISemPersonaManager;
    .restart local v12    # "pkgVersion":Ljava/lang/String;
    :cond_d
    :try_start_b
    const-string/jumbo v20, "package"

    invoke-static/range {v20 .. v20}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v14

    .line 1118
    .restart local v14    # "pm":Landroid/content/pm/IPackageManager;
    const/16 v20, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-interface {v14, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 1119
    .restart local v8    # "info":Landroid/content/pm/PackageInfo;
    if-eqz v8, :cond_b

    .line 1120
    iget-object v12, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .local v12, "pkgVersion":Ljava/lang/String;
    goto/16 :goto_4

    .line 1135
    .end local v8    # "info":Landroid/content/pm/PackageInfo;
    .end local v12    # "pkgVersion":Ljava/lang/String;
    .end local v14    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v15    # "pms":Lcom/samsung/android/knox/ISemPersonaManager;
    :cond_e
    new-instance v6, Landroid/os/UserHandle;

    move/from16 v0, v19

    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .restart local v6    # "dest":Landroid/os/UserHandle;
    goto :goto_5

    .line 1152
    .end local v6    # "dest":Landroid/os/UserHandle;
    .end local v15    # "pms":Lcom/samsung/android/knox/ISemPersonaManager;
    :catch_1
    move-exception v7

    .line 1153
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_c
    const-string/jumbo v20, "EnterpriseLicenseService"

    const-string/jumbo v21, "activateLicense() failed."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1156
    :try_start_d
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 1155
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v20

    .line 1156
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1155
    throw v20

    .line 1177
    :cond_f
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v20, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1178
    .restart local v9    # "intent":Landroid/content/Intent;
    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string/jumbo v21, "fail"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1179
    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    .line 1180
    const/16 v21, 0x12d

    .line 1179
    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1181
    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    .line 1182
    const/16 v21, 0x320

    .line 1181
    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1184
    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_10

    .line 1185
    invoke-virtual {v9, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1186
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 1187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1188
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1191
    :cond_10
    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1192
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 1193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1194
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .end local v9    # "intent":Landroid/content/Intent;
    :cond_11
    monitor-exit p0

    .line 1032
    return-void
.end method

.method public declared-synchronized activateLicenseForUMC(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "licenseKey"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "pkgVersion"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 1204
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->activateLicense(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1203
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deActivateKnoxLicense(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 23
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "knoxLicenseKey"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 1386
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 1388
    new-instance v19, Ljava/lang/SecurityException;

    const-string/jumbo v20, "Operation not supported on profile"

    invoke-direct/range {v19 .. v20}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v19

    monitor-exit p0

    throw v19

    .line 1393
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string/jumbo v20, "com.sec.enterprise.knox.permission.KNOX_DEACTIVATE_LICENSE"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v15

    .line 1396
    .local v15, "uid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v18

    .line 1398
    .local v18, "userId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v5

    .line 1400
    .local v5, "callerPackage":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v16

    .line 1403
    .local v16, "token":J
    if-eqz p3, :cond_1

    :try_start_2
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 1404
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object p3

    .line 1405
    move-object/from16 v5, p3

    .line 1460
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_a

    .line 1492
    :cond_3
    const-string/jumbo v19, "EnterpriseLicenseService"

    const-string/jumbo v20, "package name is null"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1498
    :try_start_3
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1502
    :goto_0
    if-nez p3, :cond_d

    .line 1503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v12

    .line 1504
    .local v12, "pkgs":[Ljava/lang/String;
    if-eqz v12, :cond_f

    array-length v0, v12

    move/from16 v19, v0

    if-lez v19, :cond_f

    .line 1505
    const/16 v19, 0x0

    array-length v0, v12

    move/from16 v20, v0

    :goto_1
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_f

    aget-object v11, v12, v19

    .line 1506
    .local v11, "pkg":Ljava/lang/String;
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v21, "com.samsung.android.knox.intent.action.KNOX_LICENSE_STATUS"

    move-object/from16 v0, v21

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1507
    .local v9, "intent":Landroid/content/Intent;
    const-string/jumbo v21, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_STATUS"

    const-string/jumbo v22, "fail"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1508
    const-string/jumbo v21, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_ERROR_CODE"

    .line 1509
    const/16 v22, 0x12d

    .line 1508
    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1510
    const-string/jumbo v21, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_RESULT_TYPE"

    .line 1511
    const/16 v22, 0x322

    .line 1510
    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1512
    invoke-virtual {v9, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1514
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 1515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    sget-object v22, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1516
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1505
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 1407
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v11    # "pkg":Ljava/lang/String;
    .end local v12    # "pkgs":[Ljava/lang/String;
    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v12

    .line 1408
    .restart local v12    # "pkgs":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 1411
    .local v4, "approved":Z
    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 1412
    const/4 v4, 0x1

    .line 1413
    move-object/from16 v5, p3

    .line 1417
    :cond_5
    if-nez v4, :cond_6

    .line 1418
    const/16 v19, 0x0

    array-length v0, v12

    move/from16 v20, v0

    :goto_2
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_6

    aget-object v11, v12, v19

    .line 1419
    .restart local v11    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->checkPackage(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v21

    if-eqz v21, :cond_7

    .line 1420
    const/4 v4, 0x1

    .line 1426
    .end local v11    # "pkg":Ljava/lang/String;
    :cond_6
    if-nez v4, :cond_2

    .line 1428
    :try_start_5
    const-string/jumbo v19, "package"

    invoke-static/range {v19 .. v19}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v13

    .line 1429
    .local v13, "pm":Landroid/content/pm/IPackageManager;
    const/16 v19, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-interface {v13, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 1430
    .local v8, "info":Landroid/content/pm/PackageInfo;
    if-eqz v8, :cond_8

    .line 1432
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v19, "com.samsung.android.knox.intent.action.KNOX_LICENSE_STATUS"

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1433
    .restart local v9    # "intent":Landroid/content/Intent;
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_STATUS"

    const-string/jumbo v20, "fail"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1434
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_ERROR_CODE"

    .line 1435
    const/16 v20, 0xcc

    .line 1434
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1436
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_RESULT_TYPE"

    .line 1437
    const/16 v20, 0x322

    .line 1436
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1438
    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget-object v20, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1498
    :try_start_6
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    .line 1440
    return-void

    .line 1418
    .end local v8    # "info":Landroid/content/pm/PackageInfo;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v13    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v11    # "pkg":Ljava/lang/String;
    :cond_7
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 1442
    .end local v11    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1443
    .local v7, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 1446
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_8
    const/16 v19, 0x0

    array-length v0, v12

    move/from16 v20, v0

    :goto_3
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_9

    aget-object v11, v12, v19

    .line 1447
    .restart local v11    # "pkg":Ljava/lang/String;
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v21, "com.samsung.android.knox.intent.action.KNOX_LICENSE_STATUS"

    move-object/from16 v0, v21

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1448
    .restart local v9    # "intent":Landroid/content/Intent;
    const-string/jumbo v21, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_STATUS"

    const-string/jumbo v22, "fail"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1449
    const-string/jumbo v21, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_ERROR_CODE"

    .line 1450
    const/16 v22, 0xcc

    .line 1449
    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1451
    const-string/jumbo v21, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_RESULT_TYPE"

    .line 1452
    const/16 v22, 0x322

    .line 1451
    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1453
    invoke-virtual {v9, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    sget-object v22, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1446
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 1498
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v11    # "pkg":Ljava/lang/String;
    :cond_9
    :try_start_8
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    .line 1456
    return-void

    .line 1466
    .end local v4    # "approved":Z
    .end local v12    # "pkgs":[Ljava/lang/String;
    :cond_a
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyDeactivateMap:Ljava/util/Map;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_b

    .line 1467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyDeactivateMap:Ljava/util/Map;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1472
    :cond_b
    const-string/jumbo v19, "persona"

    invoke-static/range {v19 .. v19}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v14

    .line 1474
    .local v14, "pms":Lcom/samsung/android/knox/ISemPersonaManager;
    if-eqz v14, :cond_c

    move/from16 v0, v18

    invoke-interface {v14, v0}, Lcom/samsung/android/knox/ISemPersonaManager;->exists(I)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 1475
    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 1484
    .local v6, "dest":Landroid/os/UserHandle;
    :goto_4
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v19, "com.samsung.android.knox.intent.action.KNOX_LICENSE_DEACTIVATION_INTERNAL"

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1485
    .local v10, "knoxSdkIntent":Landroid/content/Intent;
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_PACKAGENAME"

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1486
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_REQUEST_PACKAGENAME"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string/jumbo v20, "android.permission.sec.MDM_LICENSE_INTERNAL"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v10, v6, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1498
    :try_start_a
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    .line 1490
    return-void

    .line 1477
    .end local v6    # "dest":Landroid/os/UserHandle;
    .end local v10    # "knoxSdkIntent":Landroid/content/Intent;
    :cond_c
    :try_start_b
    new-instance v6, Landroid/os/UserHandle;

    move/from16 v0, v18

    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .restart local v6    # "dest":Landroid/os/UserHandle;
    goto :goto_4

    .line 1494
    .end local v6    # "dest":Landroid/os/UserHandle;
    .end local v14    # "pms":Lcom/samsung/android/knox/ISemPersonaManager;
    :catch_1
    move-exception v7

    .line 1495
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_c
    const-string/jumbo v19, "EnterpriseLicenseService"

    const-string/jumbo v20, "deActivateKnoxLicense() failed."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1498
    :try_start_d
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 1497
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v19

    .line 1498
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1497
    throw v19

    .line 1520
    :cond_d
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v19, "com.samsung.android.knox.intent.action.KNOX_LICENSE_STATUS"

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1521
    .restart local v9    # "intent":Landroid/content/Intent;
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_STATUS"

    const-string/jumbo v20, "fail"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1522
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_ERROR_CODE"

    .line 1523
    const/16 v20, 0x12d

    .line 1522
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1524
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_RESULT_TYPE"

    .line 1525
    const/16 v20, 0x322

    .line 1524
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1527
    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_e

    .line 1528
    invoke-virtual {v9, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1529
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 1530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget-object v20, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1531
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1534
    :cond_e
    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1535
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 1536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget-object v20, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1537
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .end local v9    # "intent":Landroid/content/Intent;
    :cond_f
    monitor-exit p0

    .line 1384
    return-void
.end method

.method public deleteAllApiCallData()Z
    .locals 3

    .prologue
    .line 833
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 836
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/license/LicenseLog;->deleteAllLog()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 837
    :catch_0
    move-exception v0

    .line 838
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "EnterpriseLicenseService"

    const-string/jumbo v2, "deleteAllApiCallData() failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 841
    const/4 v1, 0x0

    return v1
.end method

.method public deleteApiCallData(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/Error;)Z
    .locals 8
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "instanceId"    # Ljava/lang/String;
    .param p3, "error"    # Lcom/samsung/android/knox/license/Error;

    .prologue
    const/4 v7, 0x0

    .line 762
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 764
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 765
    :cond_0
    return v7

    .line 769
    :cond_1
    const/4 v3, 0x0

    .line 771
    .local v3, "pkgName":Ljava/lang/String;
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 772
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v5, "instanceId"

    invoke-virtual {v1, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    const-string/jumbo v0, "pkgName"

    .line 775
    .local v0, "column":Ljava/lang/String;
    sget-object v5, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "LICENSE"

    invoke-virtual {v5, v6, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v4

    .line 778
    .local v4, "result":Landroid/content/ContentValues;
    if-nez v4, :cond_2

    .line 779
    const-string/jumbo v5, "EnterpriseLicenseService"

    const-string/jumbo v6, "deleteApiCallData(): result is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    return v7

    .line 783
    :cond_2
    const-string/jumbo v5, "pkgName"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 785
    .local v3, "pkgName":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 786
    const-string/jumbo v5, "EnterpriseLicenseService"

    const-string/jumbo v6, "deleteApiCallData(): Record does not exist"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    return v7

    .line 791
    :cond_3
    invoke-static {v3}, Lcom/android/server/enterprise/license/LicenseLog;->deleteLog(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    return v5

    .line 792
    .end local v0    # "column":Ljava/lang/String;
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "result":Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    .line 793
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "EnterpriseLicenseService"

    const-string/jumbo v6, "deleteApiCallData() failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 797
    return v7
.end method

.method public deleteApiCallDataByAdmin(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 810
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 812
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 813
    :cond_0
    return v3

    .line 816
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/android/server/enterprise/license/LicenseLog;->deleteLog(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 817
    :catch_0
    move-exception v0

    .line 818
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "EnterpriseLicenseService"

    const-string/jumbo v2, "deleteApiCallDataByAdmin() failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 821
    return v3
.end method

.method public deleteLicense(Ljava/lang/String;)Z
    .locals 11
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 1679
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 1680
    const/4 v5, 0x0

    .line 1681
    .local v5, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1683
    .local v6, "token":J
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_1

    .line 1715
    :cond_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1684
    return v10

    .line 1686
    :cond_1
    const/4 v3, 0x0

    .line 1688
    .local v3, "pkgName":Ljava/lang/String;
    :try_start_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1689
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v8, "instanceId"

    invoke-virtual {v1, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    const-string/jumbo v0, "pkgName"

    .line 1692
    .local v0, "column":Ljava/lang/String;
    sget-object v8, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "LICENSE"

    invoke-virtual {v8, v9, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v4

    .line 1694
    .local v4, "result":Landroid/content/ContentValues;
    if-nez v4, :cond_2

    .line 1695
    const-string/jumbo v8, "EnterpriseLicenseService"

    const-string/jumbo v9, "deleteLicense(): result is null"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1715
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1696
    return v10

    .line 1699
    :cond_2
    :try_start_2
    const-string/jumbo v8, "pkgName"

    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1701
    .local v3, "pkgName":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 1702
    const-string/jumbo v8, "EnterpriseLicenseService"

    const-string/jumbo v9, "deleteLicense(): pkgName is null, Record does not exist"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1715
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1703
    return v10

    .line 1706
    :cond_3
    :try_start_3
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->deleteELMInfo(Ljava/lang/String;)Z

    move-result v5

    .line 1707
    .local v5, "ret":Z
    if-eqz v5, :cond_4

    .line 1709
    sget-object v8, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v8, v3}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1715
    :cond_4
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1717
    .end local v0    # "column":Ljava/lang/String;
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "result":Landroid/content/ContentValues;
    .end local v5    # "ret":Z
    :goto_0
    return v5

    .line 1711
    :catch_0
    move-exception v2

    .line 1712
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v8, "EnterpriseLicenseService"

    const-string/jumbo v9, "deleteLicense() failed"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1715
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1714
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 1715
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1714
    throw v8
.end method

.method public deleteLicenseByAdmin(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1726
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 1727
    const/4 v1, 0x0

    .line 1728
    .local v1, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1730
    .local v2, "token":J
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 1731
    :cond_0
    const/4 v4, 0x0

    .line 1741
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1731
    return v4

    .line 1733
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->deleteELMInfo(Ljava/lang/String;)Z

    move-result v1

    .line 1734
    .local v1, "ret":Z
    if-eqz v1, :cond_2

    .line 1736
    sget-object v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, p1}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1741
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1743
    .end local v1    # "ret":Z
    :goto_0
    return v1

    .line 1738
    :catch_0
    move-exception v0

    .line 1739
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v4, "EnterpriseLicenseService"

    const-string/jumbo v5, "deleteLicenseByAdmin() failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1741
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1740
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 1741
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1740
    throw v4
.end method

.method public getAllLicenseInfo()[Lcom/samsung/android/knox/license/LicenseInfo;
    .locals 15

    .prologue
    .line 988
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 989
    const/4 v7, 0x0

    .line 990
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/knox/license/LicenseInfo;>;"
    const/4 v5, 0x0

    .line 993
    .local v5, "lInfo":Lcom/samsung/android/knox/license/LicenseInfo;
    const/4 v12, 0x3

    :try_start_0
    new-array v0, v12, [Ljava/lang/String;

    .line 994
    .local v0, "columns":[Ljava/lang/String;
    const-string/jumbo v12, "pkgName"

    const/4 v13, 0x0

    aput-object v12, v0, v13

    .line 995
    const-string/jumbo v12, "instanceId"

    const/4 v13, 0x1

    aput-object v12, v0, v13

    .line 996
    const-string/jumbo v12, "pkgVersion"

    const/4 v13, 0x2

    aput-object v12, v0, v13

    .line 998
    sget-object v12, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 999
    const-string/jumbo v13, "LICENSE"

    const/4 v14, 0x0

    .line 998
    invoke-virtual {v12, v13, v0, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v11

    .line 1001
    .local v11, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v11, :cond_0

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1024
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v5    # "lInfo":Lcom/samsung/android/knox/license/LicenseInfo;
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/knox/license/LicenseInfo;>;"
    .end local v11    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_0
    :goto_0
    const/4 v12, 0x0

    return-object v12

    .line 1002
    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v5    # "lInfo":Lcom/samsung/android/knox/license/LicenseInfo;
    .restart local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/knox/license/LicenseInfo;>;"
    .restart local v11    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_1
    const/4 v1, 0x0

    .line 1003
    .local v1, "cv":Landroid/content/ContentValues;
    const/4 v9, 0x0

    .line 1004
    .local v9, "packageName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1005
    .local v3, "instanceId":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1006
    .local v10, "packageVersion":Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1007
    .local v8, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/knox/license/LicenseInfo;>;"
    :try_start_1
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/knox/license/LicenseInfo;>;"
    move-result-object v4

    .local v4, "it":Ljava/util/Iterator;
    move-object v6, v5

    .line 1009
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "instanceId":Ljava/lang/String;
    .end local v5    # "lInfo":Lcom/samsung/android/knox/license/LicenseInfo;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "packageVersion":Ljava/lang/String;
    .local v6, "lInfo":Lcom/samsung/android/knox/license/LicenseInfo;
    :goto_1
    :try_start_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1010
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 1011
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v12, "pkgName"

    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1012
    .local v9, "packageName":Ljava/lang/String;
    const-string/jumbo v12, "instanceId"

    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1013
    .local v3, "instanceId":Ljava/lang/String;
    const-string/jumbo v12, "pkgVersion"

    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1014
    .local v10, "packageVersion":Ljava/lang/String;
    new-instance v5, Lcom/samsung/android/knox/license/LicenseInfo;

    invoke-direct {v5, v9, v3, v10}, Lcom/samsung/android/knox/license/LicenseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1015
    .end local v6    # "lInfo":Lcom/samsung/android/knox/license/LicenseInfo;
    .local v5, "lInfo":Lcom/samsung/android/knox/license/LicenseInfo;
    :try_start_3
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v6, v5

    .end local v5    # "lInfo":Lcom/samsung/android/knox/license/LicenseInfo;
    .restart local v6    # "lInfo":Lcom/samsung/android/knox/license/LicenseInfo;
    goto :goto_1

    .line 1017
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "instanceId":Ljava/lang/String;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "packageVersion":Ljava/lang/String;
    :cond_2
    if-eqz v8, :cond_3

    :try_start_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_3

    .line 1018
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Lcom/samsung/android/knox/license/LicenseInfo;

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lcom/samsung/android/knox/license/LicenseInfo;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    return-object v12

    :cond_3
    move-object v5, v6

    .end local v6    # "lInfo":Lcom/samsung/android/knox/license/LicenseInfo;
    .restart local v5    # "lInfo":Lcom/samsung/android/knox/license/LicenseInfo;
    move-object v7, v8

    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/knox/license/LicenseInfo;>;"
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/knox/license/LicenseInfo;>;"
    goto :goto_0

    .line 1020
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v4    # "it":Ljava/util/Iterator;
    .end local v11    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .local v5, "lInfo":Lcom/samsung/android/knox/license/LicenseInfo;
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/knox/license/LicenseInfo;>;"
    :catch_0
    move-exception v2

    .line 1021
    .end local v5    # "lInfo":Lcom/samsung/android/knox/license/LicenseInfo;
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/knox/license/LicenseInfo;>;"
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    const-string/jumbo v12, "EnterpriseLicenseService"

    const-string/jumbo v13, "getLicenseInfo() failed"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1020
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/knox/license/LicenseInfo;>;"
    .restart local v11    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v7, v8

    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/knox/license/LicenseInfo;>;"
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/knox/license/LicenseInfo;>;"
    goto :goto_2

    .end local v2    # "e":Ljava/lang/Exception;
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/knox/license/LicenseInfo;>;"
    .restart local v4    # "it":Ljava/util/Iterator;
    .restart local v6    # "lInfo":Lcom/samsung/android/knox/license/LicenseInfo;
    .restart local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/knox/license/LicenseInfo;>;"
    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v5, v6

    .end local v6    # "lInfo":Lcom/samsung/android/knox/license/LicenseInfo;
    .local v5, "lInfo":Lcom/samsung/android/knox/license/LicenseInfo;
    move-object v7, v8

    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/knox/license/LicenseInfo;>;"
    .restart local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/knox/license/LicenseInfo;>;"
    goto :goto_2
.end method

.method public getApiCallData(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 8
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 714
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 716
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 717
    :cond_0
    return-object v7

    .line 721
    :cond_1
    const/4 v3, 0x0

    .line 722
    .local v3, "pkgName":Ljava/lang/String;
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 723
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v5, "instanceId"

    invoke-virtual {v1, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    const-string/jumbo v0, "pkgName"

    .line 726
    .local v0, "column":Ljava/lang/String;
    sget-object v5, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "LICENSE"

    invoke-virtual {v5, v6, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v4

    .line 728
    .local v4, "result":Landroid/content/ContentValues;
    if-nez v4, :cond_2

    .line 729
    const-string/jumbo v5, "EnterpriseLicenseService"

    const-string/jumbo v6, "getApiCallData(): result is null, Record does not exist"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    return-object v7

    .line 733
    :cond_2
    const-string/jumbo v5, "pkgName"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 735
    .local v3, "pkgName":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 736
    const-string/jumbo v5, "EnterpriseLicenseService"

    const-string/jumbo v6, "getApiCallData(): pkgName is null, Record does not exist"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    return-object v7

    .line 741
    :cond_3
    invoke-static {v3}, Lcom/android/server/enterprise/license/LicenseLog;->getLog(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 742
    .end local v0    # "column":Ljava/lang/String;
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "result":Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    .line 743
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "EnterpriseLicenseService"

    const-string/jumbo v6, "getApiCallData() failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 747
    return-object v7
.end method

.method public getApiCallDataByAdmin(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 854
    iget-object v4, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 856
    new-instance v4, Ljava/lang/SecurityException;

    const-string/jumbo v5, "Operation not supported on profile"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 860
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "com.samsung.android.knox.permission.KNOX_LICENSE_LOG"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 873
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 874
    :cond_1
    return-object v7

    .line 861
    :catch_0
    move-exception v1

    .line 863
    .local v1, "ex":Ljava/lang/SecurityException;
    :try_start_1
    iget-object v4, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.sec.MDM_LICENSE_LOG"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 864
    :catch_1
    move-exception v3

    .line 865
    .local v3, "innerEx":Ljava/lang/SecurityException;
    invoke-virtual {v3}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 867
    .local v2, "finalMsg":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 868
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",com.samsung.android.knox.permission.KNOX_LICENSE_LOG"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 869
    :cond_2
    new-instance v4, Ljava/lang/SecurityException;

    invoke-direct {v4, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 878
    .end local v1    # "ex":Ljava/lang/SecurityException;
    .end local v2    # "finalMsg":Ljava/lang/String;
    .end local v3    # "innerEx":Ljava/lang/SecurityException;
    :cond_3
    :try_start_2
    invoke-static {p2}, Lcom/android/server/enterprise/license/LicenseLog;->getLog(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    return-object v4

    .line 879
    :catch_2
    move-exception v0

    .line 880
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "EnterpriseLicenseService"

    const-string/jumbo v5, "getApiCallDataByAdmin() failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    return-object v7
.end method

.method public getELMLicenseKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1752
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 1754
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1755
    :cond_0
    return-object v4

    .line 1757
    :cond_1
    const/4 v2, 0x0

    .line 1759
    .local v2, "elmKey":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mELMKeyMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 1760
    .local v2, "elmKey":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mELMKeyMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1765
    .end local v2    # "elmKey":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 1761
    :catch_0
    move-exception v1

    .line 1762
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "EnterpriseLicenseService"

    const-string/jumbo v4, "getELMLicenseKey() failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getELMPermissions(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1589
    :try_start_0
    invoke-static {p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1590
    :catch_0
    move-exception v0

    .line 1591
    .local v0, "e":Ljava/lang/SecurityException;
    const-string/jumbo v1, "EnterpriseLicenseService"

    const-string/jumbo v2, "getELMPermissions() failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    const/4 v1, 0x0

    return-object v1
.end method

.method public getInstanceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1891
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 1892
    const/4 v4, 0x0

    .line 1894
    .local v4, "instanceId":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1895
    :cond_0
    return-object v4

    .line 1898
    :cond_1
    const/4 v8, 0x2

    :try_start_0
    new-array v0, v8, [Ljava/lang/String;

    .line 1899
    .local v0, "columns":[Ljava/lang/String;
    const-string/jumbo v8, "pkgName"

    const/4 v9, 0x0

    aput-object v8, v0, v9

    .line 1900
    const-string/jumbo v8, "instanceId"

    const/4 v9, 0x1

    aput-object v8, v0, v9

    .line 1902
    sget-object v8, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1903
    const-string/jumbo v9, "LICENSE"

    const/4 v10, 0x0

    .line 1902
    invoke-virtual {v8, v9, v0, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v7

    .line 1905
    .local v7, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v7, :cond_2

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1924
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v4    # "instanceId":Ljava/lang/String;
    .end local v7    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_2
    :goto_0
    return-object v4

    .line 1906
    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v4    # "instanceId":Ljava/lang/String;
    .restart local v7    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_3
    const/4 v1, 0x0

    .line 1907
    .local v1, "cv":Landroid/content/ContentValues;
    const/4 v3, 0x0

    .line 1908
    .local v3, "instId":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1909
    .local v6, "pkgName":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1911
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v4    # "instanceId":Ljava/lang/String;
    .end local v6    # "pkgName":Ljava/lang/String;
    .local v5, "it":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1912
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 1913
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v8, "pkgName"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1915
    .local v6, "pkgName":Ljava/lang/String;
    if-eqz v6, :cond_4

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1916
    const-string/jumbo v8, "instanceId"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .local v4, "instanceId":Ljava/lang/String;
    goto :goto_1

    .line 1920
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "instId":Ljava/lang/String;
    .end local v4    # "instanceId":Ljava/lang/String;
    .end local v5    # "it":Ljava/util/Iterator;
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v7    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_0
    move-exception v2

    .line 1921
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "EnterpriseLicenseService"

    const-string/jumbo v9, "getInstanceId() failed"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getKLMLicenseKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1774
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 1776
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1777
    :cond_0
    return-object v4

    .line 1779
    :cond_1
    const/4 v2, 0x0

    .line 1781
    .local v2, "klmKey":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 1782
    .local v2, "klmKey":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1787
    .end local v2    # "klmKey":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 1783
    :catch_0
    move-exception v1

    .line 1784
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "EnterpriseLicenseService"

    const-string/jumbo v4, "getKLMLicenseKey() failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getKLMLicenseKeyForDeactivation(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1796
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 1798
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1799
    :cond_0
    return-object v4

    .line 1801
    :cond_1
    const/4 v2, 0x0

    .line 1803
    .local v2, "klmKey":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyDeactivateMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 1804
    .local v2, "klmKey":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyDeactivateMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1809
    .end local v2    # "klmKey":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 1805
    :catch_0
    move-exception v1

    .line 1806
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "EnterpriseLicenseService"

    const-string/jumbo v4, "getKLMLicenseKey() failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getLicenseInfo(Ljava/lang/String;)Lcom/samsung/android/knox/license/LicenseInfo;
    .locals 13
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 893
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 894
    const/4 v5, 0x0

    .line 896
    .local v5, "lInfo":Lcom/samsung/android/knox/license/LicenseInfo;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 897
    :cond_0
    return-object v5

    .line 900
    :cond_1
    const/4 v10, 0x3

    :try_start_0
    new-array v0, v10, [Ljava/lang/String;

    .line 901
    .local v0, "columns":[Ljava/lang/String;
    const-string/jumbo v10, "pkgName"

    const/4 v11, 0x0

    aput-object v10, v0, v11

    .line 902
    const-string/jumbo v10, "instanceId"

    const/4 v11, 0x1

    aput-object v10, v0, v11

    .line 903
    const-string/jumbo v10, "pkgVersion"

    const/4 v11, 0x2

    aput-object v10, v0, v11

    .line 905
    sget-object v10, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 906
    const-string/jumbo v11, "LICENSE"

    const/4 v12, 0x0

    .line 905
    invoke-virtual {v10, v11, v0, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v9

    .line 908
    .local v9, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v9, :cond_2

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 931
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v5    # "lInfo":Lcom/samsung/android/knox/license/LicenseInfo;
    .end local v9    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_2
    :goto_0
    return-object v5

    .line 909
    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v5    # "lInfo":Lcom/samsung/android/knox/license/LicenseInfo;
    .restart local v9    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_3
    const/4 v1, 0x0

    .line 910
    .local v1, "cv":Landroid/content/ContentValues;
    const/4 v3, 0x0

    .line 911
    .local v3, "instId":Ljava/lang/String;
    const/4 v7, 0x0

    .line 912
    .local v7, "packageName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 913
    .local v8, "packageVersion":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 915
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "instId":Ljava/lang/String;
    .local v4, "it":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 916
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 917
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v10, "instanceId"

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 919
    .local v3, "instId":Ljava/lang/String;
    if-eqz v3, :cond_4

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 920
    const-string/jumbo v10, "pkgName"

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 921
    .local v7, "packageName":Ljava/lang/String;
    const-string/jumbo v10, "pkgVersion"

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 922
    .local v8, "packageVersion":Ljava/lang/String;
    new-instance v6, Lcom/samsung/android/knox/license/LicenseInfo;

    invoke-direct {v6, v7, v3, v8}, Lcom/samsung/android/knox/license/LicenseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .local v6, "lInfo":Lcom/samsung/android/knox/license/LicenseInfo;
    move-object v5, v6

    .line 923
    .end local v6    # "lInfo":Lcom/samsung/android/knox/license/LicenseInfo;
    .local v5, "lInfo":Lcom/samsung/android/knox/license/LicenseInfo;
    goto :goto_0

    .line 927
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "instId":Ljava/lang/String;
    .end local v4    # "it":Ljava/util/Iterator;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "packageVersion":Ljava/lang/String;
    .end local v9    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .local v5, "lInfo":Lcom/samsung/android/knox/license/LicenseInfo;
    :catch_0
    move-exception v2

    .line 928
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "EnterpriseLicenseService"

    const-string/jumbo v11, "getLicenseInfo() failed"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getLicenseInfoByAdmin(Ljava/lang/String;)Lcom/samsung/android/knox/license/LicenseInfo;
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 941
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 942
    const/4 v5, 0x0

    .line 944
    .local v5, "lInfo":Lcom/samsung/android/knox/license/LicenseInfo;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 945
    :cond_0
    return-object v5

    .line 948
    :cond_1
    const/4 v10, 0x3

    :try_start_0
    new-array v0, v10, [Ljava/lang/String;

    .line 949
    .local v0, "columns":[Ljava/lang/String;
    const-string/jumbo v10, "pkgName"

    const/4 v11, 0x0

    aput-object v10, v0, v11

    .line 950
    const-string/jumbo v10, "instanceId"

    const/4 v11, 0x1

    aput-object v10, v0, v11

    .line 951
    const-string/jumbo v10, "pkgVersion"

    const/4 v11, 0x2

    aput-object v10, v0, v11

    .line 953
    sget-object v10, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 954
    const-string/jumbo v11, "LICENSE"

    const/4 v12, 0x0

    .line 953
    invoke-virtual {v10, v11, v0, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v9

    .line 956
    .local v9, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v9, :cond_2

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 979
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v5    # "lInfo":Lcom/samsung/android/knox/license/LicenseInfo;
    .end local v9    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_2
    :goto_0
    return-object v5

    .line 957
    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v5    # "lInfo":Lcom/samsung/android/knox/license/LicenseInfo;
    .restart local v9    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_3
    const/4 v1, 0x0

    .line 958
    .local v1, "cv":Landroid/content/ContentValues;
    const/4 v3, 0x0

    .line 959
    .local v3, "instId":Ljava/lang/String;
    const/4 v8, 0x0

    .line 960
    .local v8, "pkgName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 961
    .local v7, "packageVersion":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 963
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v8    # "pkgName":Ljava/lang/String;
    .local v4, "it":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 964
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 965
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v10, "pkgName"

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 967
    .local v8, "pkgName":Ljava/lang/String;
    if-eqz v8, :cond_4

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 968
    const-string/jumbo v10, "instanceId"

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 969
    .local v3, "instId":Ljava/lang/String;
    const-string/jumbo v10, "pkgVersion"

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 970
    .local v7, "packageVersion":Ljava/lang/String;
    new-instance v6, Lcom/samsung/android/knox/license/LicenseInfo;

    invoke-direct {v6, p1, v3, v7}, Lcom/samsung/android/knox/license/LicenseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .local v6, "lInfo":Lcom/samsung/android/knox/license/LicenseInfo;
    move-object v5, v6

    .line 971
    .end local v6    # "lInfo":Lcom/samsung/android/knox/license/LicenseInfo;
    .local v5, "lInfo":Lcom/samsung/android/knox/license/LicenseInfo;
    goto :goto_0

    .line 975
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "instId":Ljava/lang/String;
    .end local v4    # "it":Ljava/util/Iterator;
    .end local v7    # "packageVersion":Ljava/lang/String;
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v9    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .local v5, "lInfo":Lcom/samsung/android/knox/license/LicenseInfo;
    :catch_0
    move-exception v2

    .line 976
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "EnterpriseLicenseService"

    const-string/jumbo v11, "getLicenseInfoByAdmin() failed"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getRightsObject(Ljava/lang/String;)Lcom/samsung/android/knox/license/RightsObject;
    .locals 9
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 508
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 510
    const/4 v3, 0x0

    .line 511
    .local v3, "ro":Lcom/samsung/android/knox/license/RightsObject;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 512
    :cond_0
    return-object v3

    .line 515
    :cond_1
    :try_start_0
    sget-object v5, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "LICENSE"

    .line 516
    const-string/jumbo v7, "instanceId"

    .line 517
    const-string/jumbo v8, "rightsObject"

    .line 515
    invoke-virtual {v5, v6, v7, p1, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 519
    .local v1, "blob":[B
    if-eqz v1, :cond_2

    .line 520
    const/4 v4, 0x0

    .line 522
    .local v4, "roOld":Landroid/app/enterprise/license/RightsObject;
    :try_start_1
    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/app/enterprise/license/RightsObject;

    move-object v4, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 526
    .end local v4    # "roOld":Landroid/app/enterprise/license/RightsObject;
    :goto_0
    if-nez v4, :cond_3

    .line 527
    :try_start_2
    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/samsung/android/knox/license/RightsObject;

    move-object v3, v0

    .line 528
    .local v3, "ro":Lcom/samsung/android/knox/license/RightsObject;
    const-string/jumbo v5, "EnterpriseLicenseService"

    const-string/jumbo v6, "getRightsObject() - deserializeObject"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    .end local v1    # "blob":[B
    .end local v3    # "ro":Lcom/samsung/android/knox/license/RightsObject;
    :cond_2
    :goto_1
    return-object v3

    .line 523
    .restart local v1    # "blob":[B
    .local v3, "ro":Lcom/samsung/android/knox/license/RightsObject;
    .restart local v4    # "roOld":Landroid/app/enterprise/license/RightsObject;
    :catch_0
    move-exception v2

    .line 524
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "EnterpriseLicenseService"

    const-string/jumbo v6, "getRightsObject() may new namespace"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 533
    .end local v1    # "blob":[B
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "ro":Lcom/samsung/android/knox/license/RightsObject;
    .end local v4    # "roOld":Landroid/app/enterprise/license/RightsObject;
    :catch_1
    move-exception v2

    .line 534
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "EnterpriseLicenseService"

    const-string/jumbo v6, "getRightsObject() failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 530
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "blob":[B
    .restart local v3    # "ro":Lcom/samsung/android/knox/license/RightsObject;
    :cond_3
    :try_start_3
    invoke-virtual {v4}, Landroid/app/enterprise/license/RightsObject;->convertToNew()Lcom/samsung/android/knox/license/RightsObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v3

    .local v3, "ro":Lcom/samsung/android/knox/license/RightsObject;
    goto :goto_1
.end method

.method public getRightsObjectByAdmin(Ljava/lang/String;)Lcom/samsung/android/knox/license/RightsObject;
    .locals 9
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 548
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 550
    const/4 v3, 0x0

    .line 551
    .local v3, "ro":Lcom/samsung/android/knox/license/RightsObject;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 552
    :cond_0
    return-object v3

    .line 555
    :cond_1
    :try_start_0
    sget-object v5, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "LICENSE"

    .line 556
    const-string/jumbo v7, "pkgName"

    .line 557
    const-string/jumbo v8, "rightsObject"

    .line 555
    invoke-virtual {v5, v6, v7, p1, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 559
    .local v1, "blob":[B
    if-eqz v1, :cond_2

    .line 560
    const/4 v4, 0x0

    .line 562
    .local v4, "roOld":Landroid/app/enterprise/license/RightsObject;
    :try_start_1
    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/app/enterprise/license/RightsObject;

    move-object v4, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 566
    .end local v4    # "roOld":Landroid/app/enterprise/license/RightsObject;
    :goto_0
    if-nez v4, :cond_3

    .line 567
    :try_start_2
    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/samsung/android/knox/license/RightsObject;

    move-object v3, v0

    .line 568
    .local v3, "ro":Lcom/samsung/android/knox/license/RightsObject;
    const-string/jumbo v5, "EnterpriseLicenseService"

    const-string/jumbo v6, "getRightsObjectByAdmin() - deserializeObject"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    .end local v1    # "blob":[B
    .end local v3    # "ro":Lcom/samsung/android/knox/license/RightsObject;
    :cond_2
    :goto_1
    return-object v3

    .line 563
    .restart local v1    # "blob":[B
    .local v3, "ro":Lcom/samsung/android/knox/license/RightsObject;
    .restart local v4    # "roOld":Landroid/app/enterprise/license/RightsObject;
    :catch_0
    move-exception v2

    .line 564
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "EnterpriseLicenseService"

    const-string/jumbo v6, "getRightsObjectByAdmin() may new namespace"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 573
    .end local v1    # "blob":[B
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "ro":Lcom/samsung/android/knox/license/RightsObject;
    .end local v4    # "roOld":Landroid/app/enterprise/license/RightsObject;
    :catch_1
    move-exception v2

    .line 574
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "EnterpriseLicenseService"

    const-string/jumbo v6, "getRightsObjectByAdmin() failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 570
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "blob":[B
    .restart local v3    # "ro":Lcom/samsung/android/knox/license/RightsObject;
    :cond_3
    :try_start_3
    invoke-virtual {v4}, Landroid/app/enterprise/license/RightsObject;->convertToNew()Lcom/samsung/android/knox/license/RightsObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v3

    .local v3, "ro":Lcom/samsung/android/knox/license/RightsObject;
    goto :goto_1
.end method

.method public log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "contextInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "apiName"    # Ljava/lang/String;

    .prologue
    .line 1597
    invoke-static {p1, p2}, Lcom/android/server/enterprise/license/LicenseLog;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 1596
    return-void
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 1883
    return-void
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 1850
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 1854
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 1858
    return-void
.end method

.method public processKnoxLicenseResponse(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/Error;IILjava/lang/String;Lcom/samsung/android/knox/license/RightsObject;I)Z
    .locals 21
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "error"    # Lcom/samsung/android/knox/license/Error;
    .param p4, "initiator"    # I
    .param p5, "result_type"    # I
    .param p6, "callerPackage"    # Ljava/lang/String;
    .param p7, "RO"    # Lcom/samsung/android/knox/license/RightsObject;
    .param p8, "attestation_status"    # I

    .prologue
    .line 384
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 386
    const-string/jumbo v18, "EnterpriseLicenseService"

    const-string/jumbo v19, "processKnoxLicenseResponse()"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->checkPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 388
    const/16 v18, 0x0

    return v18

    .line 390
    :cond_0
    const/4 v8, 0x0

    .line 391
    .local v8, "differentCaller":Z
    if-eqz p6, :cond_1

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 392
    :cond_1
    const/4 v8, 0x0

    .line 397
    :goto_0
    const/4 v14, 0x0

    .line 398
    .local v14, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 400
    .local v16, "token":J
    :try_start_0
    const-string/jumbo v18, "EnterpriseLicenseService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "processKnoxLicenseResponse().RO : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    if-eqz p7, :cond_2

    .line 405
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 406
    .local v7, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v18, "pkgName"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 409
    .local v6, "cv":Landroid/content/ContentValues;
    invoke-static/range {p7 .. p7}, Lcom/android/server/enterprise/utils/Utils;->serializeObject(Ljava/lang/Object;)[B

    move-result-object v4

    .line 410
    .local v4, "blob":[B
    const-string/jumbo v18, "rightsObject"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 412
    sget-object v18, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v19, "LICENSE"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v5

    .line 413
    .local v5, "cnt":I
    if-lez v5, :cond_b

    .line 415
    sget-object v18, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v19, "LICENSE"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v14

    .line 423
    .local v14, "ret":Z
    :goto_1
    const-string/jumbo v18, "EnterpriseLicenseService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "processKnoxLicenseResponse(): License Table update. ret = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    if-eqz v14, :cond_2

    .line 427
    sget-object v18, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I

    .line 430
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkServices()V

    .line 435
    .end local v4    # "blob":[B
    .end local v5    # "cnt":I
    .end local v6    # "cv":Landroid/content/ContentValues;
    .end local v7    # "cvWhere":Landroid/content/ContentValues;
    .end local v14    # "ret":Z
    :cond_2
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v18, "edm.intent.action.knox_license.status"

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 436
    .local v11, "intent":Landroid/content/Intent;
    const-string/jumbo v18, "edm.intent.extra.knox_license.status"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    const-string/jumbo v18, "edm.intent.extra.knox_license.errorcode"

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 438
    const-string/jumbo v18, "edm.intent.extra.knox_license.activaton_initiator"

    move-object/from16 v0, v18

    move/from16 v1, p4

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 439
    const-string/jumbo v18, "edm.intent.extra.knox_license.result_type"

    move-object/from16 v0, v18

    move/from16 v1, p5

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 440
    const/16 v18, 0x320

    move/from16 v0, p5

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 441
    const-string/jumbo v18, "com.samsung.android.knox.intent.extra.LICENSE_ATTESTATION_STATUS"

    move-object/from16 v0, v18

    move/from16 v1, p8

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 443
    :cond_3
    if-eqz v8, :cond_4

    .line 444
    move-object/from16 v0, p6

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget-object v19, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 448
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget-object v19, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 453
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v18, "com.samsung.android.knox.intent.action.KNOX_LICENSE_STATUS"

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 454
    .local v12, "knoxSdkIntent":Landroid/content/Intent;
    const-string/jumbo v18, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_STATUS"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 455
    const-string/jumbo v18, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_ERROR_CODE"

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 456
    const-string/jumbo v18, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_ACTIVATION_INITIATOR"

    move-object/from16 v0, v18

    move/from16 v1, p4

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 457
    const-string/jumbo v18, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_RESULT_TYPE"

    move-object/from16 v0, v18

    move/from16 v1, p5

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 458
    const/16 v18, 0x320

    move/from16 v0, p5

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 459
    const-string/jumbo v18, "com.samsung.android.knox.intent.extra.LICENSE_ATTESTATION_STATUS"

    move-object/from16 v0, v18

    move/from16 v1, p8

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 462
    :cond_5
    if-eqz v14, :cond_6

    .line 464
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 466
    .local v13, "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v13, :cond_6

    .line 467
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 468
    .local v10, "extra":Landroid/os/Bundle;
    const-string/jumbo v18, "Permissions"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0, v13}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 469
    const-string/jumbo v18, "com.samsung.android.knox.intent.extra.LICENSE_DATA_LICENSE_PERMISSIONS"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 473
    .end local v10    # "extra":Landroid/os/Bundle;
    .end local v13    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    if-eqz v8, :cond_7

    .line 474
    move-object/from16 v0, p6

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget-object v19, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 478
    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget-object v19, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 484
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getUcmService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v15

    .line 485
    .local v15, "ucmService":Lcom/samsung/android/knox/ucm/core/IUcmService;
    if-eqz v15, :cond_8

    .line 486
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v18

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v18

    invoke-interface {v15, v0, v1, v2}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyLicenseStatus(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    :cond_8
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 497
    const/16 v18, 0x1

    return v18

    .line 393
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v12    # "knoxSdkIntent":Landroid/content/Intent;
    .end local v15    # "ucmService":Lcom/samsung/android/knox/ucm/core/IUcmService;
    .end local v16    # "token":J
    :cond_9
    move-object/from16 v0, p6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 394
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 396
    :cond_a
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 418
    .restart local v4    # "blob":[B
    .restart local v5    # "cnt":I
    .restart local v6    # "cv":Landroid/content/ContentValues;
    .restart local v7    # "cvWhere":Landroid/content/ContentValues;
    .local v14, "ret":Z
    .restart local v16    # "token":J
    :cond_b
    :try_start_1
    const-string/jumbo v18, "instanceId"

    const-string/jumbo v19, "-1"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string/jumbo v18, "pkgVersion"

    const-string/jumbo v19, "-1"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string/jumbo v18, "pkgName"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    sget-object v18, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v19, "LICENSE"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v14

    .local v14, "ret":Z
    goto/16 :goto_1

    .line 490
    .end local v4    # "blob":[B
    .end local v5    # "cnt":I
    .end local v6    # "cv":Landroid/content/ContentValues;
    .end local v7    # "cvWhere":Landroid/content/ContentValues;
    .end local v14    # "ret":Z
    :catch_0
    move-exception v9

    .line 491
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v18, "EnterpriseLicenseService"

    const-string/jumbo v19, "processKnoxLicenseResponse() failed"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 492
    const/16 v18, 0x0

    .line 494
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 492
    return v18

    .line 493
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v18

    .line 494
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 493
    throw v18
.end method

.method public declared-synchronized processLicenseActivationResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/RightsObject;Lcom/samsung/android/knox/license/Error;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageVersion"    # Ljava/lang/String;
    .param p3, "status"    # Ljava/lang/String;
    .param p4, "instanceId"    # Ljava/lang/String;
    .param p5, "RO"    # Lcom/samsung/android/knox/license/RightsObject;
    .param p6, "error"    # Lcom/samsung/android/knox/license/Error;
    .param p7, "permGroup"    # Ljava/lang/String;
    .param p8, "callerPackage"    # Ljava/lang/String;
    .param p9, "attestation_status"    # I

    .prologue
    monitor-enter p0

    .line 204
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 206
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p8

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->checkPackage(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v19

    if-nez v19, :cond_0

    .line 207
    const/16 v19, 0x0

    monitor-exit p0

    return v19

    .line 209
    :cond_0
    const/4 v9, 0x0

    .line 210
    .local v9, "differentCaller":Z
    if-eqz p8, :cond_1

    :try_start_1
    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 211
    :cond_1
    const/4 v9, 0x0

    .line 217
    :goto_0
    const/4 v15, 0x0

    .line 218
    .local v15, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 221
    .local v16, "token":J
    if-nez p5, :cond_c

    .line 222
    const/4 v15, 0x1

    .line 278
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v19, "edm.intent.action.license.status"

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 279
    .local v12, "intent":Landroid/content/Intent;
    if-eqz v15, :cond_a

    .line 280
    if-eqz v9, :cond_3

    .line 282
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    .line 284
    .local v14, "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v14, :cond_2

    .line 285
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 286
    .local v11, "extra":Landroid/os/Bundle;
    const-string/jumbo v19, "Permissions"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0, v14}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 287
    const-string/jumbo v19, "edm.intent.extra.license.data.license_permissions"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 290
    .end local v11    # "extra":Landroid/os/Bundle;
    :cond_2
    const-string/jumbo v19, "edm.intent.extra.license.data.pkgname"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    const-string/jumbo v19, "edm.intent.extra.license.data.pkgversion"

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    .end local v14    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const-string/jumbo v19, "edm.intent.extra.license.status"

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    const-string/jumbo v19, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 295
    const-string/jumbo v19, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, v19

    move-object/from16 v1, p7

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    const-string/jumbo v19, "com.sec.enterprise.intent.extra.LICENSE_ATTESTATION_STATUS"

    move-object/from16 v0, v19

    move/from16 v1, p9

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 302
    :goto_1
    const-string/jumbo v19, "edm.intent.extra.license.result_type"

    const/16 v20, 0x320

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 304
    if-eqz v9, :cond_4

    .line 305
    move-object/from16 v0, p8

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget-object v20, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 309
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget-object v20, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 314
    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v19, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 315
    .local v13, "knoxSdkIntent":Landroid/content/Intent;
    if-eqz v15, :cond_b

    .line 316
    if-eqz v9, :cond_6

    .line 318
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    .line 320
    .restart local v14    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v14, :cond_5

    .line 321
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 322
    .restart local v11    # "extra":Landroid/os/Bundle;
    const-string/jumbo v19, "Permissions"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0, v14}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 323
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_DATA_LICENSE_PERMISSIONS"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 326
    .end local v11    # "extra":Landroid/os/Bundle;
    :cond_5
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGEVERSION"

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    .end local v14    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 331
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_PERM_GROUP"

    move-object/from16 v0, v19

    move-object/from16 v1, p7

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_ATTESTATION_STATUS"

    move-object/from16 v0, v19

    move/from16 v1, p9

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 338
    :goto_2
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    const/16 v20, 0x320

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 340
    if-eqz v9, :cond_7

    .line 341
    move-object/from16 v0, p8

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget-object v20, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v13, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 345
    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget-object v20, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v13, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 349
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    const/16 v19, 0x1

    monitor-exit p0

    .line 223
    return v19

    .line 212
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v13    # "knoxSdkIntent":Landroid/content/Intent;
    .end local v15    # "ret":Z
    .end local v16    # "token":J
    :cond_8
    :try_start_2
    move-object/from16 v0, p8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 213
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 215
    :cond_9
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 298
    .restart local v12    # "intent":Landroid/content/Intent;
    .restart local v15    # "ret":Z
    .restart local v16    # "token":J
    :cond_a
    const-string/jumbo v19, "edm.intent.extra.license.status"

    const-string/jumbo v20, "fail"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    const-string/jumbo v19, "edm.intent.extra.license.errorcode"

    .line 300
    const/16 v20, 0x12d

    .line 299
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .end local v9    # "differentCaller":Z
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v15    # "ret":Z
    .end local v16    # "token":J
    :catchall_0
    move-exception v19

    monitor-exit p0

    throw v19

    .line 334
    .restart local v9    # "differentCaller":Z
    .restart local v12    # "intent":Landroid/content/Intent;
    .restart local v13    # "knoxSdkIntent":Landroid/content/Intent;
    .restart local v15    # "ret":Z
    .restart local v16    # "token":J
    :cond_b
    :try_start_3
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string/jumbo v20, "fail"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    .line 336
    const/16 v20, 0x12d

    .line 335
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 227
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v13    # "knoxSdkIntent":Landroid/content/Intent;
    :cond_c
    :try_start_4
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 228
    .local v8, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v19, "pkgName"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 231
    .local v7, "cv":Landroid/content/ContentValues;
    invoke-static/range {p5 .. p5}, Lcom/android/server/enterprise/utils/Utils;->serializeObject(Ljava/lang/Object;)[B

    move-result-object v5

    .line 232
    .local v5, "blob":[B
    const-string/jumbo v19, "rightsObject"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 233
    const-string/jumbo v19, "instanceId"

    move-object/from16 v0, v19

    move-object/from16 v1, p4

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string/jumbo v19, "pkgVersion"

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    sget-object v19, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v20, "LICENSE"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v6

    .line 237
    .local v6, "cnt":I
    if-lez v6, :cond_17

    .line 239
    sget-object v19, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v20, "LICENSE"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v15

    .line 251
    .local v15, "ret":Z
    :cond_d
    :goto_3
    const-string/jumbo v19, "EnterpriseLicenseService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "processLicenseActivationResponse(): ret = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    if-eqz v15, :cond_e

    .line 255
    sget-object v19, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I

    .line 258
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkServices()V

    .line 263
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getUcmService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v18

    .line 264
    .local v18, "ucmService":Lcom/samsung/android/knox/ucm/core/IUcmService;
    if-eqz v18, :cond_f

    .line 265
    if-eqz v15, :cond_18

    .line 266
    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v19

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyLicenseStatus(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 278
    :cond_f
    :goto_4
    :try_start_5
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v19, "edm.intent.action.license.status"

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 279
    .restart local v12    # "intent":Landroid/content/Intent;
    if-eqz v15, :cond_1f

    .line 280
    if-eqz v9, :cond_11

    .line 282
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    .line 284
    .restart local v14    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v14, :cond_10

    .line 285
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 286
    .restart local v11    # "extra":Landroid/os/Bundle;
    const-string/jumbo v19, "Permissions"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0, v14}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 287
    const-string/jumbo v19, "edm.intent.extra.license.data.license_permissions"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 290
    .end local v11    # "extra":Landroid/os/Bundle;
    :cond_10
    const-string/jumbo v19, "edm.intent.extra.license.data.pkgname"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    const-string/jumbo v19, "edm.intent.extra.license.data.pkgversion"

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    .end local v14    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_11
    const-string/jumbo v19, "edm.intent.extra.license.status"

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    const-string/jumbo v19, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 295
    const-string/jumbo v19, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, v19

    move-object/from16 v1, p7

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    const-string/jumbo v19, "com.sec.enterprise.intent.extra.LICENSE_ATTESTATION_STATUS"

    move-object/from16 v0, v19

    move/from16 v1, p9

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 302
    :goto_5
    const-string/jumbo v19, "edm.intent.extra.license.result_type"

    const/16 v20, 0x320

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 304
    if-eqz v9, :cond_12

    .line 305
    move-object/from16 v0, p8

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget-object v20, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 309
    :cond_12
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget-object v20, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 314
    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v19, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 315
    .restart local v13    # "knoxSdkIntent":Landroid/content/Intent;
    if-eqz v15, :cond_20

    .line 316
    if-eqz v9, :cond_14

    .line 318
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    .line 320
    .restart local v14    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v14, :cond_13

    .line 321
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 322
    .restart local v11    # "extra":Landroid/os/Bundle;
    const-string/jumbo v19, "Permissions"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0, v14}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 323
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_DATA_LICENSE_PERMISSIONS"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 326
    .end local v11    # "extra":Landroid/os/Bundle;
    :cond_13
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGEVERSION"

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    .end local v14    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_14
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 331
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_PERM_GROUP"

    move-object/from16 v0, v19

    move-object/from16 v1, p7

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_ATTESTATION_STATUS"

    move-object/from16 v0, v19

    move/from16 v1, p9

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 338
    :goto_6
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    const/16 v20, 0x320

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 340
    if-eqz v9, :cond_15

    .line 341
    move-object/from16 v0, p8

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget-object v20, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v13, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 345
    :cond_15
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget-object v20, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v13, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 349
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 352
    .end local v5    # "blob":[B
    .end local v6    # "cnt":I
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v8    # "cvWhere":Landroid/content/ContentValues;
    .end local v15    # "ret":Z
    .end local v18    # "ucmService":Lcom/samsung/android/knox/ucm/core/IUcmService;
    :goto_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide v16

    .line 355
    :try_start_6
    const-string/jumbo v19, "application_policy"

    .line 354
    invoke-static/range {v19 .. v19}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 356
    .local v4, "appService":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-eqz v4, :cond_16

    .line 357
    invoke-virtual {v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->grantRuntimePermissionsForEnterpriseAdmin()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 362
    :cond_16
    :try_start_7
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local v4    # "appService":Lcom/android/server/enterprise/application/ApplicationPolicy;
    :goto_8
    monitor-exit p0

    .line 365
    return v15

    .line 242
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v13    # "knoxSdkIntent":Landroid/content/Intent;
    .restart local v5    # "blob":[B
    .restart local v6    # "cnt":I
    .restart local v7    # "cv":Landroid/content/ContentValues;
    .restart local v8    # "cvWhere":Landroid/content/ContentValues;
    .local v15, "ret":Z
    :cond_17
    :try_start_8
    const-string/jumbo v19, "pkgName"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    sget-object v19, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v20, "LICENSE"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v15

    .line 244
    .local v15, "ret":Z
    if-nez v15, :cond_d

    .line 246
    const-string/jumbo v19, "EnterpriseLicenseService"

    const-string/jumbo v20, "check key field"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const-string/jumbo v19, "licenseKey"

    const-string/jumbo v20, "na"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    sget-object v19, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v20, "LICENSE"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v15

    goto/16 :goto_3

    .line 268
    .restart local v18    # "ucmService":Lcom/samsung/android/knox/ucm/core/IUcmService;
    :cond_18
    const-string/jumbo v19, "fail"

    const/16 v20, 0x12d

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyLicenseStatus(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_4

    .line 273
    .end local v5    # "blob":[B
    .end local v6    # "cnt":I
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v8    # "cvWhere":Landroid/content/ContentValues;
    .end local v15    # "ret":Z
    .end local v18    # "ucmService":Lcom/samsung/android/knox/ucm/core/IUcmService;
    :catch_0
    move-exception v10

    .line 274
    .local v10, "e":Ljava/lang/Exception;
    :try_start_9
    const-string/jumbo v19, "EnterpriseLicenseService"

    const-string/jumbo v20, "processLicenseActivationResponse() failed"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 278
    :try_start_a
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v19, "edm.intent.action.license.status"

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 279
    .restart local v12    # "intent":Landroid/content/Intent;
    if-eqz v15, :cond_21

    .line 280
    if-eqz v9, :cond_1a

    .line 282
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    .line 284
    .restart local v14    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v14, :cond_19

    .line 285
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 286
    .restart local v11    # "extra":Landroid/os/Bundle;
    const-string/jumbo v19, "Permissions"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0, v14}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 287
    const-string/jumbo v19, "edm.intent.extra.license.data.license_permissions"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 290
    .end local v11    # "extra":Landroid/os/Bundle;
    :cond_19
    const-string/jumbo v19, "edm.intent.extra.license.data.pkgname"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    const-string/jumbo v19, "edm.intent.extra.license.data.pkgversion"

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    .end local v14    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1a
    const-string/jumbo v19, "edm.intent.extra.license.status"

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    const-string/jumbo v19, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 295
    const-string/jumbo v19, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, v19

    move-object/from16 v1, p7

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    const-string/jumbo v19, "com.sec.enterprise.intent.extra.LICENSE_ATTESTATION_STATUS"

    move-object/from16 v0, v19

    move/from16 v1, p9

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 302
    :goto_9
    const-string/jumbo v19, "edm.intent.extra.license.result_type"

    const/16 v20, 0x320

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 304
    if-eqz v9, :cond_1b

    .line 305
    move-object/from16 v0, p8

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget-object v20, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 309
    :cond_1b
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget-object v20, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 314
    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v19, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 315
    .restart local v13    # "knoxSdkIntent":Landroid/content/Intent;
    if-eqz v15, :cond_22

    .line 316
    if-eqz v9, :cond_1d

    .line 318
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    .line 320
    .restart local v14    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v14, :cond_1c

    .line 321
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 322
    .restart local v11    # "extra":Landroid/os/Bundle;
    const-string/jumbo v19, "Permissions"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0, v14}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 323
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_DATA_LICENSE_PERMISSIONS"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 326
    .end local v11    # "extra":Landroid/os/Bundle;
    :cond_1c
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGEVERSION"

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    .end local v14    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1d
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 331
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_PERM_GROUP"

    move-object/from16 v0, v19

    move-object/from16 v1, p7

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_ATTESTATION_STATUS"

    move-object/from16 v0, v19

    move/from16 v1, p9

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 338
    :goto_a
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    const/16 v20, 0x320

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 340
    if-eqz v9, :cond_1e

    .line 341
    move-object/from16 v0, p8

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget-object v20, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v13, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 345
    :cond_1e
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget-object v20, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v13, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 349
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_7

    .line 298
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v13    # "knoxSdkIntent":Landroid/content/Intent;
    .restart local v5    # "blob":[B
    .restart local v6    # "cnt":I
    .restart local v7    # "cv":Landroid/content/ContentValues;
    .restart local v8    # "cvWhere":Landroid/content/ContentValues;
    .restart local v15    # "ret":Z
    .restart local v18    # "ucmService":Lcom/samsung/android/knox/ucm/core/IUcmService;
    :cond_1f
    const-string/jumbo v19, "edm.intent.extra.license.status"

    const-string/jumbo v20, "fail"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    const-string/jumbo v19, "edm.intent.extra.license.errorcode"

    .line 300
    const/16 v20, 0x12d

    .line 299
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_5

    .line 334
    .restart local v13    # "knoxSdkIntent":Landroid/content/Intent;
    :cond_20
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string/jumbo v20, "fail"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    .line 336
    const/16 v20, 0x12d

    .line 335
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_6

    .line 298
    .end local v5    # "blob":[B
    .end local v6    # "cnt":I
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v8    # "cvWhere":Landroid/content/ContentValues;
    .end local v13    # "knoxSdkIntent":Landroid/content/Intent;
    .end local v15    # "ret":Z
    .end local v18    # "ucmService":Lcom/samsung/android/knox/ucm/core/IUcmService;
    .restart local v10    # "e":Ljava/lang/Exception;
    :cond_21
    const-string/jumbo v19, "edm.intent.extra.license.status"

    const-string/jumbo v20, "fail"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    const-string/jumbo v19, "edm.intent.extra.license.errorcode"

    .line 300
    const/16 v20, 0x12d

    .line 299
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_9

    .line 334
    .restart local v13    # "knoxSdkIntent":Landroid/content/Intent;
    :cond_22
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string/jumbo v20, "fail"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    .line 336
    const/16 v20, 0x12d

    .line 335
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_a

    .line 276
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v13    # "knoxSdkIntent":Landroid/content/Intent;
    :catchall_1
    move-exception v19

    .line 278
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v20, "edm.intent.action.license.status"

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 279
    .restart local v12    # "intent":Landroid/content/Intent;
    if-eqz v15, :cond_29

    .line 280
    if-eqz v9, :cond_24

    .line 282
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    .line 284
    .restart local v14    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v14, :cond_23

    .line 285
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 286
    .restart local v11    # "extra":Landroid/os/Bundle;
    const-string/jumbo v20, "Permissions"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0, v14}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 287
    const-string/jumbo v20, "edm.intent.extra.license.data.license_permissions"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 290
    .end local v11    # "extra":Landroid/os/Bundle;
    :cond_23
    const-string/jumbo v20, "edm.intent.extra.license.data.pkgname"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    const-string/jumbo v20, "edm.intent.extra.license.data.pkgversion"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    .end local v14    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_24
    const-string/jumbo v20, "edm.intent.extra.license.status"

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    const-string/jumbo v20, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 295
    const-string/jumbo v20, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, v20

    move-object/from16 v1, p7

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    const-string/jumbo v20, "com.sec.enterprise.intent.extra.LICENSE_ATTESTATION_STATUS"

    move-object/from16 v0, v20

    move/from16 v1, p9

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 302
    :goto_b
    const-string/jumbo v20, "edm.intent.extra.license.result_type"

    const/16 v21, 0x320

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 304
    if-eqz v9, :cond_25

    .line 305
    move-object/from16 v0, p8

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 309
    :cond_25
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 314
    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v20, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 315
    .restart local v13    # "knoxSdkIntent":Landroid/content/Intent;
    if-eqz v15, :cond_2a

    .line 316
    if-eqz v9, :cond_27

    .line 318
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    .line 320
    .restart local v14    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v14, :cond_26

    .line 321
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 322
    .restart local v11    # "extra":Landroid/os/Bundle;
    const-string/jumbo v20, "Permissions"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0, v14}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 323
    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.LICENSE_DATA_LICENSE_PERMISSIONS"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 326
    .end local v11    # "extra":Landroid/os/Bundle;
    :cond_26
    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGEVERSION"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    .end local v14    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_27
    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 331
    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.LICENSE_PERM_GROUP"

    move-object/from16 v0, v20

    move-object/from16 v1, p7

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.LICENSE_ATTESTATION_STATUS"

    move-object/from16 v0, v20

    move/from16 v1, p9

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 338
    :goto_c
    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    const/16 v21, 0x320

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 340
    if-eqz v9, :cond_28

    .line 341
    move-object/from16 v0, p8

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v13, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 345
    :cond_28
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v13, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 349
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 276
    throw v19

    .line 298
    .end local v13    # "knoxSdkIntent":Landroid/content/Intent;
    :cond_29
    const-string/jumbo v20, "edm.intent.extra.license.status"

    const-string/jumbo v21, "fail"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    const-string/jumbo v20, "edm.intent.extra.license.errorcode"

    .line 300
    const/16 v21, 0x12d

    .line 299
    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_b

    .line 334
    .restart local v13    # "knoxSdkIntent":Landroid/content/Intent;
    :cond_2a
    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string/jumbo v21, "fail"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    .line 336
    const/16 v21, 0x12d

    .line 335
    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_c

    .line 359
    :catch_1
    move-exception v10

    .line 360
    .restart local v10    # "e":Ljava/lang/Exception;
    :try_start_b
    const-string/jumbo v19, "EnterpriseLicenseService"

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 362
    :try_start_c
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_8

    .line 361
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v19

    .line 362
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 361
    throw v19
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
.end method

.method public processLicenseValidationResult(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/RightsObject;Lcom/samsung/android/knox/license/Error;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 21
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "instanceId"    # Ljava/lang/String;
    .param p3, "RO"    # Lcom/samsung/android/knox/license/RightsObject;
    .param p4, "error"    # Lcom/samsung/android/knox/license/Error;
    .param p5, "permGroup"    # Ljava/lang/String;
    .param p6, "pkgName"    # Ljava/lang/String;
    .param p7, "pkgVer"    # Ljava/lang/String;

    .prologue
    .line 595
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 597
    const/4 v14, 0x0

    .line 598
    .local v14, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 601
    .local v16, "token":J
    if-nez p3, :cond_5

    .line 602
    const/4 v14, 0x1

    const/16 v18, 0x1

    .line 644
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v19, "edm.intent.action.license.status"

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 645
    .local v11, "intent":Landroid/content/Intent;
    if-eqz v14, :cond_2

    .line 646
    const-string/jumbo v19, "edm.intent.extra.license.status"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 647
    const-string/jumbo v19, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 648
    const-string/jumbo v19, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 654
    :goto_0
    const-string/jumbo v19, "edm.intent.extra.license.result_type"

    const/16 v20, 0x321

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 655
    move-object/from16 v0, p6

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget-object v20, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 660
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v19, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 661
    .local v12, "knoxSdkIntent":Landroid/content/Intent;
    if-eqz v14, :cond_3

    .line 662
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 663
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 664
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_PERM_GROUP"

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 670
    :goto_1
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    const/16 v20, 0x321

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 671
    move-object/from16 v0, p6

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget-object v20, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 676
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isUMCAdmin(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 677
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v19, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 678
    .local v4, "UMCintent":Landroid/content/Intent;
    if-eqz v14, :cond_4

    .line 679
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 680
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 681
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_PERM_GROUP"

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 687
    :goto_2
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    move-object/from16 v0, v19

    move-object/from16 v1, p6

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 688
    invoke-static/range {p6 .. p6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 689
    .local v13, "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v13, :cond_0

    .line 690
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 691
    .local v10, "extra":Landroid/os/Bundle;
    const-string/jumbo v19, "Permissions"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0, v13}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 692
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_DATA_LICENSE_PERMISSIONS"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 694
    .end local v10    # "extra":Landroid/os/Bundle;
    :cond_0
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    const/16 v20, 0x321

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 695
    const-string/jumbo v19, "com.sec.enterprise.knox.cloudmdm.smdms"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget-object v20, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 699
    .end local v4    # "UMCintent":Landroid/content/Intent;
    .end local v13    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 603
    return v18

    .line 650
    .end local v12    # "knoxSdkIntent":Landroid/content/Intent;
    :cond_2
    const-string/jumbo v19, "edm.intent.extra.license.status"

    const-string/jumbo v20, "fail"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 651
    const-string/jumbo v19, "edm.intent.extra.license.errorcode"

    .line 652
    const/16 v20, 0x12d

    .line 651
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 666
    .restart local v12    # "knoxSdkIntent":Landroid/content/Intent;
    :cond_3
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string/jumbo v20, "fail"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 667
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    .line 668
    const/16 v20, 0x12d

    .line 667
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_1

    .line 683
    .restart local v4    # "UMCintent":Landroid/content/Intent;
    :cond_4
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string/jumbo v20, "fail"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 684
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    .line 685
    const/16 v20, 0x12d

    .line 684
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_2

    .line 607
    .end local v4    # "UMCintent":Landroid/content/Intent;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v12    # "knoxSdkIntent":Landroid/content/Intent;
    :cond_5
    :try_start_0
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 608
    .local v8, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v18, "pkgName"

    move-object/from16 v0, v18

    move-object/from16 v1, p6

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 612
    .local v7, "cv":Landroid/content/ContentValues;
    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/utils/Utils;->serializeObject(Ljava/lang/Object;)[B

    move-result-object v5

    .line 613
    .local v5, "blob":[B
    const-string/jumbo v18, "rightsObject"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 614
    const-string/jumbo v18, "pkgVersion"

    move-object/from16 v0, v18

    move-object/from16 v1, p7

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    sget-object v18, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v19, "LICENSE"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v6

    .line 617
    .local v6, "cnt":I
    if-lez v6, :cond_6

    .line 619
    sget-object v18, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v19, "LICENSE"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v14

    .line 622
    .end local v14    # "ret":Z
    :cond_6
    const-string/jumbo v18, "EnterpriseLicenseService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "processLicenseValidationResult(): ret = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    if-eqz v14, :cond_7

    .line 625
    sget-object v18, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    move-object/from16 v0, v18

    move-object/from16 v1, p6

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I

    .line 629
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getUcmService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v15

    .line 630
    .local v15, "ucmService":Lcom/samsung/android/knox/ucm/core/IUcmService;
    if-eqz v15, :cond_8

    .line 631
    if-eqz v14, :cond_b

    .line 632
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v18

    move-object/from16 v0, p6

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-interface {v15, v0, v1, v2}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyLicenseStatus(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    :cond_8
    :goto_3
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v18, "edm.intent.action.license.status"

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 645
    .restart local v11    # "intent":Landroid/content/Intent;
    if-eqz v14, :cond_e

    .line 646
    const-string/jumbo v18, "edm.intent.extra.license.status"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 647
    const-string/jumbo v18, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 648
    const-string/jumbo v18, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 654
    :goto_4
    const-string/jumbo v18, "edm.intent.extra.license.result_type"

    const/16 v19, 0x321

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 655
    move-object/from16 v0, p6

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget-object v19, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 660
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v18, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 661
    .restart local v12    # "knoxSdkIntent":Landroid/content/Intent;
    if-eqz v14, :cond_f

    .line 662
    const-string/jumbo v18, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 663
    const-string/jumbo v18, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 664
    const-string/jumbo v18, "com.samsung.android.knox.intent.extra.LICENSE_PERM_GROUP"

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 670
    :goto_5
    const-string/jumbo v18, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    const/16 v19, 0x321

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 671
    move-object/from16 v0, p6

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget-object v19, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 676
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isUMCAdmin(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 677
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v18, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 678
    .restart local v4    # "UMCintent":Landroid/content/Intent;
    if-eqz v14, :cond_10

    .line 679
    const-string/jumbo v18, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 680
    const-string/jumbo v18, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 681
    const-string/jumbo v18, "com.samsung.android.knox.intent.extra.LICENSE_PERM_GROUP"

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 687
    :goto_6
    const-string/jumbo v18, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    move-object/from16 v0, v18

    move-object/from16 v1, p6

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 688
    invoke-static/range {p6 .. p6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 689
    .restart local v13    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v13, :cond_9

    .line 690
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 691
    .restart local v10    # "extra":Landroid/os/Bundle;
    const-string/jumbo v18, "Permissions"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0, v13}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 692
    const-string/jumbo v18, "com.samsung.android.knox.intent.extra.LICENSE_DATA_LICENSE_PERMISSIONS"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 694
    .end local v10    # "extra":Landroid/os/Bundle;
    :cond_9
    const-string/jumbo v18, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    const/16 v19, 0x321

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 695
    const-string/jumbo v18, "com.sec.enterprise.knox.cloudmdm.smdms"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget-object v19, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 699
    .end local v4    # "UMCintent":Landroid/content/Intent;
    .end local v13    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 702
    .end local v5    # "blob":[B
    .end local v6    # "cnt":I
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v8    # "cvWhere":Landroid/content/ContentValues;
    .end local v15    # "ucmService":Lcom/samsung/android/knox/ucm/core/IUcmService;
    :goto_7
    return v14

    .line 634
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v12    # "knoxSdkIntent":Landroid/content/Intent;
    .restart local v5    # "blob":[B
    .restart local v6    # "cnt":I
    .restart local v7    # "cv":Landroid/content/ContentValues;
    .restart local v8    # "cvWhere":Landroid/content/ContentValues;
    .restart local v15    # "ucmService":Lcom/samsung/android/knox/ucm/core/IUcmService;
    :cond_b
    :try_start_1
    const-string/jumbo v18, "fail"

    const/16 v19, 0x12d

    move-object/from16 v0, p6

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v15, v0, v1, v2}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyLicenseStatus(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 639
    .end local v5    # "blob":[B
    .end local v6    # "cnt":I
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v8    # "cvWhere":Landroid/content/ContentValues;
    .end local v15    # "ucmService":Lcom/samsung/android/knox/ucm/core/IUcmService;
    :catch_0
    move-exception v9

    .line 640
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v18, "EnterpriseLicenseService"

    const-string/jumbo v19, "processLicenseValidationResult() failed"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 644
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v18, "edm.intent.action.license.status"

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 645
    .restart local v11    # "intent":Landroid/content/Intent;
    if-eqz v14, :cond_11

    .line 646
    const-string/jumbo v18, "edm.intent.extra.license.status"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 647
    const-string/jumbo v18, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 648
    const-string/jumbo v18, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 654
    :goto_8
    const-string/jumbo v18, "edm.intent.extra.license.result_type"

    const/16 v19, 0x321

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 655
    move-object/from16 v0, p6

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget-object v19, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 660
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v18, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 661
    .restart local v12    # "knoxSdkIntent":Landroid/content/Intent;
    if-eqz v14, :cond_12

    .line 662
    const-string/jumbo v18, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 663
    const-string/jumbo v18, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 664
    const-string/jumbo v18, "com.samsung.android.knox.intent.extra.LICENSE_PERM_GROUP"

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 670
    :goto_9
    const-string/jumbo v18, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    const/16 v19, 0x321

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 671
    move-object/from16 v0, p6

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget-object v19, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 676
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isUMCAdmin(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 677
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v18, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 678
    .restart local v4    # "UMCintent":Landroid/content/Intent;
    if-eqz v14, :cond_13

    .line 679
    const-string/jumbo v18, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 680
    const-string/jumbo v18, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 681
    const-string/jumbo v18, "com.samsung.android.knox.intent.extra.LICENSE_PERM_GROUP"

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 687
    :goto_a
    const-string/jumbo v18, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    move-object/from16 v0, v18

    move-object/from16 v1, p6

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 688
    invoke-static/range {p6 .. p6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 689
    .restart local v13    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v13, :cond_c

    .line 690
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 691
    .restart local v10    # "extra":Landroid/os/Bundle;
    const-string/jumbo v18, "Permissions"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0, v13}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 692
    const-string/jumbo v18, "com.samsung.android.knox.intent.extra.LICENSE_DATA_LICENSE_PERMISSIONS"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 694
    .end local v10    # "extra":Landroid/os/Bundle;
    :cond_c
    const-string/jumbo v18, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    const/16 v19, 0x321

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 695
    const-string/jumbo v18, "com.sec.enterprise.knox.cloudmdm.smdms"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget-object v19, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 699
    .end local v4    # "UMCintent":Landroid/content/Intent;
    .end local v13    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_d
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_7

    .line 650
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v12    # "knoxSdkIntent":Landroid/content/Intent;
    .restart local v5    # "blob":[B
    .restart local v6    # "cnt":I
    .restart local v7    # "cv":Landroid/content/ContentValues;
    .restart local v8    # "cvWhere":Landroid/content/ContentValues;
    .restart local v15    # "ucmService":Lcom/samsung/android/knox/ucm/core/IUcmService;
    :cond_e
    const-string/jumbo v18, "edm.intent.extra.license.status"

    const-string/jumbo v19, "fail"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 651
    const-string/jumbo v18, "edm.intent.extra.license.errorcode"

    .line 652
    const/16 v19, 0x12d

    .line 651
    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_4

    .line 666
    .restart local v12    # "knoxSdkIntent":Landroid/content/Intent;
    :cond_f
    const-string/jumbo v18, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string/jumbo v19, "fail"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 667
    const-string/jumbo v18, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    .line 668
    const/16 v19, 0x12d

    .line 667
    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_5

    .line 683
    .restart local v4    # "UMCintent":Landroid/content/Intent;
    :cond_10
    const-string/jumbo v18, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string/jumbo v19, "fail"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 684
    const-string/jumbo v18, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    .line 685
    const/16 v19, 0x12d

    .line 684
    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_6

    .line 650
    .end local v4    # "UMCintent":Landroid/content/Intent;
    .end local v5    # "blob":[B
    .end local v6    # "cnt":I
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v8    # "cvWhere":Landroid/content/ContentValues;
    .end local v12    # "knoxSdkIntent":Landroid/content/Intent;
    .end local v15    # "ucmService":Lcom/samsung/android/knox/ucm/core/IUcmService;
    .restart local v9    # "e":Ljava/lang/Exception;
    :cond_11
    const-string/jumbo v18, "edm.intent.extra.license.status"

    const-string/jumbo v19, "fail"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 651
    const-string/jumbo v18, "edm.intent.extra.license.errorcode"

    .line 652
    const/16 v19, 0x12d

    .line 651
    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_8

    .line 666
    .restart local v12    # "knoxSdkIntent":Landroid/content/Intent;
    :cond_12
    const-string/jumbo v18, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string/jumbo v19, "fail"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 667
    const-string/jumbo v18, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    .line 668
    const/16 v19, 0x12d

    .line 667
    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_9

    .line 683
    .restart local v4    # "UMCintent":Landroid/content/Intent;
    :cond_13
    const-string/jumbo v18, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string/jumbo v19, "fail"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 684
    const-string/jumbo v18, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    .line 685
    const/16 v19, 0x12d

    .line 684
    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_a

    .line 642
    .end local v4    # "UMCintent":Landroid/content/Intent;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v12    # "knoxSdkIntent":Landroid/content/Intent;
    :catchall_0
    move-exception v18

    .line 644
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v19, "edm.intent.action.license.status"

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 645
    .restart local v11    # "intent":Landroid/content/Intent;
    if-eqz v14, :cond_16

    .line 646
    const-string/jumbo v19, "edm.intent.extra.license.status"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 647
    const-string/jumbo v19, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 648
    const-string/jumbo v19, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 654
    :goto_b
    const-string/jumbo v19, "edm.intent.extra.license.result_type"

    const/16 v20, 0x321

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 655
    move-object/from16 v0, p6

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget-object v20, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 660
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v19, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 661
    .restart local v12    # "knoxSdkIntent":Landroid/content/Intent;
    if-eqz v14, :cond_17

    .line 662
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 663
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 664
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_PERM_GROUP"

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 670
    :goto_c
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    const/16 v20, 0x321

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 671
    move-object/from16 v0, p6

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget-object v20, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 676
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isUMCAdmin(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_15

    .line 677
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v19, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 678
    .restart local v4    # "UMCintent":Landroid/content/Intent;
    if-eqz v14, :cond_18

    .line 679
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 680
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 681
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_PERM_GROUP"

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 687
    :goto_d
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    move-object/from16 v0, v19

    move-object/from16 v1, p6

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 688
    invoke-static/range {p6 .. p6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 689
    .restart local v13    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v13, :cond_14

    .line 690
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 691
    .restart local v10    # "extra":Landroid/os/Bundle;
    const-string/jumbo v19, "Permissions"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0, v13}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 692
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_DATA_LICENSE_PERMISSIONS"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 694
    .end local v10    # "extra":Landroid/os/Bundle;
    :cond_14
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    const/16 v20, 0x321

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 695
    const-string/jumbo v19, "com.sec.enterprise.knox.cloudmdm.smdms"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget-object v20, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 699
    .end local v4    # "UMCintent":Landroid/content/Intent;
    .end local v13    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_15
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 642
    throw v18

    .line 650
    .end local v12    # "knoxSdkIntent":Landroid/content/Intent;
    :cond_16
    const-string/jumbo v19, "edm.intent.extra.license.status"

    const-string/jumbo v20, "fail"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 651
    const-string/jumbo v19, "edm.intent.extra.license.errorcode"

    .line 652
    const/16 v20, 0x12d

    .line 651
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_b

    .line 666
    .restart local v12    # "knoxSdkIntent":Landroid/content/Intent;
    :cond_17
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string/jumbo v20, "fail"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 667
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    .line 668
    const/16 v20, 0x12d

    .line 667
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_c

    .line 683
    .restart local v4    # "UMCintent":Landroid/content/Intent;
    :cond_18
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string/jumbo v20, "fail"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 684
    const-string/jumbo v19, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    .line 685
    const/16 v20, 0x12d

    .line 684
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_d
.end method

.method public resetLicense(Ljava/lang/String;)Z
    .locals 11
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 1606
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 1607
    const/4 v5, 0x0

    .line 1608
    .local v5, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1610
    .local v6, "token":J
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_1

    .line 1642
    :cond_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1611
    return v10

    .line 1613
    :cond_1
    const/4 v3, 0x0

    .line 1615
    .local v3, "pkgName":Ljava/lang/String;
    :try_start_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1616
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v8, "instanceId"

    invoke-virtual {v1, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
    const-string/jumbo v0, "pkgName"

    .line 1619
    .local v0, "column":Ljava/lang/String;
    sget-object v8, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "LICENSE"

    invoke-virtual {v8, v9, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v4

    .line 1621
    .local v4, "result":Landroid/content/ContentValues;
    if-nez v4, :cond_2

    .line 1622
    const-string/jumbo v8, "EnterpriseLicenseService"

    const-string/jumbo v9, "resetLicense(): result is null"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1642
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1623
    return v10

    .line 1626
    :cond_2
    :try_start_2
    const-string/jumbo v8, "pkgName"

    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1628
    .local v3, "pkgName":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 1629
    const-string/jumbo v8, "EnterpriseLicenseService"

    const-string/jumbo v9, "resetLicense(): pkgName is null, Record does not exist"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1642
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1630
    return v10

    .line 1633
    :cond_3
    :try_start_3
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->resetELMInfo(Ljava/lang/String;)Z

    move-result v5

    .line 1634
    .local v5, "ret":Z
    if-eqz v5, :cond_4

    .line 1636
    sget-object v8, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v8, v3}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1642
    :cond_4
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1644
    .end local v0    # "column":Ljava/lang/String;
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "result":Landroid/content/ContentValues;
    .end local v5    # "ret":Z
    :goto_0
    return v5

    .line 1638
    :catch_0
    move-exception v2

    .line 1639
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v8, "EnterpriseLicenseService"

    const-string/jumbo v9, "resetLicense() failed"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1642
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1641
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 1642
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1641
    throw v8
.end method

.method public resetLicenseByAdmin(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1653
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 1654
    const/4 v1, 0x0

    .line 1655
    .local v1, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1657
    .local v2, "token":J
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 1658
    :cond_0
    const/4 v4, 0x0

    .line 1668
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1658
    return v4

    .line 1660
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->resetELMInfo(Ljava/lang/String;)Z

    move-result v1

    .line 1661
    .local v1, "ret":Z
    if-eqz v1, :cond_2

    .line 1663
    sget-object v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, p1}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1668
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1670
    .end local v1    # "ret":Z
    :goto_0
    return v1

    .line 1665
    :catch_0
    move-exception v0

    .line 1666
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v4, "EnterpriseLicenseService"

    const-string/jumbo v5, "resetLicenseByAdmin() failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1668
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1667
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 1668
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1667
    throw v4
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 1847
    invoke-static {}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->updateAdminPermissions()V

    .line 1846
    return-void
.end method
