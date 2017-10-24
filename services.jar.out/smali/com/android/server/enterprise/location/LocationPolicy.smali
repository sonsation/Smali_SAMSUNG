.class public Lcom/android/server/enterprise/location/LocationPolicy;
.super Lcom/samsung/android/knox/location/ILocationPolicy$Stub;
.source "LocationPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/location/LocationPolicy$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationPolicyService"


# instance fields
.field mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mLM:Landroid/location/LocationManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/enterprise/location/LocationPolicy;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/location/LocationPolicy;->updateSystemUIMonitor(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/samsung/android/knox/location/ILocationPolicy$Stub;-><init>()V

    .line 52
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 64
    new-instance v1, Lcom/android/server/enterprise/location/LocationPolicy$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/location/LocationPolicy$1;-><init>(Lcom/android/server/enterprise/location/LocationPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 58
    iput-object p1, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mContext:Landroid/content/Context;

    .line 59
    iget-object v1, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mResolver:Landroid/content/ContentResolver;

    .line 60
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 61
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 62
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 57
    return-void
.end method

.method private addToBlocked(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "sProvider"    # Ljava/lang/String;

    .prologue
    .line 483
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/location/LocationPolicy;->getAllLocationProviders(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v3

    .line 484
    .local v3, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 487
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 488
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/location/LocationPolicy;->getBlockedList(I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "provider$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 489
    .local v1, "provider":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 490
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 485
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "provider":Ljava/lang/String;
    .end local v2    # "provider$iterator":Ljava/util/Iterator;
    :cond_1
    const/4 v4, 0x0

    return v4

    .line 494
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "provider$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 495
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    :cond_3
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v4, v0}, Lcom/android/server/enterprise/location/LocationPolicy;->saveBlockedList(ILjava/util/List;)Z

    move-result v4

    return v4
.end method

.method private enforceLocationPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/server/enterprise/location/LocationPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.sec.MDM_LOCATION"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 96
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_LOCATION"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 95
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 94
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOnlyLocationPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/server/enterprise/location/LocationPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.sec.MDM_LOCATION"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 101
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_LOCATION"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 100
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 99
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getBlockedList(I)Ljava/util/ArrayList;
    .locals 5
    .param p1, "adminUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 427
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 428
    .local v0, "blockedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 429
    const-string/jumbo v3, "LOCATION"

    const-string/jumbo v4, "blockedProviders"

    .line 428
    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 430
    .local v1, "blockedProviders":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 431
    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    :goto_0
    return-object v0

    .line 433
    :cond_0
    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mContext:Landroid/content/Context;

    .line 78
    const-string/jumbo v1, "enterprise_policy_new"

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getUserIdByPackageNameOrUid(I)I
    .locals 8
    .param p1, "callingUid"    # I

    .prologue
    .line 536
    iget-object v5, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 537
    .local v0, "caller":Ljava/lang/String;
    const-string/jumbo v5, "LocationPolicyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getUserIdByPackageNameOrUid() caller "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    if-eqz v0, :cond_1

    .line 539
    const-string/jumbo v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 540
    .local v1, "index":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    .line 541
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 544
    :cond_0
    const-string/jumbo v5, "com.android.systemui"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 545
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 546
    .local v2, "token":J
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 547
    .local v4, "userId":I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 548
    return v4

    .line 552
    .end local v1    # "index":I
    .end local v2    # "token":J
    .end local v4    # "userId":I
    :cond_1
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v5, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 551
    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    return v5
.end method

.method private isGPSOn(I)Z
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 406
    const/4 v1, 0x0

    .line 407
    .local v1, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 409
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "gps"

    invoke-static {v4, v5, p1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 413
    .local v1, "ret":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 415
    .end local v1    # "ret":Z
    :goto_0
    const-string/jumbo v4, "LocationPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isGPSOn() ret = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " , userId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    return v1

    .line 410
    .local v1, "ret":Z
    :catch_0
    move-exception v0

    .line 411
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v4, "LocationPolicyService"

    const-string/jumbo v5, "isGPSOn() failed. "

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 413
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 412
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 413
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 412
    throw v4
.end method

.method private isGPSStateChangeAllowedAsUser(I)Z
    .locals 9
    .param p1, "userId"    # I

    .prologue
    const/4 v5, 0x0

    .line 297
    const/4 v0, 0x0

    .line 299
    .local v0, "blocked":Z
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "LOCATION"

    const-string/jumbo v8, "forceProviders"

    invoke-virtual {v6, v7, v8, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 300
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "value$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 301
    .local v2, "value":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    .line 302
    const/4 v0, 0x1

    .line 310
    .end local v2    # "value":Ljava/lang/Integer;
    .end local v3    # "value$iterator":Ljava/util/Iterator;
    .end local v4    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 311
    const-string/jumbo v6, "LocationPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isGPSStateChangeAllowedAsUser() : blocked. userId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :cond_2
    if-eqz v0, :cond_3

    :goto_1
    return v5

    .line 306
    :catch_0
    move-exception v1

    .line 307
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "LocationPolicyService"

    const-string/jumbo v7, "isGPSStateChangeAllowedAsUser() : failed to get value."

    invoke-static {v6, v7, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 308
    const/4 v0, 0x0

    goto :goto_0

    .line 313
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v5, 0x1

    goto :goto_1
.end method

.method private removeFromBlocked(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "sProvider"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 463
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/location/LocationPolicy;->getAllLocationProviders(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v2

    .line 464
    .local v2, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 467
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/location/LocationPolicy;->getBlockedList(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 468
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_3

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 469
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 470
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 471
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 479
    .end local v0    # "i":I
    :cond_0
    :goto_1
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v3, v1}, Lcom/android/server/enterprise/location/LocationPolicy;->saveBlockedList(ILjava/util/List;)Z

    move-result v3

    return v3

    .line 465
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const/4 v3, 0x0

    return v3

    .line 469
    .restart local v0    # "i":I
    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 476
    .end local v0    # "i":I
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 477
    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private saveBlockedList(ILjava/util/List;)Z
    .locals 7
    .param p1, "adminUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 445
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 446
    .local v2, "sb":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_2

    .line 447
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "s$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 448
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 449
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 452
    .end local v0    # "s":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "LOCATION"

    .line 453
    const-string/jumbo v5, "blockedProviders"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 452
    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    return v3

    .line 455
    .end local v1    # "s$iterator":Ljava/util/Iterator;
    :cond_2
    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    iget-object v3, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "LOCATION"

    .line 457
    const-string/jumbo v5, "blockedProviders"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 456
    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    return v3
.end method

.method private setGPSStateChangeAllowedSystemUI(IZ)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "isAllowed"    # Z

    .prologue
    .line 585
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 587
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object v1

    .line 588
    .local v1, "mSystemUIMonitor":Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setGPSStateChangeAllowedAsUser(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 584
    .end local v1    # "mSystemUIMonitor":Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;
    :goto_0
    return-void

    .line 589
    :catch_0
    move-exception v0

    .line 590
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v4, "LocationPolicyService"

    const-string/jumbo v5, "setGPSStateChangeAllowedSystemUI() failed. "

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 592
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 591
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 592
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 591
    throw v4
.end method

.method private setLocationManager()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mLM:Landroid/location/LocationManager;

    .line 86
    return-void
.end method

.method private setLocationProviderAllowedSystemUI(ILjava/lang/String;Z)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "provider"    # Ljava/lang/String;
    .param p3, "isAllowed"    # Z

    .prologue
    .line 574
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 576
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object v1

    .line 577
    .local v1, "mSystemUIMonitor":Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setLocationProviderAllowedAsUser(ILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 573
    .end local v1    # "mSystemUIMonitor":Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;
    :goto_0
    return-void

    .line 578
    :catch_0
    move-exception v0

    .line 579
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v4, "LocationPolicyService"

    const-string/jumbo v5, "setLocationProviderAllowedSystemUI() failed. "

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 581
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 580
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 581
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 580
    throw v4
.end method

.method private updateSystemUIMonitor(I)V
    .locals 8
    .param p1, "userId"    # I

    .prologue
    .line 558
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 560
    .local v4, "token":J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/location/LocationPolicy;->isGPSStateChangeAllowedAsUser(I)Z

    move-result v6

    invoke-direct {p0, p1, v6}, Lcom/android/server/enterprise/location/LocationPolicy;->setGPSStateChangeAllowedSystemUI(IZ)V

    .line 561
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/location/LocationPolicy;->getAllLocationProviders(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v3

    .line 562
    .local v3, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    .line 563
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "provider$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 564
    .local v1, "provider":Ljava/lang/String;
    invoke-virtual {p0, v1, p1}, Lcom/android/server/enterprise/location/LocationPolicy;->isLocationProviderBlockedAsUser(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    :goto_1
    invoke-direct {p0, p1, v1, v6}, Lcom/android/server/enterprise/location/LocationPolicy;->setLocationProviderAllowedSystemUI(ILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 567
    .end local v1    # "provider":Ljava/lang/String;
    .end local v2    # "provider$iterator":Ljava/util/Iterator;
    .end local v3    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 568
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v6, "LocationPolicyService"

    const-string/jumbo v7, "updateSystemUIMonitor() failed."

    invoke-static {v6, v7, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 570
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 557
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 564
    .restart local v1    # "provider":Ljava/lang/String;
    .restart local v2    # "provider$iterator":Ljava/util/Iterator;
    .restart local v3    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const/4 v6, 0x1

    goto :goto_1

    .line 570
    .end local v1    # "provider":Ljava/lang/String;
    .end local v2    # "provider$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .line 569
    .end local v3    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v6

    .line 570
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 569
    throw v6
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 596
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/location/LocationPolicy;->mContext:Landroid/content/Context;

    .line 597
    const-string/jumbo v15, "android.permission.DUMP"

    .line 596
    invoke-virtual {v14, v15}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_0

    .line 598
    const-string/jumbo v14, "Permission Denial: can\'t dump LocationPolicyService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 599
    return-void

    .line 601
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 602
    .local v9, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v14, "[LocationPolicyService]"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 605
    .local v10, "token":J
    const/4 v14, 0x1

    :try_start_0
    invoke-static {v14}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getUsers(Z)Ljava/util/List;

    move-result-object v13

    .line 606
    .local v13, "userList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/enterprise/location/LocationPolicy;->getAllLocationProviders(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v8

    .line 607
    .local v8, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "info$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 608
    .local v3, "info":Landroid/content/pm/UserInfo;
    iget v12, v3, Landroid/content/pm/UserInfo;->id:I

    .line 609
    .local v12, "userId":I
    const-string/jumbo v14, "  User "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_2

    .line 611
    const-string/jumbo v14, "   LocationProviderState : "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "provider$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 613
    .local v6, "provider":Ljava/lang/String;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Lcom/android/server/enterprise/location/LocationPolicy;->isLocationProviderBlockedAsUser(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_1

    const/4 v5, 0x0

    .line 614
    .local v5, "isAllowed":Z
    :goto_2
    const-string/jumbo v14, "    "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 620
    .end local v3    # "info":Landroid/content/pm/UserInfo;
    .end local v4    # "info$iterator":Ljava/util/Iterator;
    .end local v5    # "isAllowed":Z
    .end local v6    # "provider":Ljava/lang/String;
    .end local v7    # "provider$iterator":Ljava/util/Iterator;
    .end local v8    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "userId":I
    .end local v13    # "userList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_0
    move-exception v2

    .line 621
    .local v2, "ignore":Ljava/lang/Exception;
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 623
    .end local v2    # "ignore":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 595
    return-void

    .line 613
    .restart local v3    # "info":Landroid/content/pm/UserInfo;
    .restart local v4    # "info$iterator":Ljava/util/Iterator;
    .restart local v6    # "provider":Ljava/lang/String;
    .restart local v7    # "provider$iterator":Ljava/util/Iterator;
    .restart local v8    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "userId":I
    .restart local v13    # "userList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_1
    const/4 v5, 0x1

    .restart local v5    # "isAllowed":Z
    goto :goto_2

    .line 617
    .end local v5    # "isAllowed":Z
    .end local v6    # "provider":Ljava/lang/String;
    .end local v7    # "provider$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    const-string/jumbo v14, "   isGPSStateChangeAllowed : "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/enterprise/location/LocationPolicy;->isGPSStateChangeAllowedAsUser(I)Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    const-string/jumbo v14, "   isGPSOn : "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/enterprise/location/LocationPolicy;->isGPSOn(I)Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 620
    .end local v3    # "info":Landroid/content/pm/UserInfo;
    .end local v4    # "info$iterator":Ljava/util/Iterator;
    .end local v8    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "userId":I
    .end local v13    # "userList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v14

    .line 621
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 620
    throw v14

    .line 621
    .restart local v4    # "info$iterator":Ljava/util/Iterator;
    .restart local v8    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "userList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_3
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3
.end method

.method public getAllBlockedProvidersInUser(I)Ljava/util/List;
    .locals 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    iget-object v4, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 222
    const-string/jumbo v5, "LOCATION"

    const-string/jumbo v6, "blockedProviders"

    .line 221
    invoke-virtual {v4, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 223
    .local v3, "blockedProvidersList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v0, "blockedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 225
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "blockedProviders$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 226
    .local v1, "blockedProviders":Ljava/lang/String;
    const-string/jumbo v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 229
    .end local v1    # "blockedProviders":Ljava/lang/String;
    .end local v2    # "blockedProviders$iterator":Ljava/util/Iterator;
    :cond_0
    const-string/jumbo v4, ""

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_1
    return-object v0
.end method

.method public getAllLocationProviders(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 2
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/location/LocationPolicy;->enforceLocationPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 211
    invoke-direct {p0}, Lcom/android/server/enterprise/location/LocationPolicy;->setLocationManager()V

    .line 212
    iget-object v1, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mLM:Landroid/location/LocationManager;

    invoke-virtual {v1}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    .line 213
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-object v0
.end method

.method public getIndividualLocationProvider(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "sProvider"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 181
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/location/LocationPolicy;->getAllLocationProviders(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v1

    .line 182
    .local v1, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 185
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {p0, p2, v4}, Lcom/android/server/enterprise/location/LocationPolicy;->isLocationProviderBlockedAsUser(Ljava/lang/String;I)Z

    move-result v0

    .line 187
    .local v0, "isBlocked":Z
    const-string/jumbo v4, "gps"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 188
    if-eqz v0, :cond_1

    .line 189
    iget-object v4, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mResolver:Landroid/content/ContentResolver;

    .line 190
    const-string/jumbo v5, "gps"

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 189
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->isLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v4

    .line 188
    if-eqz v4, :cond_1

    .line 191
    return v3

    .line 183
    .end local v0    # "isBlocked":Z
    :cond_0
    return v2

    .line 194
    .restart local v0    # "isBlocked":Z
    :cond_1
    if-eqz v0, :cond_2

    :goto_0
    return v2

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method public isGPSOn(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 401
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 402
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/location/LocationPolicy;->isGPSOn(I)Z

    move-result v1

    return v1
.end method

.method public isGPSStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 291
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 292
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/location/LocationPolicy;->isGPSStateChangeAllowedAsUser(I)Z

    move-result v1

    return v1
.end method

.method public isLocationProviderBlocked(Ljava/lang/String;)Z
    .locals 3
    .param p1, "sProvider"    # Ljava/lang/String;

    .prologue
    .line 199
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 200
    .local v0, "userId":I
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/location/LocationPolicy;->isLocationProviderBlockedAsUser(Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method public isLocationProviderBlockedAsUser(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "sProvider"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 501
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/location/LocationPolicy;->getAllBlockedProvidersInUser(I)Ljava/util/List;

    move-result-object v0

    .line 502
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 503
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 505
    :cond_0
    return v2
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 554
    return-void
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 510
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 517
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 518
    const/4 v2, 0x0

    .line 517
    invoke-direct {v1, p1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 519
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/location/LocationPolicy;->updateSystemUIMonitor(I)V

    .line 515
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 530
    return-void
.end method

.method public setGPSStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    const/4 v5, 0x0

    .line 257
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/location/LocationPolicy;->enforceLocationPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 258
    const/4 v3, 0x0

    .line 259
    .local v3, "result":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v4

    .line 262
    .local v4, "userId":I
    invoke-static {v4}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 263
    const-string/jumbo v5, "LocationPolicyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setGPSStateChangeAllowed() :failed because userid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    return v3

    .line 267
    :cond_0
    iget-object v6, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v8, "LOCATION"

    const-string/jumbo v9, "forceProviders"

    if-eqz p2, :cond_3

    :goto_0
    invoke-virtual {v6, v7, v8, v9, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    .line 268
    .local v3, "result":Z
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/location/LocationPolicy;->isGPSStateChangeAllowedAsUser(I)Z

    move-result v2

    .line 269
    .local v2, "isAllowd":Z
    if-eqz v3, :cond_1

    .line 270
    invoke-direct {p0, v4, v2}, Lcom/android/server/enterprise/location/LocationPolicy;->setGPSStateChangeAllowedSystemUI(IZ)V

    .line 272
    :cond_1
    if-eqz v3, :cond_2

    if-nez v4, :cond_2

    .line 273
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v5, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 275
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string/jumbo v5, "LocationPolicy"

    const-string/jumbo v6, "setGPSStateChangeAllowed"

    invoke-virtual {v1, v5, v6, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 276
    const-string/jumbo v5, "LocationPolicyService"

    const-string/jumbo v6, "setGPSStateChangeAllowed() calling gearPolicyManager"

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_2
    :goto_1
    const-string/jumbo v5, "LocationPolicyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setGPSStateChangeAllowed() ret = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return v3

    .line 267
    .end local v2    # "isAllowd":Z
    .local v3, "result":Z
    :cond_3
    const/4 v5, 0x1

    goto :goto_0

    .line 277
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .restart local v2    # "isAllowd":Z
    .local v3, "result":Z
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "LocationPolicyService"

    const-string/jumbo v6, "setGPSStateChangeAllowed() failed calling gearPolicyManager"

    invoke-static {v5, v6, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setIndividualLocationProvider(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z
    .locals 18
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "sProvider"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    .line 113
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/location/LocationPolicy;->enforceLocationPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 115
    move-object/from16 v0, p1

    iget v2, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 119
    .local v8, "userId":I
    invoke-static {v8}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    const-string/jumbo v2, "LocationPolicyService"

    const-string/jumbo v3, "setIndividualLocationProvider : failed because called from container"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const/4 v2, 0x0

    return v2

    .line 124
    :cond_0
    const/4 v14, 0x1

    .line 125
    .local v14, "result":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/location/LocationPolicy;->setLocationManager()V

    .line 126
    move-object/from16 v0, p1

    iget v2, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/location/LocationPolicy;->getBlockedList(I)Ljava/util/ArrayList;

    move-result-object v9

    .line 127
    .local v9, "blockedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p2, :cond_1

    .line 128
    const-string/jumbo v2, "LocationPolicyService"

    const-string/jumbo v3, "setIndividualLocationProvider : sProvider is null"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const/4 v2, 0x0

    return v2

    .line 131
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 134
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/location/LocationPolicy;->getAllLocationProviders(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v11

    .line 135
    .local v11, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v11, :cond_4

    move-object/from16 v0, p2

    invoke-interface {v11, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 141
    monitor-enter p0

    .line 142
    if-eqz p3, :cond_5

    .line 143
    :try_start_0
    move-object/from16 v0, p2

    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 144
    invoke-direct/range {p0 .. p2}, Lcom/android/server/enterprise/location/LocationPolicy;->removeFromBlocked(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v14

    .end local v14    # "result":Z
    :cond_2
    :goto_0
    monitor-exit p0

    .line 157
    if-eqz v14, :cond_3

    .line 158
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/enterprise/location/LocationPolicy;->getIndividualLocationProvider(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v10

    .line 159
    .local v10, "isAllowed":Z
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v8, v1, v10}, Lcom/android/server/enterprise/location/LocationPolicy;->setLocationProviderAllowedSystemUI(ILjava/lang/String;Z)V

    .line 160
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 163
    .local v12, "psToken":J
    :try_start_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string/jumbo v6, "LocationPolicy"

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p3, :cond_6

    const-string/jumbo v2, "enabled"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " location provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 162
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 167
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 170
    .end local v10    # "isAllowed":Z
    .end local v12    # "psToken":J
    :cond_3
    return v14

    .line 136
    .restart local v14    # "result":Z
    :cond_4
    const/4 v2, 0x0

    return v2

    .line 147
    :cond_5
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 148
    .local v16, "token":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/location/LocationPolicy;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v2, v0, v1, v8}, Landroid/provider/Settings$Secure;->setLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 149
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 151
    move-object/from16 v0, p2

    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 152
    invoke-direct/range {p0 .. p2}, Lcom/android/server/enterprise/location/LocationPolicy;->addToBlocked(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v14

    .local v14, "result":Z
    goto :goto_0

    .line 141
    .end local v16    # "token":J
    .local v14, "result":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 164
    .end local v14    # "result":Z
    .restart local v10    # "isAllowed":Z
    .restart local v12    # "psToken":J
    :cond_6
    :try_start_3
    const-string/jumbo v2, "disabled"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 166
    :catchall_1
    move-exception v2

    .line 167
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 166
    throw v2

    .line 172
    .end local v10    # "isAllowed":Z
    .end local v11    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "psToken":J
    .restart local v14    # "result":Z
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid provider name !"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public startGPS(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 20
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "start"    # Z

    .prologue
    .line 328
    const/16 v16, 0x0

    .line 330
    .local v16, "ret":Z
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/location/LocationPolicy;->enforceLocationPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 331
    const-string/jumbo v12, "gps"

    .line 332
    .local v12, "provider":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v8

    .line 335
    .local v8, "userId":I
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/location/LocationPolicy;->getAllLocationProviders(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v13

    .line 336
    .local v13, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v13, :cond_0

    invoke-interface {v13, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 341
    invoke-static {v8}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 343
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/location/LocationPolicy;->isGPSStateChangeAllowedAsUser(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 344
    const-string/jumbo v2, "LocationPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startGPS() failed in container. userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    return v16

    .line 337
    :cond_0
    const-string/jumbo v2, "LocationPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startGPS() failed. invalid provider = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    return v16

    .line 350
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/location/LocationPolicy;->isGPSStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 351
    const-string/jumbo v2, "LocationPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startGPS() failed. start = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    return v16

    .line 354
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/location/LocationPolicy;->isGPSOn(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v17

    .line 355
    .local v17, "state_ison":Z
    if-eqz p2, :cond_3

    if-nez v17, :cond_6

    :cond_3
    if-nez p2, :cond_4

    if-eqz v17, :cond_6

    .line 360
    :cond_4
    monitor-enter p0

    .line 361
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v18

    .line 363
    .local v18, "token":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/location/LocationPolicy;->mResolver:Landroid/content/ContentResolver;

    move/from16 v0, p2

    invoke-static {v2, v12, v0, v8}, Landroid/provider/Settings$Secure;->setLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v16

    .line 367
    .local v16, "ret":Z
    :try_start_2
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v16    # "ret":Z
    :goto_0
    monitor-exit p0

    .line 371
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 374
    .local v14, "psToken":J
    :try_start_3
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string/jumbo v6, "LocationPolicy"

    .line 375
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_7

    const-string/jumbo v2, "started"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " GPS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 373
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 378
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 381
    if-eqz v16, :cond_5

    if-nez v8, :cond_5

    .line 382
    new-instance v10, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/location/LocationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v10, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 384
    .local v10, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_4
    const-string/jumbo v2, "LocationPolicy"

    const-string/jumbo v3, "startGPS"

    move/from16 v0, p2

    invoke-virtual {v10, v2, v3, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 385
    const-string/jumbo v2, "LocationPolicyService"

    const-string/jumbo v3, "startGPS() calling gearPolicyManager"

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 390
    .end local v10    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_5
    :goto_2
    const-string/jumbo v2, "LocationPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startGPS() ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    return v16

    .line 356
    .end local v14    # "psToken":J
    .end local v18    # "token":J
    .local v16, "ret":Z
    :cond_6
    const-string/jumbo v2, "LocationPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startGPS() failed. same state has requested. = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    return v16

    .line 364
    .restart local v18    # "token":J
    :catch_0
    move-exception v11

    .line 365
    .local v11, "ignore":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v2, "LocationPolicyService"

    const-string/jumbo v3, "startGPS() failed."

    invoke-static {v2, v3, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 367
    :try_start_6
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 360
    .end local v11    # "ignore":Ljava/lang/Exception;
    .end local v16    # "ret":Z
    .end local v18    # "token":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 366
    .restart local v16    # "ret":Z
    .restart local v18    # "token":J
    :catchall_1
    move-exception v2

    .line 367
    :try_start_7
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 366
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 375
    .end local v16    # "ret":Z
    .restart local v14    # "psToken":J
    :cond_7
    :try_start_8
    const-string/jumbo v2, "stopped"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/16 :goto_1

    .line 377
    :catchall_2
    move-exception v2

    .line 378
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 377
    throw v2

    .line 386
    .restart local v10    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_1
    move-exception v9

    .line 387
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "LocationPolicyService"

    const-string/jumbo v3, "startGPS() failed calling gearPolicyManager"

    invoke-static {v2, v3, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 524
    return-void
.end method
