.class public Lcom/android/server/enterprise/ccm/ClientCertificateManager;
.super Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;
.source "ClientCertificateManager.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;,
        Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;,
        Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;
    }
.end annotation


# static fields
.field private static final BUILD_FINGERPRINT:Ljava/lang/String; = "ro.build.date"

.field private static final CCM_PRIVATE_KEY:I = 0x3

.field private static final CCM_SAVED_BUILD_FINGERPRINT:Ljava/lang/String; = "persist.sys.ccm.date"

.field private static final CSR_MAX_SUBJECT_LENGTH:I = 0x200

.field private static final DBG:Z

.field public static final KEYSTORE_KEYCHAIN_CCM_MARKER:Ljava/lang/String; = "keystorekeychain"

.field private static final KNOX_CCM_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_CCM"

.field private static final KNOX_CCM_PERMISSION_NEW:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CCM"

.field private static TAG:Ljava/lang/String;

.field private static final defaultPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final INVALID_SLOT_ID:J

.field private final TIMA_SERVICE:Ljava/lang/String;

.field private final TZ_CCM_APP_NAME:Ljava/lang/String;

.field private final TZ_CCM_SUCCESS:J

.field private mContext:Landroid/content/Context;

.field private mDefaultCertAlias:Ljava/lang/String;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mIsTimaVersion30:Z

.field private mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

.field private mPersonaObr:Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;

.field private mPersonaObservers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;",
            ">;"
        }
    .end annotation
.end field

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mSlotCount:I

.field private final mTimaService:Landroid/service/tima/ITimaService;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/enterprise/ccm/ClientCertificateManager;)Lcom/samsung/android/knox/SemPersonaManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCCMDefaultPolicyRecord(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z
    .locals 1
    .param p1, "containerId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCCMProfile(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->unregisterPersonaObserver(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/enterprise/ccm/ClientCertificateManager;II)Z
    .locals 1
    .param p1, "adminId"    # I
    .param p2, "userId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCSRProfileUsingAdminId(II)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z
    .locals 1
    .param p1, "containerId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCertificateProfile(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMDefaultCertStore(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/enterprise/ccm/ClientCertificateManager;IZ)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "enable"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->setCCMAsDefaultCertStore(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z
    .locals 1
    .param p1, "containerId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->setCCMProfileDefaultForContainer(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/android/server/enterprise/ccm/ClientCertificateManager;IZZZ)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "isContainerClbk"    # Z
    .param p3, "lock"    # Z
    .param p4, "regForDefCert"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->updateLockStatus(IZZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/android/server/enterprise/ccm/ClientCertificateManager;ILcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "ACMethod"    # Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->provisionUser(ILcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->registerPersonaObserver(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 149
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    .line 151
    const-string/jumbo v0, "ClientCertificateManager Service"

    sput-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 191
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.samsung.android.spayfw"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.spay"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->defaultPackageList:Ljava/util/List;

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 193
    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;-><init>()V

    .line 155
    iput-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    .line 156
    iput-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 157
    iput-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 158
    iput-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

    .line 159
    new-instance v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;

    invoke-direct {v4, p0, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;-><init>(Lcom/android/server/enterprise/ccm/ClientCertificateManager;Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;)V

    iput-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaObr:Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;

    .line 160
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaObservers:Ljava/util/HashMap;

    .line 161
    iput v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    .line 162
    iput-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mDefaultCertAlias:Ljava/lang/String;

    .line 164
    const-string/jumbo v4, "tima"

    iput-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TIMA_SERVICE:Ljava/lang/String;

    .line 168
    iput-boolean v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    .line 174
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TZ_CCM_SUCCESS:J

    .line 185
    const-wide v4, 0xffffffffL

    iput-wide v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->INVALID_SLOT_ID:J

    .line 188
    const-string/jumbo v4, "tz_ccm"

    iput-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TZ_CCM_APP_NAME:Ljava/lang/String;

    .line 3785
    new-instance v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;-><init>(Lcom/android/server/enterprise/ccm/ClientCertificateManager;)V

    iput-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 194
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_0

    .line 195
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "ClientCertificateManager Constructor"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    iput-object p1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    .line 197
    new-instance v4, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 199
    const-string/jumbo v4, "tima"

    .line 198
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mTimaService:Landroid/service/tima/ITimaService;

    .line 200
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->setupIntentFilters()V

    .line 204
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    .line 205
    const-string/jumbo v5, "persona"

    .line 204
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

    .line 206
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v4, :cond_1

    .line 207
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

    iget-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaObr:Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;

    invoke-virtual {v4, v5}, Lcom/samsung/android/knox/SemPersonaManager;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z

    .line 209
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v4, v7}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v3

    .line 210
    .local v3, "personaList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    if-eqz v3, :cond_1

    .line 211
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "info$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaInfo;

    .line 212
    .local v1, "info":Lcom/samsung/android/knox/SemPersonaInfo;
    iget v4, v1, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->registerPersonaObserver(I)V

    goto :goto_0

    .line 217
    .end local v1    # "info":Lcom/samsung/android/knox/SemPersonaInfo;
    .end local v2    # "info$iterator":Ljava/util/Iterator;
    .end local v3    # "personaList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getSlotCount()I

    move-result v4

    iput v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    .line 220
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mTimaService:Landroid/service/tima/ITimaService;

    if-eqz v4, :cond_3

    .line 222
    :try_start_0
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_2

    .line 223
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Called TIMA service getTimaVersion"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_2
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v4}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "3.0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 225
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :cond_3
    :goto_1
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static native CCM_SetTokenTUIPasswd(II)I
.end method

.method static native CCM_SetTokenTUIProperty(ILjava/lang/String;[BII)I
.end method

.method private addDefaultPackageToExemptList()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1188
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "addDefaultPackageToExemptList"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->defaultPackageList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 1190
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->defaultPackageList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1191
    .local v0, "defaultPackageName":Ljava/lang/String;
    invoke-direct {p0, v6, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getPackageUid(ILjava/lang/String;)I

    move-result v2

    .line 1192
    .local v2, "uid":I
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "defaultPackageName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", uid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    :cond_1
    const/4 v3, -0x1

    if-eq v3, v2, :cond_2

    .line 1194
    const/4 v3, 0x1

    const/16 v4, 0x3e8

    invoke-static {v3, v4, v6, v2, v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_manage_exempt_list(ZIIIZ)J

    .line 1189
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1187
    .end local v0    # "defaultPackageName":Ljava/lang/String;
    .end local v2    # "uid":I
    :cond_3
    return-void
.end method

.method private addExemptList()V
    .locals 14

    .prologue
    const/4 v13, -0x1

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 257
    const/4 v0, 0x0

    .line 258
    .local v0, "DB":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 259
    .local v2, "c":Landroid/database/Cursor;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v3, "containerId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v1, "adminUid":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "/data/system/enterprise.db"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 263
    .local v0, "DB":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v7, "SELECT * FROM MUMCONTAINER;"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 264
    .local v2, "c":Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 265
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_2

    .line 266
    const/4 v7, 0x0

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    const/4 v7, 0x1

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 271
    .end local v0    # "DB":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v4

    .line 273
    .local v4, "e":Ljava/lang/Exception;
    if-eqz v2, :cond_0

    .line 274
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 275
    :cond_0
    if-eqz v0, :cond_1

    .line 276
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 278
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 279
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "No container"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-void

    .line 273
    .restart local v0    # "DB":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "c":Landroid/database/Cursor;
    :cond_2
    if-eqz v2, :cond_3

    .line 274
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 275
    :cond_3
    if-eqz v0, :cond_1

    .line 276
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 272
    .end local v0    # "DB":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v7

    .line 273
    if-eqz v2, :cond_4

    .line 274
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 275
    :cond_4
    if-eqz v0, :cond_5

    .line 276
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 272
    :cond_5
    throw v7

    .line 284
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_a

    .line 285
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_b

    .line 286
    const/4 v5, -0x1

    .line 287
    .local v5, "emailUid":I
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string/jumbo v8, "com.samsung.android.email.provider"

    invoke-direct {p0, v7, v8}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getPackageUid(ILjava/lang/String;)I

    move-result v5

    .line 288
    if-eq v5, v13, :cond_8

    .line 289
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v12, v8, v7, v5, v11}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_manage_exempt_list(ZIIIZ)J

    .line 285
    :cond_7
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 291
    :cond_8
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string/jumbo v8, "com.samsung.android.email.sync"

    invoke-direct {p0, v7, v8}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getPackageUid(ILjava/lang/String;)I

    move-result v5

    .line 292
    if-eq v5, v13, :cond_9

    .line 293
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v12, v8, v7, v5, v11}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_manage_exempt_list(ZIIIZ)J

    goto :goto_3

    .line 295
    :cond_9
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string/jumbo v8, "com.android.exchange"

    invoke-direct {p0, v7, v8}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getPackageUid(ILjava/lang/String;)I

    move-result v5

    .line 296
    if-eq v5, v13, :cond_7

    .line 297
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v12, v8, v7, v5, v11}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_manage_exempt_list(ZIIIZ)J

    goto :goto_3

    .line 303
    .end local v5    # "emailUid":I
    .end local v6    # "i":I
    :cond_a
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "No Admin for this container"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    return-void

    .line 255
    .restart local v6    # "i":I
    :cond_b
    return-void
.end method

.method static native ccm_create_slot(IIILjava/lang/String;)J
.end method

.method static native ccm_delete_alias_list(I[Ljava/lang/String;)J
.end method

.method static native ccm_delete_certificate(IILjava/lang/String;)J
.end method

.method static native ccm_delete_csr_profile(IILjava/lang/String;)J
.end method

.method static native ccm_delete_slot(II)J
.end method

.method static native ccm_gen_csr_using_template(IILjava/lang/String;Ljava/lang/String;[B)[B
.end method

.method static native ccm_gen_csr_without_template(III[BLjava/lang/String;[B)[B
.end method

.method static native ccm_gen_key_pair(IILjava/lang/String;I)[B
.end method

.method static native ccm_generate_csr(IILjava/lang/String;)[B
.end method

.method static native ccm_get_aliases_having_private_key(I)[Ljava/lang/String;
.end method

.method static native ccm_get_error_message(J)Ljava/lang/String;
.end method

.method static native ccm_install_certificate(IIZZZLjava/lang/String;[BLjava/lang/String;)J
.end method

.method static native ccm_install_object(IILjava/lang/String;I[BLjava/lang/String;ZZ)J
.end method

.method static native ccm_manage_exempt_list(ZIIIZ)J
.end method

.method static native ccm_set_csr_profile(IILjava/lang/String;I[BI)J
.end method

.method static native ccm_update_lock_status(IIZ)J
.end method

.method private checkAFW(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 866
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_0

    .line 867
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "in checkAFW: inAFW userId - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_0
    const/4 v1, 0x0

    .line 870
    .local v1, "isAFW":Z
    if-nez p1, :cond_1

    .line 871
    iget-object v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 872
    .local v0, "dpms":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 873
    const/4 v1, 0x1

    .line 874
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_1

    .line 875
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "in checkAFW: inAFW isAFW set true for userId 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    .end local v0    # "dpms":Landroid/app/admin/DevicePolicyManager;
    :cond_1
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_2

    .line 919
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "in checkAFW: inAFW isAFW - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    :cond_2
    return v1
.end method

.method private checkAliasExists(IILjava/lang/String;Z)Z
    .locals 8
    .param p1, "adminId"    # I
    .param p2, "userId"    # I
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "isCsrRecord"    # Z

    .prologue
    const/4 v7, 0x0

    .line 4405
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_0

    .line 4406
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "in checkAliasExists"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4408
    :cond_0
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_1

    .line 4409
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AdminId - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", UserId - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4410
    const-string/jumbo v6, ", Alias - "

    .line 4409
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4410
    const-string/jumbo v6, ", isCsrRecord - "

    .line 4409
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4412
    :cond_1
    if-eqz p4, :cond_3

    const/4 v0, 0x1

    .line 4415
    .local v0, "csrRecordIntValue":I
    :goto_0
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4416
    .local v1, "cvW":Landroid/content/ContentValues;
    const-string/jumbo v4, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4417
    const-string/jumbo v4, "uid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4418
    const-string/jumbo v4, "alias"

    invoke-virtual {v1, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4419
    const-string/jumbo v4, "csr"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4421
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 4422
    const-string/jumbo v5, "CCMCertTable"

    .line 4421
    invoke-virtual {v4, v5, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v3

    .line 4424
    .local v3, "rowCount":I
    if-lez v3, :cond_4

    .line 4425
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_2

    .line 4426
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Alias Exists"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4427
    :cond_2
    const/4 v4, 0x1

    return v4

    .line 4412
    .end local v0    # "csrRecordIntValue":I
    .end local v1    # "cvW":Landroid/content/ContentValues;
    .end local v3    # "rowCount":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "csrRecordIntValue":I
    goto :goto_0

    .line 4429
    :catch_0
    move-exception v2

    .line 4430
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_4

    .line 4431
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "checkAliasExists - Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4434
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    return v7
.end method

.method private checkDefaultCCMProfile()Z
    .locals 7

    .prologue
    .line 1029
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "checkDefaultCCMProfile"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    :cond_0
    const/4 v4, 0x0

    .line 1031
    .local v4, "prepared":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getDefaultPackageList()Ljava/util/List;

    move-result-object v3

    .line 1032
    .local v3, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 1033
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->defaultPackageList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 1034
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->defaultPackageList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1035
    .local v1, "defaultPackageName":Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1036
    .local v0, "contains":Z
    if-eqz v0, :cond_1

    .line 1037
    const/4 v4, 0x1

    .line 1033
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1039
    :cond_1
    const/4 v4, 0x0

    .line 1044
    .end local v0    # "contains":Z
    .end local v1    # "defaultPackageName":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_2
    return v4
.end method

.method private checkMPforCCM()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 3884
    const/4 v7, 0x0

    .line 3885
    .local v7, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v8, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "user"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    .line 3886
    .local v6, "userManager":Landroid/os/UserManager;
    if-eqz v6, :cond_0

    .line 3887
    invoke-virtual {v6, v10}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v7

    .line 3890
    .end local v7    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_0
    if-eqz v7, :cond_8

    .line 3891
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "user$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 3892
    .local v4, "user":Landroid/content/pm/UserInfo;
    sget-boolean v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v8, :cond_2

    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "checkMPforCCM() user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", CCM? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, v4, Landroid/content/pm/UserInfo;->hasCCMBeenProvisioned:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3893
    :cond_2
    iget-boolean v8, v4, Landroid/content/pm/UserInfo;->hasCCMBeenProvisioned:Z

    if-nez v8, :cond_6

    .line 3894
    const/4 v3, 0x0

    .line 3895
    .local v3, "provision":Z
    iget-object v8, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "device_policy"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 3897
    .local v1, "dpms":Landroid/app/admin/DevicePolicyManager;
    iget v8, v4, Landroid/content/pm/UserInfo;->id:I

    if-nez v8, :cond_5

    .line 3898
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 3899
    const/4 v3, 0x1

    .line 3908
    :cond_3
    :goto_1
    sget-boolean v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v8, :cond_4

    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "checkMPforCCM() user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", provision? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3909
    :cond_4
    if-eqz v3, :cond_1

    .line 3910
    iget v8, v4, Landroid/content/pm/UserInfo;->id:I

    sget-object v9, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->AFW:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    invoke-direct {p0, v8, v9}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->provisionUser(ILcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;)V

    .line 3911
    sget-boolean v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v8, :cond_1

    .line 3912
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "in checkMPforCCM(): provisionUser user.id CCMProfile.AccessControlMethod.AFW inAFW"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3902
    :cond_5
    iget v8, v4, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v8, v8, 0x20

    const/16 v9, 0x20

    if-ne v8, v9, :cond_3

    .line 3903
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v8

    if-nez v8, :cond_3

    .line 3904
    const/4 v3, 0x1

    goto :goto_1

    .line 3916
    .end local v1    # "dpms":Landroid/app/admin/DevicePolicyManager;
    .end local v3    # "provision":Z
    :cond_6
    iget v8, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v8}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getMUMContainerOwnerUid(I)I

    move-result v2

    .line 3918
    .local v2, "mumContainerOwnerUid":I
    iget v8, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v8, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 3920
    .local v0, "adminId":I
    sget-boolean v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v8, :cond_7

    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "checkMPforCCM() mumContainerOwnerUid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3921
    :cond_7
    sget-boolean v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v8, :cond_1

    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "checkMPforCCM() adminId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3883
    .end local v0    # "adminId":I
    .end local v2    # "mumContainerOwnerUid":I
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    .end local v5    # "user$iterator":Ljava/util/Iterator;
    :cond_8
    return-void
.end method

.method private checkRegex(Ljava/lang/String;)Z
    .locals 2
    .param p1, "regex"    # Ljava/lang/String;

    .prologue
    .line 3705
    :try_start_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3710
    const/4 v1, 0x1

    return v1

    .line 3706
    :catch_0
    move-exception v0

    .line 3707
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3708
    const/4 v1, 0x0

    return v1
.end method

.method private deleteCCMDefaultPolicyRecord(I)Z
    .locals 7
    .param p1, "userId"    # I

    .prologue
    const/4 v6, 0x0

    .line 4699
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_0

    .line 4700
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "in deleteCCMDefaultPolicyRecord"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4702
    :cond_0
    const/4 v4, 0x1

    :try_start_0
    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v4, "uid"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 4703
    .local v2, "sColumns":[Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 4704
    .local v0, "contId":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 4705
    .local v3, "sValues":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 4706
    const-string/jumbo v5, "CCMDefaultPolicy"

    .line 4705
    invoke-virtual {v4, v5, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    return v4

    .line 4707
    .end local v0    # "contId":Ljava/lang/String;
    .end local v2    # "sColumns":[Ljava/lang/String;
    .end local v3    # "sValues":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 4708
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "deleteCCMDefaultPolicyRecord() failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4710
    return v6
.end method

.method private deleteCCMProfile(I)Z
    .locals 10
    .param p1, "containerId"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2227
    iget-boolean v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v4, :cond_1

    .line 2228
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_0

    .line 2229
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 2230
    const-string/jumbo v5, "deleteCCMProfile - TIMA version does not include CCM"

    .line 2229
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2231
    :cond_0
    return v8

    .line 2235
    :cond_1
    invoke-static {v8, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_slot(II)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v6, v4

    if-eqz v4, :cond_3

    .line 2236
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_2

    .line 2237
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "deleteCCMProfile - native ccm_delete_slot failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2238
    :cond_2
    return v8

    .line 2240
    :cond_3
    invoke-direct {p0, v8, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->resetDefaultCCMProfile(II)V

    .line 2242
    const/4 v4, 0x1

    :try_start_0
    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v4, "uid"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 2243
    .local v2, "sColumns":[Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 2244
    .local v0, "contId":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 2245
    .local v3, "sValues":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "ClientCertificateManagerTable"

    invoke-virtual {v4, v5, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 2248
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getSlotCount()I

    move-result v4

    iput v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2254
    .end local v0    # "contId":Ljava/lang/String;
    .end local v2    # "sColumns":[Ljava/lang/String;
    .end local v3    # "sValues":[Ljava/lang/String;
    :cond_4
    :goto_0
    return v9

    .line 2249
    :catch_0
    move-exception v1

    .line 2250
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_4

    .line 2251
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deleteCCMProfile - Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private deleteCCMProfileUsingAdminId(IIZ)Z
    .locals 10
    .param p1, "adminUid"    # I
    .param p2, "containerId"    # I
    .param p3, "useAdminIdOnly"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2177
    iget-boolean v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v3, :cond_1

    .line 2178
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_0

    .line 2179
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 2180
    const-string/jumbo v4, "deleteCCMProfileUsingAdminId - TIMA version does not include CCM"

    .line 2179
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2181
    :cond_0
    return v8

    .line 2185
    :cond_1
    invoke-static {p1, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_slot(II)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v6, v4

    if-eqz v3, :cond_3

    .line 2186
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_2

    .line 2187
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 2188
    const-string/jumbo v4, "deleteCCMProfileUsingAdminId - native ccm_delete_slot failed"

    .line 2187
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    :cond_2
    return v8

    .line 2191
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->resetDefaultCCMProfile(II)V

    .line 2195
    if-eqz p3, :cond_5

    .line 2196
    const/4 v3, 0x1

    :try_start_0
    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v3, "adminUid"

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 2197
    .local v1, "sColumns":[Ljava/lang/String;
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 2198
    .local v2, "sValues":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2199
    const-string/jumbo v4, "ClientCertificateManagerTable"

    .line 2198
    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 2209
    :goto_0
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getSlotCount()I

    move-result v3

    iput v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    .line 2217
    .end local v1    # "sColumns":[Ljava/lang/String;
    .end local v2    # "sValues":[Ljava/lang/String;
    :cond_4
    :goto_1
    return v9

    .line 2201
    :cond_5
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v3, "adminUid"

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 2202
    const-string/jumbo v3, "uid"

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 2203
    .restart local v1    # "sColumns":[Ljava/lang/String;
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 2204
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 2205
    .restart local v2    # "sValues":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2206
    const-string/jumbo v4, "ClientCertificateManagerTable"

    .line 2205
    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2210
    .end local v1    # "sColumns":[Ljava/lang/String;
    .end local v2    # "sValues":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2211
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_4

    .line 2212
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 2213
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "deleteCCMProfileUsingAdminId - Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2214
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 2213
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2212
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private deleteCSRProfileUsingAdminId(II)Z
    .locals 12
    .param p1, "adminId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 5032
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_0

    .line 5033
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "in deleteCSRProfileUsingAdminId"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5035
    :cond_0
    iget-boolean v7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v7, :cond_2

    .line 5036
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_1

    .line 5037
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 5038
    const-string/jumbo v8, "deleteCSRProfileUsingAdminId - TIMA version does not include CCM"

    .line 5037
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5039
    :cond_1
    const/4 v7, 0x0

    return v7

    .line 5042
    :cond_2
    const/4 v4, 0x0

    .line 5045
    .local v4, "templateList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5046
    .local v0, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v7, "csr"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5049
    const/4 v7, -0x1

    if-ne v7, p1, :cond_7

    .line 5050
    const-string/jumbo v7, "uid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5056
    :goto_0
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_3

    .line 5057
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "in deleteCSRProfileUsingAdminId: AdminId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 5058
    const-string/jumbo v9, ", userId: "

    .line 5057
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5061
    :cond_3
    iget-object v7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 5062
    const-string/jumbo v8, "CCMCertTable"

    const-string/jumbo v9, "alias"

    .line 5061
    invoke-virtual {v7, v8, v9, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    .line 5064
    .local v4, "templateList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_8

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_8

    .line 5066
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "templateName$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 5067
    .local v5, "templateName":Ljava/lang/String;
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_5

    .line 5068
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 5069
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "in deleteCSRProfileUsingAdminId - templateName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 5068
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5071
    :cond_5
    invoke-static {p1, p2, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_csr_profile(IILjava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v10, v8

    if-eqz v7, :cond_4

    .line 5073
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_6

    .line 5074
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 5075
    const-string/jumbo v8, "deleteCSRProfileUsingAdminId - native ccm_delete_csr_profile failed"

    .line 5074
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5076
    :cond_6
    const/4 v7, 0x0

    return v7

    .line 5052
    .end local v5    # "templateName":Ljava/lang/String;
    .end local v6    # "templateName$iterator":Ljava/util/Iterator;
    .local v4, "templateList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    const-string/jumbo v7, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5053
    const-string/jumbo v7, "uid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 5101
    .end local v0    # "cvWhere":Landroid/content/ContentValues;
    .end local v4    # "templateList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 5102
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_8

    .line 5103
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 5104
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "deleteCSRProfileUsingAdminId - Exception"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 5105
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    .line 5104
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 5103
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5108
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_8
    const/4 v7, 0x0

    return v7

    .line 5081
    .restart local v0    # "cvWhere":Landroid/content/ContentValues;
    .local v4, "templateList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "templateName$iterator":Ljava/util/Iterator;
    :cond_9
    const/4 v7, -0x1

    if-ne v7, p1, :cond_a

    .line 5082
    const/4 v7, 0x2

    :try_start_1
    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v7, "uid"

    const/4 v8, 0x0

    aput-object v7, v2, v8

    .line 5083
    const-string/jumbo v7, "csr"

    const/4 v8, 0x1

    aput-object v7, v2, v8

    .line 5084
    .local v2, "sColumns":[Ljava/lang/String;
    const/4 v7, 0x2

    new-array v3, v7, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v3, v8

    .line 5085
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v3, v8

    .line 5087
    .local v3, "sValues":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 5088
    const-string/jumbo v8, "CCMCertTable"

    .line 5087
    invoke-virtual {v7, v8, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 5099
    :goto_1
    const/4 v7, 0x1

    return v7

    .line 5090
    .end local v2    # "sColumns":[Ljava/lang/String;
    .end local v3    # "sValues":[Ljava/lang/String;
    :cond_a
    const/4 v7, 0x3

    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v7, "adminUid"

    const/4 v8, 0x0

    aput-object v7, v2, v8

    .line 5091
    const-string/jumbo v7, "uid"

    const/4 v8, 0x1

    aput-object v7, v2, v8

    const-string/jumbo v7, "csr"

    const/4 v8, 0x2

    aput-object v7, v2, v8

    .line 5092
    .restart local v2    # "sColumns":[Ljava/lang/String;
    const/4 v7, 0x3

    new-array v3, v7, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v3, v8

    .line 5093
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v3, v8

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v3, v8

    .line 5095
    .restart local v3    # "sValues":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 5096
    const-string/jumbo v8, "CCMCertTable"

    .line 5095
    invoke-virtual {v7, v8, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private deleteCertificateProfile(I)Z
    .locals 11
    .param p1, "containerId"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2569
    iget-boolean v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v3, :cond_1

    .line 2570
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_0

    .line 2571
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 2572
    const-string/jumbo v4, "deleteCertificateProfile - TIMA version does not include CCM"

    .line 2571
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2573
    :cond_0
    return v8

    .line 2577
    :cond_1
    const/4 v3, 0x0

    invoke-static {v8, p1, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_certificate(IILjava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v6, v4

    if-eqz v3, :cond_3

    .line 2578
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_2

    .line 2579
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 2580
    const-string/jumbo v4, "deleteCertificateProfile - native ccm_delete_certificate failed"

    .line 2579
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2581
    :cond_2
    return v8

    .line 2584
    :cond_3
    new-array v1, v10, [Ljava/lang/String;

    const-string/jumbo v3, "uid"

    aput-object v3, v1, v8

    const-string/jumbo v3, "csr"

    aput-object v3, v1, v9

    .line 2585
    .local v1, "sColumns":[Ljava/lang/String;
    new-array v2, v10, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    .line 2587
    .local v2, "sValues":[Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "CCMCertTable"

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2589
    return v9

    .line 2590
    :catch_0
    move-exception v0

    .line 2591
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_4

    .line 2592
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 2593
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "deleteCertificateProfile - Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2592
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2595
    :cond_4
    return v8
.end method

.method private deleteCertificateProfileUsingAdminId(IIZ)Z
    .locals 9
    .param p1, "adminUid"    # I
    .param p2, "containerId"    # I
    .param p3, "useAdminIdOnly"    # Z

    .prologue
    const/4 v8, 0x0

    .line 2519
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_0

    .line 2520
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "in deleteCertificateProfileUsingAdminId"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2522
    :cond_0
    iget-boolean v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v4, :cond_2

    .line 2523
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_1

    .line 2524
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 2525
    const-string/jumbo v5, "deleteCertificateProfileUsingAdminId - TIMA version does not include CCM"

    .line 2524
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    :cond_1
    return v8

    .line 2531
    :cond_2
    const/4 v4, 0x0

    .line 2530
    invoke-static {p1, p2, v4}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_certificate(IILjava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v6, v4

    if-eqz v4, :cond_4

    .line 2532
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_3

    .line 2533
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 2534
    const-string/jumbo v5, "deleteCertificateProfileUsingAdminId - native ccm_delete_certificate failed"

    .line 2533
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2535
    :cond_3
    return v8

    .line 2538
    :cond_4
    const/4 v1, 0x1

    .line 2540
    .local v1, "ret":Z
    if-eqz p3, :cond_7

    .line 2541
    const/4 v4, 0x2

    :try_start_0
    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v4, "adminUid"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 2542
    const-string/jumbo v4, "csr"

    const/4 v5, 0x1

    aput-object v4, v2, v5

    .line 2543
    .local v2, "sColumns":[Ljava/lang/String;
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 2544
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 2545
    .local v3, "sValues":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2546
    const-string/jumbo v5, "CCMCertTable"

    .line 2545
    invoke-virtual {v4, v5, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2561
    .end local v2    # "sColumns":[Ljava/lang/String;
    .end local v3    # "sValues":[Ljava/lang/String;
    :cond_5
    :goto_0
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_6

    .line 2562
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "out deleteCertificateProfileUsingAdminId"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2564
    :cond_6
    return v1

    .line 2548
    :cond_7
    const/4 v4, 0x3

    :try_start_1
    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v4, "adminUid"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 2549
    const-string/jumbo v4, "uid"

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const-string/jumbo v4, "csr"

    const/4 v5, 0x2

    aput-object v4, v2, v5

    .line 2550
    .restart local v2    # "sColumns":[Ljava/lang/String;
    const/4 v4, 0x3

    new-array v3, v4, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 2551
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 2552
    .restart local v3    # "sValues":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2553
    const-string/jumbo v5, "CCMCertTable"

    .line 2552
    invoke-virtual {v4, v5, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2555
    .end local v2    # "sColumns":[Ljava/lang/String;
    .end local v3    # "sValues":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2556
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 2557
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_5

    .line 2558
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deleteCertificateProfileUsingAdminId - Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2559
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 2558
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private deleteCertificateUsingAdminId(IILjava/lang/String;)Z
    .locals 20
    .param p1, "adminUid"    # I
    .param p2, "userId"    # I
    .param p3, "alias"    # Ljava/lang/String;

    .prologue
    .line 2454
    sget-boolean v15, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v15, :cond_0

    .line 2455
    sget-object v15, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "in deleteCertificateUsingAdminId"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2457
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v15, :cond_2

    .line 2458
    sget-boolean v15, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v15, :cond_1

    .line 2459
    sget-object v15, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 2460
    const-string/jumbo v16, "deleteCertificateUsingAdminId - TIMA version does not include CCM"

    .line 2459
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2461
    :cond_1
    const/4 v15, 0x0

    return v15

    .line 2465
    :cond_2
    :try_start_0
    invoke-static/range {p1 .. p3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_certificate(IILjava/lang/String;)J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v15, v18, v16

    if-eqz v15, :cond_4

    .line 2467
    sget-boolean v15, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v15, :cond_3

    .line 2468
    sget-object v15, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 2469
    const-string/jumbo v16, "deleteCertificateUsingAdminId - native ccm_delete_certificate failed"

    .line 2468
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2470
    :cond_3
    const/4 v15, 0x0

    return v15

    .line 2474
    :cond_4
    const/4 v3, 0x0

    .line 2475
    .local v3, "callerUid":I
    const/4 v15, 0x4

    new-array v11, v15, [Ljava/lang/String;

    const-string/jumbo v15, "adminUid"

    const/16 v16, 0x0

    aput-object v15, v11, v16

    .line 2476
    const-string/jumbo v15, "uid"

    const/16 v16, 0x1

    aput-object v15, v11, v16

    const-string/jumbo v15, "alias"

    const/16 v16, 0x2

    aput-object v15, v11, v16

    .line 2477
    const-string/jumbo v15, "csr"

    const/16 v16, 0x3

    aput-object v15, v11, v16

    .line 2478
    .local v11, "sIdColumns":[Ljava/lang/String;
    const/4 v15, 0x4

    new-array v13, v15, [Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v13, v16

    .line 2479
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    aput-object v15, v13, v16

    const/4 v15, 0x2

    aput-object p3, v13, v15

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x3

    aput-object v15, v13, v16

    .line 2480
    .local v13, "sIdValues":[Ljava/lang/String;
    const/4 v15, 0x1

    new-array v12, v15, [Ljava/lang/String;

    const-string/jumbo v15, "installerId"

    const/16 v16, 0x0

    aput-object v15, v12, v16

    .line 2482
    .local v12, "sIdReturnColumns":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2483
    const-string/jumbo v16, "CCMCertTable"

    .line 2482
    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v11, v13, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 2485
    .local v7, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_5

    .line 2486
    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 2487
    .local v6, "cv":Landroid/content/ContentValues;
    if-eqz v6, :cond_5

    .line 2488
    const-string/jumbo v15, "installerId"

    invoke-virtual {v6, v15}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 2489
    .local v4, "certInstallerId":Ljava/lang/Integer;
    if-eqz v4, :cond_5

    .line 2490
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2495
    .end local v4    # "certInstallerId":Ljava/lang/Integer;
    .end local v6    # "cv":Landroid/content/ContentValues;
    :cond_5
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 2496
    .local v2, "adminId":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 2497
    .local v5, "contId":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 2498
    .local v9, "installerId":Ljava/lang/String;
    const/4 v15, 0x5

    new-array v10, v15, [Ljava/lang/String;

    const-string/jumbo v15, "adminUid"

    const/16 v16, 0x0

    aput-object v15, v10, v16

    .line 2499
    const-string/jumbo v15, "uid"

    const/16 v16, 0x1

    aput-object v15, v10, v16

    const-string/jumbo v15, "alias"

    const/16 v16, 0x2

    aput-object v15, v10, v16

    .line 2500
    const-string/jumbo v15, "installerId"

    const/16 v16, 0x3

    aput-object v15, v10, v16

    const-string/jumbo v15, "csr"

    const/16 v16, 0x4

    aput-object v15, v10, v16

    .line 2501
    .local v10, "sColumns":[Ljava/lang/String;
    const/4 v15, 0x5

    new-array v14, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v2, v14, v15

    const/4 v15, 0x1

    aput-object v5, v14, v15

    const/4 v15, 0x2

    aput-object p3, v14, v15

    const/4 v15, 0x3

    aput-object v9, v14, v15

    .line 2502
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x4

    aput-object v15, v14, v16

    .line 2504
    .local v14, "sValues":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v16, "CCMCertTable"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v10, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2506
    const/4 v15, 0x1

    return v15

    .line 2507
    .end local v2    # "adminId":Ljava/lang/String;
    .end local v3    # "callerUid":I
    .end local v5    # "contId":Ljava/lang/String;
    .end local v7    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v9    # "installerId":Ljava/lang/String;
    .end local v10    # "sColumns":[Ljava/lang/String;
    .end local v11    # "sIdColumns":[Ljava/lang/String;
    .end local v12    # "sIdReturnColumns":[Ljava/lang/String;
    .end local v13    # "sIdValues":[Ljava/lang/String;
    .end local v14    # "sValues":[Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 2508
    .local v8, "e":Ljava/lang/Exception;
    sget-boolean v15, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v15, :cond_6

    .line 2509
    sget-object v15, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 2510
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "deleteCertificateUsingAdminId - Exception"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 2511
    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v17

    .line 2510
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 2509
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2513
    :cond_6
    const/4 v15, 0x0

    return v15
.end method

.method private deleteDefaultCCMProfile(J)V
    .locals 11
    .param p1, "slotId"    # J

    .prologue
    .line 1284
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "deleteDefaultCCMProfile : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    :cond_0
    const-wide v8, 0xffffffffL

    cmp-long v7, p1, v8

    if-nez v7, :cond_2

    .line 1286
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_1

    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "INVALID_SLOT_ID"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    :cond_1
    return-void

    .line 1289
    :cond_2
    const-string/jumbo v0, "1000"

    .line 1290
    .local v0, "adminUid":Ljava/lang/String;
    const-string/jumbo v1, "0"

    .line 1292
    .local v1, "containerId":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->defaultPackageList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_4

    .line 1294
    :try_start_0
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->defaultPackageList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1295
    .local v4, "packageName":Ljava/lang/String;
    const/4 v7, 0x4

    new-array v5, v7, [Ljava/lang/String;

    const-string/jumbo v7, "adminUid"

    const/4 v8, 0x0

    aput-object v7, v5, v8

    const-string/jumbo v7, "uid"

    const/4 v8, 0x1

    aput-object v7, v5, v8

    .line 1296
    const-string/jumbo v7, "slotId"

    const/4 v8, 0x2

    aput-object v7, v5, v8

    const-string/jumbo v7, "pkgName"

    const/4 v8, 0x3

    aput-object v7, v5, v8

    .line 1297
    .local v5, "sColumns":[Ljava/lang/String;
    const/4 v7, 0x4

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    .line 1298
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    const/4 v7, 0x3

    aput-object v4, v6, v7

    .line 1300
    .local v6, "sValues":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "ClientCertificateManagerTable"

    invoke-virtual {v7, v8, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1292
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "sColumns":[Ljava/lang/String;
    .end local v6    # "sValues":[Ljava/lang/String;
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1302
    :catch_0
    move-exception v2

    .line 1303
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_3

    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "deleteDefaultCCMProfile - Exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1304
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    .line 1303
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1283
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    return-void
.end method

.method private enforceAdminPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 337
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const/16 v2, 0x64

    if-ge v1, v2, :cond_1

    .line 339
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getProfileOwnerUid(I)I

    move-result v0

    .line 341
    .local v0, "profileOwnerUid":I
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-ne v1, v0, :cond_1

    .line 342
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_0

    .line 343
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "ClientCertificateManager.enforceAdminPermission() call comes from the profile owner"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_0
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    return-object v1

    .line 349
    .end local v0    # "profileOwnerUid":I
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 350
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 351
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "com.sec.enterprise.knox.permission.KNOX_CCM"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "com.samsung.android.knox.permission.KNOX_CCM"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 350
    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 353
    :cond_2
    return-object p1
.end method

.method private enforcePermission(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 2
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 319
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 320
    return-void

    .line 324
    :cond_0
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getProfileOwnerUid(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 325
    return-void

    .line 328
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 329
    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 330
    const-string/jumbo v1, "com.sec.enterprise.knox.permission.KNOX_CCM"

    .line 329
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    .line 317
    :cond_2
    return-void
.end method

.method private existDefaultProfile(J)Z
    .locals 17
    .param p1, "slotId"    # J

    .prologue
    .line 1250
    sget-boolean v14, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v14, :cond_0

    sget-object v14, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "existDefaultProfile : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-wide/from16 v0, p1

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    :cond_0
    const/4 v6, 0x0

    .line 1252
    .local v6, "exist":Z
    const-string/jumbo v4, "1000"

    .line 1253
    .local v4, "defaultAdminUid":Ljava/lang/String;
    const-string/jumbo v5, "0"

    .line 1254
    .local v5, "defaultContainerId":Ljava/lang/String;
    const/4 v14, 0x3

    new-array v10, v14, [Ljava/lang/String;

    const-string/jumbo v14, "adminUid"

    const/4 v15, 0x0

    aput-object v14, v10, v15

    .line 1255
    const-string/jumbo v14, "uid"

    const/4 v15, 0x1

    aput-object v14, v10, v15

    const-string/jumbo v14, "pkgName"

    const/4 v15, 0x2

    aput-object v14, v10, v15

    .line 1256
    .local v10, "sIdColumns_default":[Ljava/lang/String;
    const/4 v14, 0x1

    new-array v11, v14, [Ljava/lang/String;

    const-string/jumbo v14, "slotId"

    const/4 v15, 0x0

    aput-object v14, v11, v15

    .line 1257
    .local v11, "sReturnColumns":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    sget-object v14, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->defaultPackageList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v8, v14, :cond_1

    .line 1258
    sget-object v14, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->defaultPackageList:Ljava/util/List;

    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1259
    .local v9, "packageName":Ljava/lang/String;
    const/4 v14, 0x3

    new-array v12, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v4, v12, v14

    .line 1260
    const/4 v14, 0x1

    aput-object v5, v12, v14

    const/4 v14, 0x2

    aput-object v9, v12, v14

    .line 1262
    .local v12, "sValues":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1263
    const-string/jumbo v15, "ClientCertificateManagerTable"

    .line 1262
    invoke-virtual {v14, v15, v10, v12, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1266
    .local v3, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_2

    .line 1267
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 1268
    .local v2, "cv":Landroid/content/ContentValues;
    if-eqz v2, :cond_2

    .line 1269
    const-string/jumbo v14, "slotId"

    invoke-virtual {v2, v14}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    .line 1270
    .local v13, "slot":Ljava/lang/Integer;
    if-eqz v13, :cond_2

    .line 1271
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1272
    .local v7, "existSlotId":I
    int-to-long v14, v7

    cmp-long v14, v14, p1

    if-nez v14, :cond_2

    .line 1273
    const/4 v6, 0x1

    .line 1280
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v7    # "existSlotId":I
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v12    # "sValues":[Ljava/lang/String;
    .end local v13    # "slot":Ljava/lang/Integer;
    :cond_1
    return v6

    .line 1257
    .restart local v3    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v9    # "packageName":Ljava/lang/String;
    .restart local v12    # "sValues":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method private fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 4268
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_0

    .line 4269
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 4270
    .local v0, "newCInfo":Lcom/samsung/android/knox/ContextInfo;
    move-object p1, v0

    .line 4271
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_0

    .line 4272
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fixContextInfoForMP() returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/knox/ContextInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4275
    .end local v0    # "newCInfo":Lcom/samsung/android/knox/ContextInfo;
    :cond_0
    return-object p1
.end method

.method private getAdminIdForCaller(Lcom/samsung/android/knox/ContextInfo;ILjava/util/List;)I
    .locals 25
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 4154
    .local p3, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, -0x1

    .line 4155
    .local v5, "adminId":I
    const/4 v7, 0x0

    .line 4157
    .local v7, "caller":Ljava/lang/String;
    const/16 v21, 0x2

    :try_start_0
    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v21, "uid"

    const/16 v22, 0x0

    aput-object v21, v17, v22

    .line 4158
    const-string/jumbo v21, "pkgName"

    const/16 v22, 0x1

    aput-object v21, v17, v22

    .line 4159
    .local v17, "sColumns":[Ljava/lang/String;
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v21, "adminUid"

    const/16 v22, 0x0

    aput-object v21, v18, v22

    .line 4160
    .local v18, "sReturnColumns":[Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    .line 4161
    .local v20, "userIdString":Ljava/lang/String;
    const/4 v13, 0x0

    .line 4163
    .local v13, "pkgNames":[Ljava/lang/String;
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 4164
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    .line 4165
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v22

    .line 4164
    invoke-virtual/range {v21 .. v22}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v13

    .line 4170
    .local v13, "pkgNames":[Ljava/lang/String;
    :goto_0
    if-eqz v13, :cond_1

    .line 4171
    const/16 v21, 0x0

    array-length v0, v13

    move/from16 v22, v0

    :goto_1
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    aget-object v12, v13, v21

    .line 4172
    .local v12, "pkgName":Ljava/lang/String;
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v23, 0x0

    aput-object v20, v19, v23

    const/16 v23, 0x1

    aput-object v12, v19, v23

    .line 4174
    .local v19, "sValues":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v23, v0

    .line 4175
    const-string/jumbo v24, "ClientCertificateManagerTable"

    .line 4174
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    move-object/from16 v3, v19

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 4177
    .local v9, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v23

    if-lez v23, :cond_5

    .line 4178
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/ContentValues;

    const-string/jumbo v22, "adminUid"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    .line 4179
    .local v11, "iadminId":Ljava/lang/Integer;
    if-eqz v11, :cond_1

    .line 4180
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 4188
    .end local v9    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v11    # "iadminId":Ljava/lang/Integer;
    .end local v12    # "pkgName":Ljava/lang/String;
    .end local v19    # "sValues":[Ljava/lang/String;
    :cond_1
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v0, v5, :cond_3

    .line 4189
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v14, v0, [Ljava/lang/String;

    const-string/jumbo v21, "uid"

    const/16 v22, 0x0

    aput-object v21, v14, v22

    .line 4190
    const-string/jumbo v21, "allowAllPkgs"

    const/16 v22, 0x1

    aput-object v21, v14, v22

    .line 4191
    .local v14, "sAllColumns":[Ljava/lang/String;
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    aput-object v21, v16, v22

    .line 4192
    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    aput-object v21, v16, v22

    .line 4194
    .local v16, "sAllValues":[Ljava/lang/String;
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v15, v0, [Ljava/lang/String;

    const-string/jumbo v21, "adminUid"

    const/16 v22, 0x0

    aput-object v21, v15, v22

    .line 4195
    .local v15, "sAllReturnColumns":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 4197
    .local v9, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v21, v0

    .line 4198
    const-string/jumbo v22, "ClientCertificateManagerTable"

    .line 4197
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v14, v2, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 4201
    .local v9, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_2

    .line 4202
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    .line 4203
    .local v8, "cv":Landroid/content/ContentValues;
    if-eqz v8, :cond_2

    .line 4204
    const-string/jumbo v21, "adminUid"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 4205
    .local v6, "adminUid":Ljava/lang/Integer;
    if-eqz v6, :cond_2

    .line 4206
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 4211
    .end local v6    # "adminUid":Ljava/lang/Integer;
    .end local v8    # "cv":Landroid/content/ContentValues;
    :cond_2
    sget-boolean v21, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v21, :cond_3

    .line 4212
    sget-object v21, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "getAdminIdForCaller - "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4221
    .end local v9    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v13    # "pkgNames":[Ljava/lang/String;
    .end local v14    # "sAllColumns":[Ljava/lang/String;
    .end local v15    # "sAllReturnColumns":[Ljava/lang/String;
    .end local v16    # "sAllValues":[Ljava/lang/String;
    .end local v17    # "sColumns":[Ljava/lang/String;
    .end local v18    # "sReturnColumns":[Ljava/lang/String;
    .end local v20    # "userIdString":Ljava/lang/String;
    :cond_3
    :goto_2
    return v5

    .line 4167
    .local v13, "pkgNames":[Ljava/lang/String;
    .restart local v17    # "sColumns":[Ljava/lang/String;
    .restart local v18    # "sReturnColumns":[Ljava/lang/String;
    .restart local v20    # "userIdString":Ljava/lang/String;
    :cond_4
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "pkgNames":[Ljava/lang/String;
    check-cast v13, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .local v13, "pkgNames":[Ljava/lang/String;
    goto/16 :goto_0

    .line 4171
    .restart local v9    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v12    # "pkgName":Ljava/lang/String;
    .restart local v19    # "sValues":[Ljava/lang/String;
    :cond_5
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_1

    .line 4216
    .end local v9    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v12    # "pkgName":Ljava/lang/String;
    .end local v13    # "pkgNames":[Ljava/lang/String;
    .end local v17    # "sColumns":[Ljava/lang/String;
    .end local v18    # "sReturnColumns":[Ljava/lang/String;
    .end local v19    # "sValues":[Ljava/lang/String;
    .end local v20    # "userIdString":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 4217
    .local v10, "e":Ljava/lang/Exception;
    sget-boolean v21, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v21, :cond_3

    .line 4218
    sget-object v21, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "getAdminIdForCaller - Exception"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 3
    .param p1, "cInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 540
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 541
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ClientCertificateManager.getCallingOrCurrentUserId() cInfo.mContainerId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_0
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    .line 544
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    return v0

    .line 546
    :cond_1
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    return v0
.end method

.method private getDefaultPackageList()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 995
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "getDefaultPackageList"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1000
    .local v5, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v0, 0x3e8

    .line 1001
    .local v0, "adminUid":I
    const/4 v1, 0x0

    .line 1003
    .local v1, "containerId":I
    const/4 v10, 0x2

    :try_start_0
    new-array v7, v10, [Ljava/lang/String;

    const-string/jumbo v10, "adminUid"

    const/4 v11, 0x0

    aput-object v10, v7, v11

    .line 1004
    const-string/jumbo v10, "uid"

    const/4 v11, 0x1

    aput-object v10, v7, v11

    .line 1005
    .local v7, "sColumns":[Ljava/lang/String;
    const/4 v10, 0x2

    new-array v9, v10, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 1006
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    .line 1008
    .local v9, "sValues":[Ljava/lang/String;
    const/4 v10, 0x1

    new-array v8, v10, [Ljava/lang/String;

    const-string/jumbo v10, "pkgName"

    const/4 v11, 0x0

    aput-object v10, v8, v11

    .line 1010
    .local v8, "sReturnColumns":[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1011
    const-string/jumbo v11, "ClientCertificateManagerTable"

    .line 1010
    invoke-virtual {v10, v11, v7, v9, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1013
    .local v2, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 1014
    sget-boolean v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v10, :cond_0

    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "cvList size : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_2

    .line 1016
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    const-string/jumbo v11, "pkgName"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1017
    .local v6, "packageName":Ljava/lang/String;
    sget-boolean v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v10, :cond_1

    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "packageName in DB : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    :cond_1
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1015
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1021
    .end local v2    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v4    # "i":I
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "sColumns":[Ljava/lang/String;
    .end local v8    # "sReturnColumns":[Ljava/lang/String;
    .end local v9    # "sValues":[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1022
    .local v3, "e":Ljava/lang/Exception;
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    return-object v5
.end method

.method private getDeleteSlotList(II)J
    .locals 11
    .param p1, "adminUid"    # I
    .param p2, "containerId"    # I

    .prologue
    .line 1200
    sget-boolean v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getDeleteSlotList, adminUid : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", containerId"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    :cond_0
    const-wide v6, 0xffffffffL

    .line 1203
    .local v6, "slotId":J
    const/4 v8, 0x2

    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v8, "adminUid"

    const/4 v9, 0x0

    aput-object v8, v3, v9

    .line 1204
    const-string/jumbo v8, "uid"

    const/4 v9, 0x1

    aput-object v8, v3, v9

    .line 1205
    .local v3, "sIdColumns":[Ljava/lang/String;
    const/4 v8, 0x2

    new-array v5, v8, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v5, v9

    .line 1206
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v5, v9

    .line 1208
    .local v5, "sIdValues":[Ljava/lang/String;
    const/4 v8, 0x1

    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v8, "slotId"

    const/4 v9, 0x0

    aput-object v8, v4, v9

    .line 1209
    .local v4, "sIdReturnColumns":[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1210
    const-string/jumbo v9, "ClientCertificateManagerTable"

    .line 1209
    invoke-virtual {v8, v9, v3, v5, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1213
    .local v1, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 1214
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "cvList size : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1216
    .local v0, "cv":Landroid/content/ContentValues;
    if-eqz v0, :cond_1

    .line 1217
    const-string/jumbo v8, "slotId"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 1218
    .local v2, "lslotId":Ljava/lang/Long;
    if-eqz v2, :cond_1

    .line 1219
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1222
    .end local v2    # "lslotId":Ljava/lang/Long;
    :cond_1
    sget-boolean v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v8, :cond_2

    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getDeleteSlotList slotId : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    .end local v0    # "cv":Landroid/content/ContentValues;
    :cond_2
    return-wide v6
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    .line 312
    const-string/jumbo v1, "enterprise_policy_new"

    .line 311
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getErrorMessage(J)Ljava/lang/String;
    .locals 1
    .param p1, "errorCode"    # J

    .prologue
    .line 4148
    invoke-static {p1, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_get_error_message(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMUMContainerOwnerUid(I)I
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 531
    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    .line 532
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getProfileOwnerUid(I)I

    move-result v0

    return v0

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v0

    return v0
.end method

.method private getPackageUid(ILjava/lang/String;)I
    .locals 9
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v8, -0x1

    .line 3635
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_0

    .line 3636
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "in getPackageUid"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3638
    :cond_0
    const/4 v3, -0x1

    .line 3639
    .local v3, "uid":I
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3641
    if-nez p2, :cond_2

    .line 3642
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_1

    .line 3643
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "getPackageUid - Invalid Arguments"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3644
    :cond_1
    return v8

    .line 3647
    :cond_2
    iget-object v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    if-nez v6, :cond_3

    .line 3648
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "getPackageUid -  Invalid Context "

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3649
    return v8

    .line 3652
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3655
    .local v4, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, p2, p1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    .line 3660
    .local v0, "appId":I
    invoke-static {p1, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 3662
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_4

    .line 3663
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 3664
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getPackageUid - User Id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3665
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    .line 3664
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3665
    const-string/jumbo v8, ", appId: "

    .line 3664
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3666
    const-string/jumbo v8, ", uid: "

    .line 3664
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3663
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3674
    :cond_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3677
    .end local v0    # "appId":I
    :goto_0
    return v3

    .line 3671
    :catch_0
    move-exception v2

    .line 3672
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3674
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 3667
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 3668
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_5

    .line 3669
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getPackageUid - Exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3670
    :cond_5
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3674
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 3673
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v6

    .line 3674
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3673
    throw v6
.end method

.method private getProfileOwnerUid(I)I
    .locals 8
    .param p1, "userId"    # I

    .prologue
    .line 1313
    const/4 v0, -0x1

    .line 1314
    .local v0, "adminId":I
    iget-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    .line 1316
    .local v4, "dpmService":Landroid/app/admin/DevicePolicyManager;
    if-eqz v4, :cond_0

    .line 1317
    if-eqz p1, :cond_2

    .line 1319
    const/4 v2, 0x0

    .line 1320
    .local v2, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v4, p1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v2

    .line 1321
    .local v2, "componentName":Landroid/content/ComponentName;
    if-eqz v2, :cond_1

    .line 1323
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getPackageUid(ILjava/lang/String;)I

    move-result v1

    .line 1324
    .local v1, "compId":I
    move v0, v1

    .line 1325
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getProfileOwnerUid() componentName "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    .end local v1    # "compId":I
    .end local v2    # "componentName":Landroid/content/ComponentName;
    :cond_0
    :goto_0
    return v0

    .line 1329
    .restart local v2    # "componentName":Landroid/content/ComponentName;
    :cond_1
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "getProfileOwnerUid() componentName is null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1333
    .end local v2    # "componentName":Landroid/content/ComponentName;
    :cond_2
    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v3

    .line 1334
    .local v3, "deviceOwnerPackage":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1335
    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getPackageUid(ILjava/lang/String;)I

    move-result v1

    .line 1336
    .restart local v1    # "compId":I
    move v0, v1

    goto :goto_0
.end method

.method private getSlotCount()I
    .locals 5

    .prologue
    .line 4060
    const/4 v1, 0x0

    .line 4064
    .local v1, "slotCount":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "ClientCertificateManagerTable"

    .line 4065
    const/4 v4, 0x0

    .line 4064
    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4070
    :goto_0
    return v1

    .line 4066
    :catch_0
    move-exception v0

    .line 4067
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getValidString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 3694
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    move-object v1, p1

    goto :goto_0

    .line 3696
    :catch_0
    move-exception v0

    .line 3697
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3699
    return-object v1
.end method

.method private getWrappedPin([B)[B
    .locals 4
    .param p1, "hashedPin"    # [B

    .prologue
    .line 3743
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_0

    .line 3744
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getWrappedPin"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3746
    :cond_0
    const/4 v1, 0x0

    .line 3748
    .local v1, "wrappedPin":[B
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v2}, Landroid/service/tima/ITimaService;->loadTui()I

    move-result v2

    if-gez v2, :cond_1

    .line 3749
    return-object v1

    .line 3751
    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mTimaService:Landroid/service/tima/ITimaService;

    const-string/jumbo v3, "tz_ccm"

    invoke-interface {v2, v3, p1}, Landroid/service/tima/ITimaService;->tuiDecryptPinHash(Ljava/lang/String;[B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3757
    .end local v1    # "wrappedPin":[B
    :goto_0
    return-object v1

    .line 3753
    .restart local v1    # "wrappedPin":[B
    :catch_0
    move-exception v0

    .line 3754
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getWrappedPin - tuiDecryptPinHash failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3755
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static native get_ccm_version()Ljava/lang/String;
.end method

.method static native get_default_cert_alias()Ljava/lang/String;
.end method

.method private handleCCMBuildUpdate()V
    .locals 5

    .prologue
    .line 238
    :try_start_0
    const-string/jumbo v3, "ro.build.date"

    const-string/jumbo v4, "NONE"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "currentBuild":Ljava/lang/String;
    const-string/jumbo v3, "persist.sys.ccm.date"

    .line 241
    const-string/jumbo v4, "NONE"

    .line 240
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, "oldBuild":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 245
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_0

    .line 246
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "handleCCMBuildUpdate - updated"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_0
    const-string/jumbo v3, "persist.sys.ccm.date"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->addExemptList()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .end local v0    # "currentBuild":Ljava/lang/String;
    .end local v2    # "oldBuild":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 250
    :catch_0
    move-exception v1

    .line 251
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private hasGrantInternal(Ljava/lang/String;)Z
    .locals 10
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 5171
    const/4 v1, 0x0

    .line 5172
    .local v1, "allow":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .line 5173
    .local v6, "uidCount":I
    const/4 v5, 0x0

    .line 5174
    .local v5, "ret":Z
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    invoke-direct {v0, v7, v8}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 5175
    .local v0, "CInfo":Lcom/samsung/android/knox/ContextInfo;
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isInstalledKeyChainAlias(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 5177
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 5178
    .local v3, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v7, "alias"

    invoke-virtual {v3, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5179
    iget-object v7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "CCMCertGrantTable"

    invoke-virtual {v7, v8, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v6

    .line 5180
    if-eqz v6, :cond_2

    .line 5181
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 5182
    .local v2, "cv":Landroid/content/ContentValues;
    const-string/jumbo v7, "alias"

    invoke-virtual {v2, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5183
    const-string/jumbo v7, "callingUid"

    iget v8, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5184
    iget-object v7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "CCMCertGrantTable"

    const-string/jumbo v9, "allow"

    invoke-virtual {v7, v8, v9, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v1

    .line 5185
    .local v1, "allow":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 5186
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_0

    .line 5187
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "hasGrantInternal - allow :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5188
    :cond_0
    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 5189
    .local v5, "ret":Z
    if-nez v5, :cond_1

    .line 5190
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 5191
    const/4 v5, 0x1

    .line 5211
    .end local v1    # "allow":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "cvWhere":Landroid/content/ContentValues;
    .end local v5    # "ret":Z
    :cond_1
    :goto_0
    return v5

    .line 5197
    .local v1, "allow":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v3    # "cvWhere":Landroid/content/ContentValues;
    .local v5, "ret":Z
    :cond_2
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_3

    .line 5198
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "hasGrantInternal - uidCount = 0"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5199
    :cond_3
    const/4 v5, 0x1

    goto :goto_0

    .line 5201
    .end local v1    # "allow":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "cvWhere":Landroid/content/ContentValues;
    .end local v5    # "ret":Z
    :catch_0
    move-exception v4

    .line 5202
    .local v4, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    .line 5203
    .restart local v5    # "ret":Z
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_1

    .line 5204
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "hasGrantInternal - Exception"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5209
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "allow":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_4
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private initParams()V
    .locals 3

    .prologue
    .line 4489
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 4490
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "TIMA3: in initParams"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4492
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v0, :cond_2

    .line 4493
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_1

    .line 4494
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initParams - TIMA version does not include CCM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4495
    :cond_1
    return-void

    .line 4498
    :cond_2
    const/16 v0, 0x3f2

    const/16 v1, 0x3e8

    .line 4499
    const v2, 0x186a0

    .line 4498
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->init_params(III)J

    .line 4488
    return-void
.end method

.method static native init_params(III)J
.end method

.method private insertOrUpdateCCMProfileInternal(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CCMProfile;J)Z
    .locals 15
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profile"    # Lcom/samsung/android/knox/keystore/CCMProfile;
    .param p3, "slotId"    # J

    .prologue
    .line 2065
    sget-boolean v12, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v12, :cond_0

    .line 2066
    sget-object v12, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "in insertOrUpdateCCMProfileInternal"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    :cond_0
    if-nez p1, :cond_2

    .line 2068
    sget-boolean v12, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v12, :cond_1

    sget-object v12, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "cxtInfo is null"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    :cond_1
    const/4 v12, 0x0

    return v12

    .line 2072
    :cond_2
    const/4 v8, 0x1

    .line 2073
    .local v8, "ret":Z
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v11

    .line 2075
    .local v11, "userId":I
    sget-boolean v12, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v12, :cond_3

    .line 2076
    sget-object v12, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "AdminId - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " ContainerId -  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2077
    move-object/from16 v0, p1

    iget v14, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 2076
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2077
    const-string/jumbo v14, " UserId - "

    .line 2076
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2078
    const-string/jumbo v14, " whiteListAllPackages - "

    .line 2076
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2078
    move-object/from16 v0, p2

    iget-boolean v14, v0, Lcom/samsung/android/knox/keystore/CCMProfile;->whiteListAllPackages:Z

    .line 2076
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    :cond_3
    const/4 v12, 0x2

    new-array v9, v12, [Ljava/lang/String;

    const-string/jumbo v12, "adminUid"

    const/4 v13, 0x0

    aput-object v12, v9, v13

    const-string/jumbo v12, "uid"

    const/4 v13, 0x1

    aput-object v12, v9, v13

    .line 2082
    .local v9, "sColumns":[Ljava/lang/String;
    move-object/from16 v0, p1

    iget v12, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 2083
    .local v1, "adminId":Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 2084
    .local v2, "contId":Ljava/lang/String;
    const/4 v12, 0x2

    new-array v10, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v1, v10, v12

    const/4 v12, 0x1

    aput-object v2, v10, v12

    .line 2086
    .local v10, "sValues":[Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v13, "ClientCertificateManagerTable"

    invoke-virtual {v12, v13, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 2091
    :try_start_0
    move-object/from16 v0, p2

    iget-boolean v12, v0, Lcom/samsung/android/knox/keystore/CCMProfile;->whiteListAllPackages:Z

    if-eqz v12, :cond_7

    .line 2093
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2094
    .local v3, "cv":Landroid/content/ContentValues;
    const-string/jumbo v12, "adminUid"

    move-object/from16 v0, p1

    iget v13, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2095
    const-string/jumbo v12, "uid"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2096
    const-string/jumbo v12, "accessType"

    .line 2097
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/samsung/android/knox/keystore/CCMProfile;->accessControlMethod:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    invoke-virtual {v13}, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->name()Ljava/lang/String;

    move-result-object v13

    .line 2096
    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2098
    sget-object v12, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->TRUSTED_PINPAD:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/samsung/android/knox/keystore/CCMProfile;->accessControlMethod:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    if-ne v12, v13, :cond_6

    .line 2099
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/samsung/android/knox/keystore/CCMProfile;->tuiProperty:Lcom/samsung/android/knox/keystore/TUIProperty;

    if-eqz v12, :cond_4

    .line 2100
    const-string/jumbo v12, "loginRetry"

    .line 2101
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/samsung/android/knox/keystore/CCMProfile;->tuiProperty:Lcom/samsung/android/knox/keystore/TUIProperty;

    iget v13, v13, Lcom/samsung/android/knox/keystore/TUIProperty;->loginRetry:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 2100
    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2102
    const-string/jumbo v12, "loginExpiration"

    .line 2103
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/samsung/android/knox/keystore/CCMProfile;->tuiProperty:Lcom/samsung/android/knox/keystore/TUIProperty;

    iget v13, v13, Lcom/samsung/android/knox/keystore/TUIProperty;->loginExpirationPeriod:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 2102
    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2110
    :cond_4
    :goto_0
    const-string/jumbo v12, "slotId"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2111
    const-string/jumbo v12, "allowAllPkgs"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2113
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2114
    .local v4, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v12, "adminUid"

    move-object/from16 v0, p1

    iget v13, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2115
    const-string/jumbo v12, "uid"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2117
    iget-object v12, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v13, "ClientCertificateManagerTable"

    invoke-virtual {v12, v13, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v8

    .line 2119
    .local v8, "ret":Z
    if-nez v8, :cond_5

    .line 2120
    sget-boolean v12, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v12, :cond_5

    .line 2121
    sget-object v12, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 2122
    const-string/jumbo v13, "insertOrUpdateCCMProfileInternal whiteListAllPackages - DB operation failed"

    .line 2121
    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v4    # "cvWhere":Landroid/content/ContentValues;
    .end local v8    # "ret":Z
    :cond_5
    :goto_1
    return v8

    .line 2106
    .restart local v3    # "cv":Landroid/content/ContentValues;
    .local v8, "ret":Z
    :cond_6
    const-string/jumbo v12, "loginRetry"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2107
    const-string/jumbo v12, "loginExpiration"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2161
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v8    # "ret":Z
    :catch_0
    move-exception v5

    .line 2162
    .local v5, "e":Ljava/lang/Exception;
    sget-boolean v12, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v12, :cond_5

    .line 2163
    sget-object v12, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 2164
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "insertOrUpdateCCMProfileInternal - Exception "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2165
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    .line 2164
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2163
    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2126
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v8    # "ret":Z
    :cond_7
    :try_start_1
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/samsung/android/knox/keystore/CCMProfile;->packageList:Ljava/util/List;

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "pkg$iterator":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2127
    .local v6, "pkg":Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2128
    .restart local v3    # "cv":Landroid/content/ContentValues;
    const-string/jumbo v12, "adminUid"

    move-object/from16 v0, p1

    iget v13, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2129
    const-string/jumbo v12, "uid"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2130
    const-string/jumbo v12, "accessType"

    .line 2131
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/samsung/android/knox/keystore/CCMProfile;->accessControlMethod:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    invoke-virtual {v13}, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->name()Ljava/lang/String;

    move-result-object v13

    .line 2130
    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2132
    sget-object v12, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->TRUSTED_PINPAD:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/samsung/android/knox/keystore/CCMProfile;->accessControlMethod:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    if-ne v12, v13, :cond_b

    .line 2133
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/samsung/android/knox/keystore/CCMProfile;->tuiProperty:Lcom/samsung/android/knox/keystore/TUIProperty;

    if-eqz v12, :cond_9

    .line 2134
    const-string/jumbo v12, "loginRetry"

    .line 2135
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/samsung/android/knox/keystore/CCMProfile;->tuiProperty:Lcom/samsung/android/knox/keystore/TUIProperty;

    iget v13, v13, Lcom/samsung/android/knox/keystore/TUIProperty;->loginRetry:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 2134
    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2136
    const-string/jumbo v12, "loginExpiration"

    .line 2137
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/samsung/android/knox/keystore/CCMProfile;->tuiProperty:Lcom/samsung/android/knox/keystore/TUIProperty;

    iget v13, v13, Lcom/samsung/android/knox/keystore/TUIProperty;->loginExpirationPeriod:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 2136
    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2143
    :cond_9
    :goto_2
    const-string/jumbo v12, "slotId"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2144
    const-string/jumbo v12, "pkgName"

    invoke-virtual {v3, v12, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2146
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2147
    .restart local v4    # "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v12, "adminUid"

    move-object/from16 v0, p1

    iget v13, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2148
    const-string/jumbo v12, "uid"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2149
    const-string/jumbo v12, "pkgName"

    invoke-virtual {v4, v12, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2151
    iget-object v12, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2152
    const-string/jumbo v13, "ClientCertificateManagerTable"

    .line 2151
    invoke-virtual {v12, v13, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 2153
    sget-boolean v12, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v12, :cond_a

    .line 2154
    sget-object v12, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 2155
    const-string/jumbo v13, "insertOrUpdateCCMProfileInternal packages - DB operation failed"

    .line 2154
    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    :cond_a
    const/4 v8, 0x0

    .line 2157
    goto/16 :goto_1

    .line 2140
    .end local v4    # "cvWhere":Landroid/content/ContentValues;
    :cond_b
    const-string/jumbo v12, "loginRetry"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2141
    const-string/jumbo v12, "loginExpiration"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private insertOrUpdateCertificateProfileInternal(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateProfile;IIZ)Z
    .locals 16
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profile"    # Lcom/samsung/android/knox/keystore/CertificateProfile;
    .param p3, "adminId"    # I
    .param p4, "userId"    # I
    .param p5, "isCSRRecord"    # Z

    .prologue
    .line 2315
    sget-boolean v13, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v13, :cond_0

    .line 2316
    sget-object v13, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "in insertOrUpdateCertificateProfileInternal"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2318
    :cond_0
    const/4 v10, 0x1

    .line 2319
    .local v10, "ret":Z
    const/4 v5, 0x0

    .line 2321
    .local v5, "keyStoreKeyChainInstall":Z
    if-eqz p1, :cond_1

    if-nez p2, :cond_3

    .line 2322
    :cond_1
    sget-boolean v13, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v13, :cond_2

    .line 2323
    sget-object v13, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 2324
    const-string/jumbo v14, "insertOrUpdateCertificateProfileInternal - Invalid Arguments"

    .line 2323
    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    :cond_2
    const/4 v13, 0x0

    return v13

    .line 2328
    :cond_3
    sget-object v13, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "InstallerId - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " ContainerId - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p4

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 2329
    const-string/jumbo v15, " allowAllPackages - "

    .line 2328
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 2329
    move-object/from16 v0, p2

    iget-boolean v15, v0, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowAllPackages:Z

    .line 2328
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 2330
    const-string/jumbo v15, " AdminId - "

    .line 2328
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 2330
    const-string/jumbo v15, " isCSRRecord - "

    .line 2328
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p5

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2334
    if-eqz p5, :cond_9

    const/4 v1, 0x1

    .line 2335
    .local v1, "csrIntValue":I
    :goto_0
    const/4 v13, 0x5

    new-array v11, v13, [Ljava/lang/String;

    const-string/jumbo v13, "adminUid"

    const/4 v14, 0x0

    aput-object v13, v11, v14

    const-string/jumbo v13, "uid"

    const/4 v14, 0x1

    aput-object v13, v11, v14

    .line 2336
    const-string/jumbo v13, "installerId"

    const/4 v14, 0x2

    aput-object v13, v11, v14

    const-string/jumbo v13, "alias"

    const/4 v14, 0x3

    aput-object v13, v11, v14

    .line 2337
    const-string/jumbo v13, "csr"

    const/4 v14, 0x4

    aput-object v13, v11, v14

    .line 2338
    .local v11, "sColumns":[Ljava/lang/String;
    const/4 v13, 0x5

    new-array v12, v13, [Ljava/lang/String;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v12, v14

    .line 2339
    move-object/from16 v0, p1

    iget v13, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    aput-object v13, v12, v14

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    const/4 v14, 0x3

    aput-object v13, v12, v14

    .line 2340
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x4

    aput-object v13, v12, v14

    .line 2343
    .local v12, "sValues":[Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v14, "CCMCertTable"

    invoke-virtual {v13, v14, v11, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2353
    :cond_4
    :goto_1
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    if-eqz v13, :cond_5

    .line 2354
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    .line 2355
    const-string/jumbo v14, "keystorekeychain"

    .line 2354
    invoke-interface {v13, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 2356
    const/4 v5, 0x1

    .line 2360
    :cond_5
    move-object/from16 v0, p2

    iget-boolean v13, v0, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowAllPackages:Z

    if-nez v13, :cond_6

    if-eqz p5, :cond_a

    .line 2361
    :cond_6
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2362
    .local v2, "cv":Landroid/content/ContentValues;
    const-string/jumbo v13, "adminUid"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2363
    const-string/jumbo v13, "uid"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2364
    const-string/jumbo v13, "alias"

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2365
    const-string/jumbo v13, "allowAllPkgs"

    move-object/from16 v0, p2

    iget-boolean v14, v0, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowAllPackages:Z

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2366
    const-string/jumbo v13, "allowWiFi"

    move-object/from16 v0, p2

    iget-boolean v14, v0, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowWiFi:Z

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2367
    const-string/jumbo v13, "installerId"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2368
    const-string/jumbo v13, "csr"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2369
    const-string/jumbo v13, "allowRawSigning"

    move-object/from16 v0, p2

    iget-boolean v14, v0, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowRawSigning:Z

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2370
    if-eqz v5, :cond_7

    .line 2371
    const-string/jumbo v13, "pkgName"

    .line 2372
    const-string/jumbo v14, "keystorekeychain"

    .line 2371
    invoke-virtual {v2, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2375
    :cond_7
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2376
    .local v3, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v13, "adminUid"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2377
    const-string/jumbo v13, "uid"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2378
    const-string/jumbo v13, "alias"

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    invoke-virtual {v3, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2379
    const-string/jumbo v13, "installerId"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2380
    const-string/jumbo v13, "csr"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2382
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v14, "CCMCertTable"

    invoke-virtual {v13, v14, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    .line 2448
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "cvWhere":Landroid/content/ContentValues;
    .end local v10    # "ret":Z
    :cond_8
    :goto_2
    return v10

    .line 2334
    .end local v1    # "csrIntValue":I
    .end local v11    # "sColumns":[Ljava/lang/String;
    .end local v12    # "sValues":[Ljava/lang/String;
    .restart local v10    # "ret":Z
    :cond_9
    const/4 v1, 0x0

    .restart local v1    # "csrIntValue":I
    goto/16 :goto_0

    .line 2345
    .restart local v11    # "sColumns":[Ljava/lang/String;
    .restart local v12    # "sValues":[Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 2346
    .local v4, "e":Ljava/lang/Exception;
    sget-boolean v13, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v13, :cond_4

    .line 2347
    sget-object v13, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 2348
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "insertOrUpdateCertificateProfileInternal - Exception delete"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 2349
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    .line 2348
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2347
    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2384
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "cv":Landroid/content/ContentValues;
    .restart local v3    # "cvWhere":Landroid/content/ContentValues;
    :catch_1
    move-exception v4

    .line 2385
    .restart local v4    # "e":Ljava/lang/Exception;
    const/4 v10, 0x0

    .line 2386
    sget-boolean v13, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v13, :cond_8

    .line 2387
    sget-object v13, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 2388
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "insertOrUpdateCertificateProfileInternal - Exception allowAllPackages"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 2389
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    .line 2388
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2387
    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2393
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "cvWhere":Landroid/content/ContentValues;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_a
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    if-nez v13, :cond_c

    .line 2394
    sget-boolean v13, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v13, :cond_b

    .line 2395
    sget-object v13, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 2396
    const-string/jumbo v14, "insertOrUpdateCertificateProfileInternal - Invalid Package list"

    .line 2395
    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2397
    :cond_b
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p2

    iput-object v13, v0, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    .line 2401
    :cond_c
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 2402
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 2401
    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    .line 2404
    .local v9, "pkgNames":[Ljava/lang/String;
    const/4 v13, 0x0

    array-length v14, v9

    :goto_3
    if-ge v13, v14, :cond_d

    aget-object v8, v9, v13

    .line 2405
    .local v8, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    invoke-interface {v15, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2404
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 2407
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v9    # "pkgNames":[Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 2408
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 2411
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_d
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "pkg$iterator":Ljava/util/Iterator;
    :cond_e
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2412
    .local v6, "pkg":Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2413
    .restart local v2    # "cv":Landroid/content/ContentValues;
    const-string/jumbo v13, "adminUid"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2414
    const-string/jumbo v13, "uid"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2415
    const-string/jumbo v13, "alias"

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2416
    const-string/jumbo v13, "pkgName"

    invoke-virtual {v2, v13, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2417
    const-string/jumbo v13, "allowWiFi"

    move-object/from16 v0, p2

    iget-boolean v14, v0, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowWiFi:Z

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2418
    const-string/jumbo v13, "installerId"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2419
    const-string/jumbo v13, "allowRawSigning"

    move-object/from16 v0, p2

    iget-boolean v14, v0, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowRawSigning:Z

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2421
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2422
    .restart local v3    # "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v13, "adminUid"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2423
    const-string/jumbo v13, "uid"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2424
    const-string/jumbo v13, "alias"

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    invoke-virtual {v3, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2425
    const-string/jumbo v13, "pkgName"

    invoke-virtual {v3, v13, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2426
    const-string/jumbo v13, "installerId"

    .line 2427
    move-object/from16 v0, p1

    iget v14, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 2426
    invoke-virtual {v3, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2428
    const-string/jumbo v13, "csr"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2430
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2431
    const-string/jumbo v14, "CCMCertTable"

    .line 2430
    invoke-virtual {v13, v14, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v13

    if-nez v13, :cond_e

    .line 2432
    sget-boolean v13, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v13, :cond_f

    .line 2433
    sget-object v13, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 2434
    const-string/jumbo v14, "insertOrUpdateCertificateProfileInternal - DB operation failed"

    .line 2433
    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 2435
    :cond_f
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 2438
    :catch_3
    move-exception v4

    .line 2439
    .restart local v4    # "e":Ljava/lang/Exception;
    const/4 v10, 0x0

    .line 2440
    sget-boolean v13, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v13, :cond_e

    .line 2441
    sget-object v13, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 2442
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "insertOrUpdateCertificateProfileInternal - Exception"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 2443
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    .line 2442
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2441
    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method private isCCMDefaultCertStore(I)Z
    .locals 11
    .param p1, "userId"    # I

    .prologue
    const/4 v10, 0x1

    .line 4637
    const/4 v6, 0x0

    .line 4638
    .local v6, "ret":Z
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_0

    .line 4639
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "in isCCMDefaultCertStore useId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4645
    :cond_0
    const/4 v7, 0x1

    :try_start_0
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v7, "enabled"

    const/4 v8, 0x0

    aput-object v7, v0, v8

    .line 4647
    .local v0, "columns":[Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 4648
    .local v2, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v7, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4650
    iget-object v7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 4651
    const-string/jumbo v8, "CCMDefaultPolicy"

    .line 4650
    invoke-virtual {v7, v8, v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    .line 4653
    .local v5, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_3

    .line 4668
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v2    # "cvWhere":Landroid/content/ContentValues;
    .end local v5    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_1
    :goto_0
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_2

    .line 4669
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isCCMDefaultCertStore returning - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4671
    :cond_2
    return v6

    .line 4654
    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v2    # "cvWhere":Landroid/content/ContentValues;
    .restart local v5    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_3
    const/4 v7, 0x0

    :try_start_1
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 4655
    .local v1, "cv":Landroid/content/ContentValues;
    if-eqz v1, :cond_1

    .line 4656
    const-string/jumbo v7, "enabled"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 4657
    .local v4, "isDefaultEnabled":Ljava/lang/Integer;
    if-eqz v4, :cond_1

    .line 4658
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    if-ne v7, v10, :cond_4

    const/4 v6, 0x1

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    goto :goto_0

    .line 4662
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "cvWhere":Landroid/content/ContentValues;
    .end local v4    # "isDefaultEnabled":Ljava/lang/Integer;
    .end local v5    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_0
    move-exception v3

    .line 4663
    .local v3, "ex":Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 4664
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isCCMDefaultCertStore() failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 4665
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    .line 4664
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4663
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isInstalledKeyChainAlias(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 4733
    const/4 v3, 0x0

    .line 4734
    .local v3, "ret":Z
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_0

    .line 4735
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "in isInstalledKeyChainAlias"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4737
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4739
    if-eqz p1, :cond_1

    if-nez p2, :cond_3

    .line 4740
    :cond_1
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_2

    .line 4741
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "isInstalledKeyChainAlias - Invalid Arguments"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4742
    :cond_2
    return v7

    .line 4739
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    .line 4745
    iget-boolean v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v5, :cond_5

    .line 4746
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_4

    .line 4747
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 4748
    const-string/jumbo v6, "isInstalledKeyChainAlias - TIMA version does not include CCM"

    .line 4747
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4749
    :cond_4
    return v7

    .line 4752
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v4

    .line 4753
    .local v4, "userId":I
    const/16 v5, 0x64

    if-ge v4, v5, :cond_8

    .line 4754
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/16 v6, 0x3e8

    if-ne v5, v6, :cond_7

    .line 4763
    :goto_0
    const/4 v0, 0x0

    .line 4766
    .local v0, "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4767
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v5, "uid"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4768
    const-string/jumbo v5, "pkgName"

    .line 4769
    const-string/jumbo v6, "keystorekeychain"

    .line 4768
    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4770
    const-string/jumbo v5, "csr"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4771
    iget-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 4772
    const-string/jumbo v6, "CCMCertTable"

    const-string/jumbo v7, "alias"

    .line 4771
    invoke-virtual {v5, v6, v7, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v0

    .line 4774
    .local v0, "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_9

    .line 4775
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 4786
    .end local v0    # "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    .end local v3    # "ret":Z
    :goto_1
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_6

    .line 4787
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isInstalledKeyChainAlias - Alias list :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4788
    :cond_6
    return v3

    .line 4757
    .restart local v3    # "ret":Z
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    goto :goto_0

    .line 4760
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    goto :goto_0

    .line 4777
    .restart local v0    # "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "cvWhere":Landroid/content/ContentValues;
    :cond_9
    :try_start_1
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_a

    .line 4778
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "isInstalledKeyChainAlias - Alias list empty or null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4779
    :cond_a
    const/4 v3, 0x0

    goto :goto_1

    .line 4781
    .end local v0    # "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    .line 4782
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_b

    .line 4783
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isInstalledKeyChainAlias - Exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4784
    :cond_b
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private markUserAsCCMProvisioned(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 3866
    const-string/jumbo v2, "user"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3867
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService;

    .line 3868
    .local v1, "mUms":Lcom/android/server/pm/UserManagerService;
    invoke-virtual {v1, p1}, Lcom/android/server/pm/UserManagerService;->setUserCCMProvisioned(I)V

    .line 3865
    return-void
.end method

.method private provisionUser(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 3848
    sget-object v0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->LOCK_STATE:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->provisionUser(ILcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;)V

    .line 3847
    return-void
.end method

.method private provisionUser(ILcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "ACMethod"    # Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    .prologue
    .line 3852
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->setCCMProfileDefaultForContainer(ILcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3853
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 3854
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Error making CCM default"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3855
    :cond_0
    return-void

    .line 3857
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->setCCMAsDefaultCertStore(IZ)Z

    .line 3858
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_2

    .line 3859
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isCCMDefaultCertStore says: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3860
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMDefaultCertStore(I)Z

    move-result v2

    .line 3859
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3862
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->markUserAsCCMProvisioned(I)V

    .line 3851
    return-void
.end method

.method private registerPersonaObserver(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 3992
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3993
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaObservers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3994
    new-instance v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;

    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;-><init>(Lcom/android/server/enterprise/ccm/ClientCertificateManager;Landroid/content/Context;II)V

    .line 3995
    .local v0, "observer":Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaObservers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3991
    .end local v0    # "observer":Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;
    :cond_0
    return-void
.end method

.method private removeAllGrants()V
    .locals 5

    .prologue
    .line 5237
    iget-boolean v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v1, :cond_1

    .line 5238
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_0

    .line 5239
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 5240
    const-string/jumbo v2, "removeAllGrants - TIMA version does not include CCM"

    .line 5239
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5241
    :cond_0
    return-void

    .line 5245
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 5246
    const-string/jumbo v2, "CCMCertGrantTable"

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 5245
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5235
    :cond_2
    :goto_0
    return-void

    .line 5247
    :catch_0
    move-exception v0

    .line 5248
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_2

    .line 5249
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeAllGrants - Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeGrantsForAlias(Ljava/lang/String;)V
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 5215
    iget-boolean v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v3, :cond_1

    .line 5216
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_0

    .line 5217
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 5218
    const-string/jumbo v4, "removeGrantsForAlias - TIMA version does not include CCM"

    .line 5217
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5219
    :cond_0
    return-void

    .line 5222
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    .line 5224
    const/4 v3, 0x1

    :try_start_0
    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v3, "alias"

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 5225
    .local v1, "sColumns":[Ljava/lang/String;
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 5226
    .local v2, "sValues":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 5227
    const-string/jumbo v4, "CCMCertGrantTable"

    .line 5226
    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5214
    .end local v1    # "sColumns":[Ljava/lang/String;
    .end local v2    # "sValues":[Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 5228
    :catch_0
    move-exception v0

    .line 5229
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_2

    .line 5230
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeGrantsForAlias - Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resetDefaultCCMProfile(II)V
    .locals 7
    .param p1, "adminUid"    # I
    .param p2, "containerId"    # I

    .prologue
    .line 1229
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "resetDefaultCCMProfile"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getDeleteSlotList(II)J

    move-result-wide v2

    .line 1231
    .local v2, "slotId":J
    const-wide v4, 0xffffffffL

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    .line 1232
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "reset : INVALID_SLOT_ID"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    :cond_1
    return-void

    .line 1236
    :cond_2
    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->existDefaultProfile(J)Z

    move-result v0

    .line 1237
    .local v0, "exist":Z
    if-nez v0, :cond_4

    .line 1238
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "slotId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is not related with default profile"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    :cond_3
    return-void

    .line 1241
    :cond_4
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_5

    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "slotId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is related with default profile"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    :cond_5
    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteDefaultCCMProfile(J)V

    .line 1245
    invoke-virtual {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->setDefaultCCMProfile()Z

    move-result v1

    .line 1246
    .local v1, "set":Z
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_6

    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setDefaultCCMProfile : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    :cond_6
    return-void
.end method

.method private setCCMAsDefaultCertStore(IZ)Z
    .locals 6
    .param p1, "userId"    # I
    .param p2, "enable"    # Z

    .prologue
    const/4 v5, 0x0

    .line 4680
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_0

    .line 4681
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "in setCCMAsDefaultCertStore userId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4683
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4684
    .local v0, "cv":Landroid/content/ContentValues;
    if-eqz p2, :cond_1

    .line 4685
    const-string/jumbo v2, "enabled"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4689
    :goto_0
    const-string/jumbo v2, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4690
    iget-object v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 4691
    const-string/jumbo v3, "CCMDefaultPolicy"

    .line 4690
    invoke-virtual {v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    return v2

    .line 4687
    :cond_1
    const-string/jumbo v2, "enabled"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4692
    .end local v0    # "cv":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 4693
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setCCMAsDefaultCertStore() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4695
    return v5
.end method

.method private setCCMProfileDefaultForContainer(I)Z
    .locals 1
    .param p1, "containerId"    # I

    .prologue
    .line 1347
    sget-object v0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->LOCK_STATE:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->setCCMProfileDefaultForContainer(ILcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;)Z

    move-result v0

    return v0
.end method

.method private setCCMProfileDefaultForContainer(ILcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;)Z
    .locals 16
    .param p1, "containerId"    # I
    .param p2, "ACMethod"    # Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    .prologue
    .line 1351
    const/4 v10, 0x1

    .line 1352
    .local v10, "ret":Z
    const-wide/16 v12, 0x0

    .line 1353
    .local v12, "slotId":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1354
    .local v3, "callerUID":I
    sget-boolean v11, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v11, :cond_0

    .line 1355
    sget-object v11, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "in setCCMProfileDefaultForContainer containerId "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v11, :cond_2

    .line 1358
    sget-boolean v11, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v11, :cond_1

    .line 1359
    sget-object v11, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 1360
    const-string/jumbo v14, "setCCMProfileDefaultForContainer - TIMA version does not include CCM"

    .line 1359
    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    :cond_1
    const/4 v11, 0x0

    return v11

    .line 1365
    :cond_2
    new-instance v6, Lcom/samsung/android/knox/keystore/CCMProfile;

    invoke-direct {v6}, Lcom/samsung/android/knox/keystore/CCMProfile;-><init>()V

    .line 1366
    .local v6, "defaultCCMProfile":Lcom/samsung/android/knox/keystore/CCMProfile;
    move-object/from16 v0, p2

    iput-object v0, v6, Lcom/samsung/android/knox/keystore/CCMProfile;->accessControlMethod:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    .line 1367
    const/4 v11, 0x1

    iput-boolean v11, v6, Lcom/samsung/android/knox/keystore/CCMProfile;->whiteListAllPackages:Z

    .line 1370
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getMUMContainerOwnerUid(I)I

    move-result v9

    .line 1372
    .local v9, "mumContainerOwnerUid":I
    move/from16 v0, p1

    invoke-static {v0, v9}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 1375
    .local v2, "adminId":I
    iget-object v11, v6, Lcom/samsung/android/knox/keystore/CCMProfile;->accessControlMethod:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    invoke-virtual {v11}, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->getValue()I

    move-result v11

    const/4 v14, 0x0

    .line 1374
    move/from16 v0, p1

    invoke-static {v3, v0, v11, v14}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_create_slot(IIILjava/lang/String;)J

    move-result-wide v12

    .line 1377
    sget-boolean v11, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v11, :cond_3

    .line 1378
    sget-object v11, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setCCMProfileDefaultForContainer - slot Id is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1379
    const-string/jumbo v15, ", Owner Admin Id is "

    .line 1378
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    :cond_3
    const-wide v14, 0xffffffffL

    cmp-long v11, v14, v12

    if-nez v11, :cond_5

    .line 1382
    sget-boolean v11, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v11, :cond_4

    .line 1383
    sget-object v11, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 1384
    const-string/jumbo v14, "setCCMProfileDefaultForContainer - native create_slot failed"

    .line 1383
    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    :cond_4
    const/4 v11, 0x0

    return v11

    .line 1390
    :cond_5
    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1391
    .local v4, "cv":Landroid/content/ContentValues;
    const-string/jumbo v11, "adminUid"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v4, v11, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1392
    const-string/jumbo v11, "uid"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v4, v11, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1393
    const-string/jumbo v11, "accessType"

    .line 1394
    iget-object v14, v6, Lcom/samsung/android/knox/keystore/CCMProfile;->accessControlMethod:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    invoke-virtual {v14}, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->name()Ljava/lang/String;

    move-result-object v14

    .line 1393
    invoke-virtual {v4, v11, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    const-string/jumbo v11, "slotId"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v4, v11, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1396
    const-string/jumbo v11, "allowAllPkgs"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v4, v11, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1398
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1399
    .local v5, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v11, "adminUid"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v11, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1400
    const-string/jumbo v11, "uid"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v11, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1402
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v14, "ClientCertificateManagerTable"

    invoke-virtual {v11, v14, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 1404
    sget-boolean v11, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v11, :cond_6

    .line 1405
    sget-object v11, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 1406
    const-string/jumbo v14, "setCCMProfileDefaultForContainer - DB operation failed"

    .line 1405
    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    :cond_6
    move/from16 v0, p1

    invoke-static {v3, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_slot(II)J

    .line 1408
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v3, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->resetDefaultCCMProfile(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1409
    const/4 v11, 0x0

    return v11

    .line 1412
    .end local v4    # "cv":Landroid/content/ContentValues;
    .end local v5    # "cvWhere":Landroid/content/ContentValues;
    :catch_0
    move-exception v7

    .line 1413
    .local v7, "e":Ljava/lang/Exception;
    move/from16 v0, p1

    invoke-static {v3, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_slot(II)J

    .line 1414
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v3, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->resetDefaultCCMProfile(II)V

    .line 1415
    const/4 v11, 0x0

    return v11

    .line 1417
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v4    # "cv":Landroid/content/ContentValues;
    .restart local v5    # "cvWhere":Landroid/content/ContentValues;
    :cond_7
    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    move/from16 v0, p1

    invoke-static {v11, v3, v0, v14, v15}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_manage_exempt_list(ZIIIZ)J

    .line 1421
    const/4 v8, -0x1

    .line 1423
    .local v8, "emailUid":I
    const-string/jumbo v11, "com.samsung.android.email.provider"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getPackageUid(ILjava/lang/String;)I

    move-result v8

    .line 1424
    const/4 v11, -0x1

    if-eq v8, v11, :cond_9

    .line 1425
    const/4 v11, 0x1

    const/4 v14, 0x0

    move/from16 v0, p1

    invoke-static {v11, v3, v0, v8, v14}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_manage_exempt_list(ZIIIZ)J

    .line 1437
    :cond_8
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getSlotCount()I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    .line 1439
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->initParams()V

    .line 1441
    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v11, v14, v15}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->updateLockStatus(IZZZ)Z

    .line 1443
    return v10

    .line 1427
    :cond_9
    const-string/jumbo v11, "com.samsung.android.email.sync"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getPackageUid(ILjava/lang/String;)I

    move-result v8

    .line 1428
    const/4 v11, -0x1

    if-eq v8, v11, :cond_a

    .line 1429
    const/4 v11, 0x1

    const/4 v14, 0x0

    move/from16 v0, p1

    invoke-static {v11, v3, v0, v8, v14}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_manage_exempt_list(ZIIIZ)J

    goto :goto_0

    .line 1431
    :cond_a
    const-string/jumbo v11, "com.android.exchange"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getPackageUid(ILjava/lang/String;)I

    move-result v8

    .line 1432
    const/4 v11, -0x1

    if-eq v8, v11, :cond_8

    .line 1433
    const/4 v11, 0x1

    const/4 v14, 0x0

    move/from16 v0, p1

    invoke-static {v11, v3, v0, v8, v14}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_manage_exempt_list(ZIIIZ)J

    goto :goto_0
.end method

.method private setGrantInternal(ILjava/lang/String;Z)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .prologue
    .line 5131
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_0

    .line 5132
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "In setGrantInternal - uid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",alias:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5134
    :cond_0
    const/4 v0, 0x0

    .line 5136
    .local v0, "allow":I
    if-eqz p3, :cond_1

    const/4 v0, 0x2

    .line 5137
    :goto_0
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 5138
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v4, "callingUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5139
    const-string/jumbo v4, "alias"

    invoke-virtual {v1, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5140
    const-string/jumbo v4, "allow"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5142
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 5143
    .local v2, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v4, "callingUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5144
    const-string/jumbo v4, "alias"

    invoke-virtual {v2, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5146
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "CCMCertGrantTable"

    invoke-virtual {v4, v5, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5130
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "cvWhere":Landroid/content/ContentValues;
    :goto_1
    return-void

    .line 5136
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 5147
    :catch_0
    move-exception v3

    .line 5148
    .local v3, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "setGrantInternal() failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setupIntentFilters()V
    .locals 3

    .prologue
    .line 3681
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_0

    .line 3682
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in setupIntentFilters"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3683
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3684
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3685
    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3686
    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3687
    const-string/jumbo v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3688
    const-string/jumbo v1, "android.app.action.DEVICE_OWNER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3689
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3680
    return-void
.end method

.method private unloadTui()Z
    .locals 3

    .prologue
    .line 3715
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_0

    .line 3716
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "unloadTUI"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3720
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v1}, Landroid/service/tima/ITimaService;->unloadTui()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3724
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 3721
    :catch_0
    move-exception v0

    .line 3722
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unregisterPersonaObserver(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 4001
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaObservers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;

    .line 4003
    .local v0, "observer":Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;
    if-eqz v0, :cond_0

    .line 4004
    invoke-virtual {v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->unregisterPersonaObserverReceiver()V

    .line 4005
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaObservers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4000
    :cond_0
    return-void
.end method

.method private updateEnterpriseDBForDefaultCCMProfile()Z
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1048
    iget-object v8, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    if-eqz v8, :cond_4

    .line 1049
    const/16 v3, 0x3e8

    .line 1051
    .local v3, "callerUID":I
    const/4 v7, 0x0

    .line 1052
    .local v7, "existSystemAdmin":Z
    :try_start_0
    iget-object v8, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1053
    const/4 v9, 0x0

    .line 1052
    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1054
    .local v2, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v2, :cond_1

    .line 1055
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adminId$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1056
    .local v0, "adminId":Ljava/lang/Long;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    .line 1057
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "default admin uid already exist"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    const/4 v7, 0x1

    .line 1064
    .end local v0    # "adminId":Ljava/lang/Long;
    .end local v1    # "adminId$iterator":Ljava/util/Iterator;
    :cond_1
    if-nez v7, :cond_3

    .line 1065
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1066
    .local v4, "cvUid":Landroid/content/ContentValues;
    const-string/jumbo v8, "adminUid"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1067
    const-string/jumbo v8, "adminName"

    const-string/jumbo v9, "CCM-System"

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    const-string/jumbo v8, "canRemove"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1070
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1071
    .local v5, "cvUidWhere":Landroid/content/ContentValues;
    const-string/jumbo v8, "adminUid"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1074
    iget-object v8, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1075
    const-string/jumbo v9, "ADMIN_INFO"

    .line 1074
    invoke-virtual {v8, v9, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1076
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 1077
    const-string/jumbo v9, "insert admin info table - DB operation failed"

    .line 1076
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    return v12

    .line 1080
    :cond_2
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "success default admin uid"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1086
    .end local v4    # "cvUid":Landroid/content/ContentValues;
    .end local v5    # "cvUidWhere":Landroid/content/ContentValues;
    :cond_3
    return v13

    .line 1082
    .end local v2    # "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catch_0
    move-exception v6

    .line 1083
    .local v6, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "failed to update default admin uid : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    return v12

    .line 1088
    .end local v3    # "callerUID":I
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "existSystemAdmin":Z
    :cond_4
    return v12
.end method

.method private updateLockStatus(IZZZ)Z
    .locals 11
    .param p1, "userId"    # I
    .param p2, "isContainerClbk"    # Z
    .param p3, "lock"    # Z
    .param p4, "regForDefCert"    # Z

    .prologue
    const/4 v10, 0x0

    .line 4078
    const/4 v1, 0x0

    .line 4079
    .local v1, "isLocked":Z
    const/4 v3, 0x0

    .line 4081
    .local v3, "rowCount":I
    iget-boolean v8, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v8, :cond_1

    .line 4082
    sget-boolean v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v8, :cond_0

    .line 4083
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 4084
    const-string/jumbo v9, "updateLockStatus - TIMA version does not include CCM"

    .line 4083
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4085
    :cond_0
    return v10

    .line 4091
    :cond_1
    if-nez p4, :cond_2

    .line 4092
    :try_start_0
    iget v8, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    if-gtz v8, :cond_2

    .line 4093
    return v10

    .line 4098
    :cond_2
    if-eqz p2, :cond_4

    .line 4103
    const/4 v8, 0x0

    invoke-static {v8, p1, p3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_update_lock_status(IIZ)J

    .line 4143
    .end local v1    # "isLocked":Z
    :cond_3
    :goto_0
    const/4 v8, 0x1

    return v8

    .line 4106
    .restart local v1    # "isLocked":Z
    :cond_4
    const/4 v7, 0x0

    .line 4107
    .local v7, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v8, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "user"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    .line 4108
    .local v6, "userManager":Landroid/os/UserManager;
    if-eqz v6, :cond_5

    .line 4109
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v7

    .line 4113
    .end local v7    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_5
    iget-object v8, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    .line 4114
    const-string/jumbo v9, "keyguard"

    .line 4113
    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 4115
    .local v2, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    .line 4122
    .local v1, "isLocked":Z
    if-eqz v7, :cond_7

    .line 4124
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "user$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 4125
    .local v4, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 4126
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "skipping updateLockStatus for KnoxWorkspace, user.id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4140
    .end local v1    # "isLocked":Z
    .end local v2    # "km":Landroid/app/KeyguardManager;
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    .end local v5    # "user$iterator":Ljava/util/Iterator;
    .end local v6    # "userManager":Landroid/os/UserManager;
    :catch_0
    move-exception v0

    .line 4141
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 4128
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "isLocked":Z
    .restart local v2    # "km":Landroid/app/KeyguardManager;
    .restart local v4    # "user":Landroid/content/pm/UserInfo;
    .restart local v5    # "user$iterator":Ljava/util/Iterator;
    .restart local v6    # "userManager":Landroid/os/UserManager;
    :cond_6
    :try_start_1
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateLockStatus, user.id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4129
    iget v8, v4, Landroid/content/pm/UserInfo;->id:I

    const/4 v9, 0x0

    invoke-static {v9, v8, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_update_lock_status(IIZ)J

    goto :goto_1

    .line 4135
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    .end local v5    # "user$iterator":Ljava/util/Iterator;
    :cond_7
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "updateLockStatus, users null, so falling back to just userId"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4136
    const/4 v8, 0x0

    invoke-static {v8, p1, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_update_lock_status(IIZ)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private validateCallerContainer(Lcom/samsung/android/knox/ContextInfo;I)Z
    .locals 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "userId"    # I

    .prologue
    const/4 v8, 0x1

    .line 4443
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4444
    .local v1, "callingUid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 4446
    .local v0, "appId":I
    const/16 v5, 0x3e8

    if-eq v0, v5, :cond_6

    .line 4447
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 4449
    .local v2, "currentUserId":I
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_0

    .line 4450
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "validateCallerContainer - UserId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4451
    const-string/jumbo v7, ", currentUserId: "

    .line 4450
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4451
    const-string/jumbo v7, ", appId: "

    .line 4450
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4452
    const-string/jumbo v7, ", callingUid: "

    .line 4450
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4454
    :cond_0
    if-eq v2, p2, :cond_6

    .line 4456
    const/16 v5, 0x64

    if-ge v2, v5, :cond_2

    if-le v2, v8, :cond_2

    .line 4457
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getProfileOwnerUid(I)I

    move-result v5

    if-ne v5, v1, :cond_2

    .line 4458
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_1

    .line 4459
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "ClientCertificateManager.validateCallerContainer() callingUid is owner of the profile"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4460
    :cond_1
    return v8

    .line 4464
    :cond_2
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getMUMContainerOwnerUid(I)I

    move-result v3

    .line 4465
    .local v3, "mumContainerOwnerUid":I
    iget-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 4466
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 4465
    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerOwnerUid(I)I

    move-result v4

    .line 4467
    .local v4, "ownerUid":I
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_3

    .line 4468
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 4469
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "validateCallerContainer - mumContainerOwnerUid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4470
    const-string/jumbo v7, ", ownerUid: "

    .line 4469
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4471
    const-string/jumbo v7, ", callerUid: "

    .line 4469
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4472
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 4469
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4472
    const-string/jumbo v7, ", containerId: "

    .line 4469
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4473
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 4469
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4468
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4475
    :cond_3
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-eq v3, v5, :cond_4

    .line 4476
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-ne v4, v5, :cond_5

    .line 4477
    :cond_4
    return v8

    .line 4476
    :cond_5
    if-eq v3, v1, :cond_4

    .line 4480
    new-instance v5, Ljava/lang/SecurityException;

    .line 4481
    const-string/jumbo v6, "Caller does not belong to the container"

    .line 4480
    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4485
    .end local v2    # "currentUserId":I
    .end local v3    # "mumContainerOwnerUid":I
    .end local v4    # "ownerUid":I
    :cond_6
    return v8
.end method

.method private validatePackageExemption(IILjava/lang/String;)Z
    .locals 11
    .param p1, "userId"    # I
    .param p2, "callerUid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4507
    sget-boolean v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v8, :cond_0

    .line 4508
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "in validatePackageExemption"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4511
    :cond_0
    const/4 v6, 0x0

    .line 4512
    .local v6, "rowCount":I
    iget-object v8, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v8, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 4515
    .local v2, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :try_start_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adminId$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 4516
    .local v0, "adminId":Ljava/lang/Long;
    sget-boolean v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v8, :cond_1

    .line 4517
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "AdminId - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " UserId - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4519
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 4520
    .local v3, "cvW":Landroid/content/ContentValues;
    const-string/jumbo v8, "adminUid"

    invoke-virtual {v3, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4521
    const-string/jumbo v8, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4522
    const-string/jumbo v8, "allowAllPkgs"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4524
    iget-object v8, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 4525
    const-string/jumbo v9, "ClientCertificateManagerTable"

    .line 4524
    invoke-virtual {v8, v9, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v8

    add-int/2addr v6, v8

    goto :goto_0

    .line 4528
    .end local v0    # "adminId":Ljava/lang/Long;
    .end local v3    # "cvW":Landroid/content/ContentValues;
    :cond_2
    if-lez v6, :cond_4

    .line 4529
    sget-boolean v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v8, :cond_3

    .line 4530
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "All packages are allowed access to CCM token"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4531
    :cond_3
    const/4 v8, 0x1

    return v8

    .line 4535
    :cond_4
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 4536
    .local v4, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v8, "adminUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4537
    const-string/jumbo v8, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4538
    iget-object v8, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 4539
    const-string/jumbo v9, "ClientCertificateManagerTable"

    const-string/jumbo v10, "pkgName"

    .line 4538
    invoke-virtual {v8, v9, v10, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v7

    .line 4545
    .local v7, "tokenPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_5

    .line 4546
    invoke-interface {v7, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_5

    .line 4547
    const/4 v8, 0x1

    return v8

    .line 4550
    .end local v1    # "adminId$iterator":Ljava/util/Iterator;
    .end local v4    # "cvWhere":Landroid/content/ContentValues;
    .end local v7    # "tokenPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v5

    .line 4551
    .local v5, "e":Ljava/lang/Exception;
    sget-boolean v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v8, :cond_5

    .line 4552
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 4553
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "validatePackageExemption - Exception"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 4552
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4556
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_5
    const/4 v8, 0x0

    return v8
.end method

.method private validatePackageList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateProfile;)Z
    .locals 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profile"    # Lcom/samsung/android/knox/keystore/CertificateProfile;

    .prologue
    .line 1961
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_0

    .line 1962
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "in validatePackageList"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v8

    .line 1967
    .local v8, "userId":I
    const/4 v6, 0x0

    .line 1970
    .local v6, "rowCount":I
    :try_start_0
    iget-object v9, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v9, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1973
    .local v2, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adminId$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1974
    .local v0, "adminId":Ljava/lang/Long;
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_1

    .line 1975
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "AdminId - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " UserId - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1978
    .local v3, "cvW":Landroid/content/ContentValues;
    const-string/jumbo v9, "adminUid"

    invoke-virtual {v3, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1979
    const-string/jumbo v9, "uid"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1980
    const-string/jumbo v9, "allowAllPkgs"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1982
    iget-object v9, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1983
    const-string/jumbo v10, "ClientCertificateManagerTable"

    .line 1982
    invoke-virtual {v9, v10, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    add-int/2addr v6, v9

    goto :goto_0

    .line 1985
    .end local v0    # "adminId":Ljava/lang/Long;
    .end local v1    # "adminId$iterator":Ljava/util/Iterator;
    .end local v2    # "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v3    # "cvW":Landroid/content/ContentValues;
    :catch_0
    move-exception v5

    .line 1986
    .local v5, "e":Ljava/lang/Exception;
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_2

    .line 1987
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 1988
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "validatePackageList adminId - Exception "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1989
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    .line 1988
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1987
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_2
    if-lez v6, :cond_4

    .line 1993
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_3

    .line 1994
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "All packages are allowed access to CCM token"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    :cond_3
    const/4 v9, 0x1

    return v9

    .line 1999
    :cond_4
    iget-boolean v9, p2, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowAllPackages:Z

    if-eqz v9, :cond_6

    .line 2000
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_5

    .line 2001
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "CCM profile does not allow all packages"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    :cond_5
    const/4 v9, 0x0

    return v9

    .line 2006
    :cond_6
    iget-object v9, p2, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    if-eqz v9, :cond_7

    iget-object v9, p2, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 2007
    :cond_7
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_8

    .line 2008
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Invalid package list"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    :cond_8
    const/4 v9, 0x0

    return v9

    .line 2014
    :cond_9
    :try_start_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2015
    .local v4, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v9, "adminUid"

    iget v10, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2016
    const-string/jumbo v9, "uid"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2017
    iget-object v9, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2018
    const-string/jumbo v10, "ClientCertificateManagerTable"

    const-string/jumbo v11, "pkgName"

    .line 2017
    invoke-virtual {v9, v10, v11, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v7

    .line 2025
    .local v7, "tokenPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_a

    .line 2026
    iget-object v9, p2, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    .line 2025
    if-eqz v9, :cond_a

    .line 2027
    const/4 v9, 0x1

    return v9

    .line 2029
    .end local v4    # "cvWhere":Landroid/content/ContentValues;
    .end local v7    # "tokenPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_1
    move-exception v5

    .line 2030
    .restart local v5    # "e":Ljava/lang/Exception;
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_a

    .line 2031
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 2032
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "validatePackageList tokenPkgList - Exception "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2033
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    .line 2032
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2031
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_a
    const/4 v9, 0x0

    return v9
.end method

.method private verifyCertChain([B)[B
    .locals 4
    .param p1, "hashedPin"    # [B

    .prologue
    .line 3728
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_0

    .line 3729
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "verifyCertChain"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3732
    :cond_0
    const/4 v1, 0x0

    .line 3734
    .local v1, "pin":[B
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v2, p1}, Landroid/service/tima/ITimaService;->verifyCertChain([B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3739
    .end local v1    # "pin":[B
    :goto_0
    return-object v1

    .line 3735
    .restart local v1    # "pin":[B
    :catch_0
    move-exception v0

    .line 3736
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "verifyCertChain - failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3737
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private verifyCertificateInstaller(IIILjava/lang/String;Z)Z
    .locals 10
    .param p1, "callerUid"    # I
    .param p2, "adminId"    # I
    .param p3, "userId"    # I
    .param p4, "alias"    # Ljava/lang/String;
    .param p5, "isCsrRecord"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 4362
    :try_start_0
    invoke-static {p3, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    .line 4364
    .local v4, "uid":I
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_0

    .line 4365
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "AdminId - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", UserId - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4366
    const-string/jumbo v7, ", CallerUid - "

    .line 4365
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4366
    const-string/jumbo v7, ", Alias - "

    .line 4365
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4367
    const-string/jumbo v7, ", uid - "

    .line 4365
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4367
    const-string/jumbo v7, ", isCsrRecord - "

    .line 4365
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4370
    :cond_0
    if-ne v4, p2, :cond_1

    .line 4371
    return v9

    .line 4374
    :cond_1
    if-eqz p5, :cond_3

    const/4 v0, 0x1

    .line 4376
    .local v0, "csrRecordIntValue":I
    :goto_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4377
    .local v1, "cvW":Landroid/content/ContentValues;
    const-string/jumbo v5, "adminUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4378
    const-string/jumbo v5, "uid"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4379
    const-string/jumbo v5, "installerId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4380
    const-string/jumbo v5, "alias"

    invoke-virtual {v1, v5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4381
    const-string/jumbo v5, "csr"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4383
    iget-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 4384
    const-string/jumbo v6, "CCMCertTable"

    .line 4383
    invoke-virtual {v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v3

    .line 4386
    .local v3, "rowCount":I
    if-lez v3, :cond_4

    .line 4387
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_2

    .line 4388
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 4389
    const-string/jumbo v6, "verifyCertificateInstaller - Caller is certificate installer"

    .line 4388
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4390
    :cond_2
    return v9

    .line 4374
    .end local v0    # "csrRecordIntValue":I
    .end local v1    # "cvW":Landroid/content/ContentValues;
    .end local v3    # "rowCount":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "csrRecordIntValue":I
    goto :goto_0

    .line 4392
    .end local v0    # "csrRecordIntValue":I
    .end local v4    # "uid":I
    :catch_0
    move-exception v2

    .line 4393
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_4

    .line 4394
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 4395
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "verifyCertificateInstaller - Exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4396
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 4395
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4394
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4399
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    return v8
.end method


# virtual methods
.method public SetTokenTUIPasswd(II)I
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "minTUIPinLen"    # I

    .prologue
    .line 3774
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_0

    .line 3775
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SetTokenTUIPasswd - slotId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "minTUIPinLen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3779
    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->CCM_SetTokenTUIPasswd(II)I

    move-result v0

    .line 3781
    .local v0, "ret":I
    return v0
.end method

.method public addPackageToExemptList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3488
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 3490
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_0

    .line 3491
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "in addPackageToExemptList for cxtInfo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/knox/ContextInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3493
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3495
    if-eqz p1, :cond_1

    if-nez p2, :cond_3

    .line 3496
    :cond_1
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_2

    .line 3497
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "addPackageToExemptList - Invalid input"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3498
    :cond_2
    return v6

    .line 3501
    :cond_3
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_4

    .line 3502
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "addPackageToExemptList packageName - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3504
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->enforceAdminPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 3506
    iget-boolean v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v2, :cond_6

    .line 3507
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_5

    .line 3508
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 3509
    const-string/jumbo v3, "addPackageToExemptList - TIMA version does not include CCM"

    .line 3508
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3510
    :cond_5
    return v6

    .line 3513
    :cond_6
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledByAdmin(I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 3514
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_7

    .line 3515
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 3516
    const-string/jumbo v3, "addPackageToExemptList - CCM is not enabled by admin"

    .line 3515
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3517
    :cond_7
    return v6

    .line 3520
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    .line 3522
    .local v1, "userId":I
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1, v2, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->validatePackageExemption(IILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 3524
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_9

    .line 3525
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "addPackageToExemptList - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3526
    const-string/jumbo v4, " not whitelisted"

    .line 3525
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3527
    :cond_9
    return v6

    .line 3530
    :cond_a
    invoke-direct {p0, v1, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getPackageUid(ILjava/lang/String;)I

    move-result v0

    .line 3532
    .local v0, "uid":I
    const/4 v2, -0x1

    if-eq v2, v0, :cond_c

    .line 3533
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v7, v2, v1, v0, v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_manage_exempt_list(ZIIIZ)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v4, v2

    if-eqz v2, :cond_d

    .line 3534
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_b

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "addPackageToExemptList - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3535
    :cond_b
    return v6

    .line 3538
    :cond_c
    return v6

    .line 3541
    :cond_d
    return v7
.end method

.method public deleteCCMProfile(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 924
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_0

    .line 925
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in deleteCCMProfile"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 929
    if-nez p1, :cond_2

    .line 930
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_1

    .line 931
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "deleteCCMProfile - null cxtInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    :cond_1
    return v3

    .line 935
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->enforceAdminPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 937
    iget-boolean v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v1, :cond_4

    .line 938
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_3

    .line 939
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 940
    const-string/jumbo v2, "deleteCCMProfile - TIMA version does not include CCM"

    .line 939
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    :cond_3
    return v3

    .line 944
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 946
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->checkAFW(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 947
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_5

    .line 948
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "deleteCCMProfile - Ignore user operation inAFW"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    :cond_5
    return v3

    .line 951
    :cond_6
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMDefaultCertStore(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 952
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_7

    .line 953
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "deleteCCMProfile - CCM is set default for userId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    :cond_7
    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCSRProfileUsingAdminId(II)Z

    .line 956
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCertificateProfile(I)Z

    .line 957
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCCMProfile(I)Z

    .line 958
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCCMDefaultPolicyRecord(I)Z

    .line 959
    return v4

    .line 962
    :cond_8
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledByAdmin(I)Z

    move-result v1

    if-nez v1, :cond_a

    .line 963
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_9

    .line 964
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "deleteCCMProfile - CCM is not enabled by admin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    :cond_9
    return v3

    .line 968
    :cond_a
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCSRProfileUsingAdminId(II)Z

    move-result v1

    if-nez v1, :cond_b

    .line 969
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_b

    .line 970
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 971
    const-string/jumbo v2, "in deleteCCMProfile - deleteCSRProfileUsingAdminId failed"

    .line 970
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    :cond_b
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1, v0, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCertificateProfileUsingAdminId(IIZ)Z

    move-result v1

    if-nez v1, :cond_d

    .line 976
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_c

    .line 977
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 978
    const-string/jumbo v2, "in deleteCCMProfile - failed to delete certificates"

    .line 977
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    :cond_c
    return v3

    .line 982
    :cond_d
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1, v0, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCCMProfileUsingAdminId(IIZ)Z

    move-result v1

    if-nez v1, :cond_f

    .line 984
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_e

    .line 985
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in deleteCCMProfile - failed to delete profile"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    :cond_e
    return v3

    .line 988
    :cond_f
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->removeAllGrants()V

    .line 989
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getSlotCount()I

    move-result v1

    iput v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    .line 991
    return v4
.end method

.method public deleteCSRProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "templateName"    # Ljava/lang/String;

    .prologue
    .line 3159
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 3160
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in deleteCSRProfile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3162
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 3164
    iget-boolean v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v0, :cond_2

    .line 3165
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_1

    .line 3166
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 3167
    const-string/jumbo v1, "deleteCSRProfile - TIMA version does not include CCM"

    .line 3166
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3168
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 3171
    :cond_2
    if-eqz p2, :cond_3

    if-nez p1, :cond_5

    .line 3173
    :cond_3
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_4

    .line 3174
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteCSRProfile - Invalid Arguments"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3175
    :cond_4
    const/4 v0, 0x0

    return v0

    .line 3172
    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 3178
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3179
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_6

    .line 3180
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteCSRProfile - CCM is not enabled for caller"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3181
    :cond_6
    const/4 v0, 0x0

    return v0

    .line 3184
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v3

    .line 3186
    .local v3, "userId":I
    const/4 v0, 0x0

    invoke-direct {p0, p1, v3, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAdminIdForCaller(Lcom/samsung/android/knox/ContextInfo;ILjava/util/List;)I

    move-result v2

    .line 3187
    .local v2, "adminId":I
    const/4 v0, -0x1

    if-ne v0, v2, :cond_9

    .line 3188
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_8

    .line 3189
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteCSRProfile - failed to get admin Id"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3190
    :cond_8
    const/4 v0, 0x0

    return v0

    .line 3193
    :cond_9
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 3194
    const/4 v5, 0x1

    move-object v0, p0

    move-object v4, p2

    .line 3193
    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->verifyCertificateInstaller(IIILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_b

    .line 3195
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_a

    .line 3196
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 3197
    const-string/jumbo v1, "deleteCSRProfile - verifyCertificateInstaller returned false"

    .line 3196
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3198
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 3201
    :cond_b
    invoke-static {v2, v3, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_csr_profile(IILjava/lang/String;)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_d

    .line 3203
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_c

    .line 3204
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 3205
    const-string/jumbo v1, "deleteCSRProfile - native ccm_delete_csr_profile failed"

    .line 3204
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3206
    :cond_c
    const/4 v0, 0x0

    return v0

    .line 3210
    :cond_d
    const/4 v0, 0x5

    new-array v7, v0, [Ljava/lang/String;

    const-string/jumbo v0, "adminUid"

    const/4 v1, 0x0

    aput-object v0, v7, v1

    const-string/jumbo v0, "uid"

    const/4 v1, 0x1

    aput-object v0, v7, v1

    .line 3211
    const-string/jumbo v0, "alias"

    const/4 v1, 0x2

    aput-object v0, v7, v1

    const-string/jumbo v0, "installerId"

    const/4 v1, 0x3

    aput-object v0, v7, v1

    .line 3212
    const-string/jumbo v0, "csr"

    const/4 v1, 0x4

    aput-object v0, v7, v1

    .line 3213
    .local v7, "sColumns":[Ljava/lang/String;
    const/4 v0, 0x5

    new-array v8, v0, [Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v8, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v8, v1

    .line 3214
    const/4 v0, 0x2

    aput-object p2, v8, v0

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v8, v1

    .line 3215
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, v8, v1

    .line 3217
    .local v8, "sValues":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v1, "CCMCertTable"

    invoke-virtual {v0, v1, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3223
    :cond_e
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 3219
    :catch_0
    move-exception v6

    .line 3220
    .local v6, "e":Ljava/lang/Exception;
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_e

    .line 3221
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "deleteCSRProfile - Exception"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1726
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 1727
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in deleteCertificate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1731
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1733
    if-eqz p1, :cond_1

    if-nez p2, :cond_3

    .line 1734
    :cond_1
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_2

    .line 1735
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteCertificate - Invalid Arguments"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    :cond_2
    return v5

    .line 1733
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1739
    iget-boolean v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v0, :cond_5

    .line 1740
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_4

    .line 1741
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 1742
    const-string/jumbo v1, "deleteCertificate - TIMA version does not include CCM"

    .line 1741
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    :cond_4
    return v5

    .line 1746
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v3

    .line 1748
    .local v3, "userId":I
    const/16 v2, 0x3e8

    .line 1751
    .local v2, "adminId":I
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1752
    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAdminIdForCaller(Lcom/samsung/android/knox/ContextInfo;ILjava/util/List;)I

    move-result v2

    .line 1753
    const/4 v0, -0x1

    if-ne v0, v2, :cond_6

    .line 1754
    const/16 v2, 0x3e8

    .line 1755
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_6

    .line 1756
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteCertificate - failed to get admin Id"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    :cond_6
    invoke-direct {p0, v2, v3, p2, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->checkAliasExists(IILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1761
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_7

    .line 1762
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "deleteCertificate - alias doesn\'t exist: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    :cond_7
    return v5

    .line 1766
    :cond_8
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->verifyCertificateInstaller(IIILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1768
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_9

    .line 1769
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 1770
    const-string/jumbo v1, "deleteCertificate - verifyCertificateInstaller failed"

    .line 1769
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    :cond_9
    return v5

    .line 1774
    :cond_a
    invoke-direct {p0, v2, v3, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCertificateUsingAdminId(IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1775
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_b

    .line 1776
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteCertificate - failed to delete certificate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    :cond_b
    return v5

    .line 1780
    :cond_c
    const/4 v0, 0x1

    return v0
.end method

.method public generateCSR(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[B
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "UID"    # I
    .param p3, "tokenName"    # Ljava/lang/String;
    .param p4, "tokenPassword"    # Ljava/lang/String;
    .param p5, "objectAlias"    # Ljava/lang/String;
    .param p6, "isTrustedBootRequired"    # Z

    .prologue
    const/4 v4, 0x0

    .line 362
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_0

    .line 363
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "in generateCSR"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 367
    if-eqz p3, :cond_1

    if-nez p1, :cond_3

    .line 370
    :cond_1
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_2

    .line 371
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "generateCSR - Invalid Arguments"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_2
    return-object v4

    .line 367
    :cond_3
    if-eqz p5, :cond_1

    .line 368
    if-eqz p4, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 369
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 375
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->enforcePermission(Lcom/samsung/android/knox/ContextInfo;)V

    .line 377
    iget-boolean v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v2, :cond_5

    .line 378
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_4

    .line 379
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "generateCSR - TIMA version does not include CCM"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_4
    return-object v4

    .line 383
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    .line 385
    .local v1, "userId":I
    const/16 v0, 0x3e8

    .line 388
    .local v0, "adminId":I
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 389
    invoke-direct {p0, p1, v1, v4}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAdminIdForCaller(Lcom/samsung/android/knox/ContextInfo;ILjava/util/List;)I

    move-result v0

    .line 390
    const/4 v2, -0x1

    if-ne v2, v0, :cond_6

    .line 391
    const/16 v0, 0x3e8

    .line 392
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_6

    .line 393
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "in generateCSR - failed to get admin Id"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_6
    invoke-static {v0, v1, p5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_generate_csr(IILjava/lang/String;)[B

    move-result-object v2

    return-object v2
.end method

.method public generateCSRUsingByteArray(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;[BI)[B
    .locals 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "challengePassword"    # Ljava/lang/String;
    .param p4, "subj"    # [B
    .param p5, "keyLength"    # I

    .prologue
    .line 3257
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_0

    .line 3258
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "in generateCSRUsingByteArray"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3262
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 3264
    iget-boolean v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v2, :cond_2

    .line 3265
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_1

    .line 3266
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "generateCSRUsingByteArray - TIMA version does not include CCM"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3267
    :cond_1
    const/4 v2, 0x0

    return-object v2

    .line 3270
    :cond_2
    if-eqz p2, :cond_3

    if-nez p4, :cond_5

    .line 3274
    :cond_3
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_4

    .line 3275
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "generateCSRUsingByteArray - Invalid Arguments"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3276
    :cond_4
    const/4 v2, 0x0

    return-object v2

    .line 3271
    :cond_5
    if-eqz p1, :cond_3

    .line 3272
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    .line 3273
    if-eqz p3, :cond_6

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x40

    if-gt v2, v3, :cond_3

    .line 3280
    :cond_6
    array-length v2, p4

    const/16 v3, 0x200

    if-le v2, v3, :cond_8

    .line 3281
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_7

    .line 3282
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "generateCSRUsingByteArray - subject length exceeds maximum value 512"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3283
    :cond_7
    const/4 v2, 0x0

    return-object v2

    .line 3286
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 3287
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_9

    .line 3288
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "generateCSRUsingByteArray - CCM is not enabled for caller"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3289
    :cond_9
    const/4 v2, 0x0

    return-object v2

    .line 3292
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    .line 3295
    .local v1, "userId":I
    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAdminIdForCaller(Lcom/samsung/android/knox/ContextInfo;ILjava/util/List;)I

    move-result v0

    .line 3296
    .local v0, "adminId":I
    const/4 v2, -0x1

    if-ne v2, v0, :cond_c

    .line 3297
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_b

    .line 3298
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "generateCSRUsingByteArray - failed to get admin Id"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3299
    :cond_b
    const/4 v2, 0x0

    return-object v2

    .line 3302
    :cond_c
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_d

    .line 3303
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "generateCSRUsingByteArray - challengePassword is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3305
    :cond_d
    const/4 v7, 0x0

    .line 3306
    .local v7, "challPwdBytes":[B
    const/4 v5, 0x0

    .line 3308
    .local v5, "buf":[B
    if-eqz p3, :cond_12

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_12

    .line 3310
    :try_start_0
    new-instance v9, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v9}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 3311
    .local v9, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    invoke-direct {v2, p3}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 3313
    new-instance v6, Lcom/android/org/bouncycastle/asn1/x509/Attribute;

    .line 3314
    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_challengePassword:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 3315
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v3, v9}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 3313
    invoke-direct {v6, v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/Attribute;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    .line 3316
    .local v6, "attribute":Lcom/android/org/bouncycastle/asn1/x509/Attribute;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/Attribute;->getEncoded()[B

    move-result-object v7

    .line 3318
    .local v7, "challPwdBytes":[B
    array-length v2, v7

    const/16 v3, 0x7f

    if-le v2, v3, :cond_f

    .line 3320
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_e

    .line 3321
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "generateCSRUsingByteArray - challenge password too long"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3322
    :cond_e
    const/4 v2, 0x0

    return-object v2

    .line 3323
    :cond_f
    array-length v2, v7

    if-gtz v2, :cond_11

    .line 3324
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_10

    .line 3325
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "generateCSRUsingByteArray - challenge password length equal or less than 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3326
    :cond_10
    const/4 v2, 0x0

    return-object v2

    .line 3328
    :cond_11
    array-length v2, v7

    add-int/lit8 v2, v2, 0x2

    new-array v5, v2, [B

    .line 3330
    .local v5, "buf":[B
    array-length v2, v7

    .line 3329
    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v7, v3, v5, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 3333
    const/16 v2, -0x60

    const/4 v3, 0x0

    aput-byte v2, v5, v3

    .line 3334
    array-length v2, v7

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v5, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "buf":[B
    .end local v6    # "attribute":Lcom/android/org/bouncycastle/asn1/x509/Attribute;
    .end local v7    # "challPwdBytes":[B
    .end local v9    # "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_12
    :goto_0
    move v2, p5

    move-object v3, p4

    move-object v4, p2

    .line 3344
    invoke-static/range {v0 .. v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_gen_csr_without_template(III[BLjava/lang/String;[B)[B

    move-result-object v2

    return-object v2

    .line 3336
    :catch_0
    move-exception v8

    .line 3337
    .local v8, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_12

    .line 3338
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 3339
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "generateCSRUsingByteArray - encode challengePassword Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3340
    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 3339
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3338
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public generateCSRUsingString(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)[B
    .locals 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "challengePassword"    # Ljava/lang/String;
    .param p4, "customizedStr"    # Ljava/lang/String;
    .param p5, "keyLength"    # I

    .prologue
    const/4 v3, 0x0

    .line 3230
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 3231
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in generateCSRUsingString"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3233
    :cond_0
    if-nez p4, :cond_2

    .line 3234
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_1

    .line 3235
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "generateCSRUsingString - Invalid Arguments"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3236
    :cond_1
    return-object v3

    .line 3239
    :cond_2
    const/4 v4, 0x0

    .line 3243
    .local v4, "subj":[B
    :try_start_0
    new-instance v7, Lcom/android/org/bouncycastle/jce/X509Principal;

    invoke-direct {v7, p4}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>(Ljava/lang/String;)V

    .line 3244
    .local v7, "prncpal":Lcom/android/org/bouncycastle/jce/X509Principal;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/X509Principal;->getEncoded()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .local v4, "subj":[B
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    .line 3251
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->generateCSRUsingByteArray(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;[BI)[B

    move-result-object v0

    return-object v0

    .line 3245
    .end local v7    # "prncpal":Lcom/android/org/bouncycastle/jce/X509Principal;
    .local v4, "subj":[B
    :catch_0
    move-exception v6

    .line 3246
    .local v6, "e":Ljava/lang/Exception;
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_3

    .line 3247
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "in generateCSRUsingString - x509Principal Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3248
    :cond_3
    return-object v3
.end method

.method public generateCSRUsingTemplate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "templateName"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "challengePassword"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 3351
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_0

    .line 3352
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "in generateCSRUsingTemplate"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3355
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 3357
    iget-boolean v7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v7, :cond_2

    .line 3358
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_1

    .line 3359
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 3360
    const-string/jumbo v8, "generateCSRUsingTemplate - TIMA version does not include CCM"

    .line 3359
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3361
    :cond_1
    return-object v10

    .line 3364
    :cond_2
    if-eqz p2, :cond_3

    .line 3365
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_5

    .line 3370
    :cond_3
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_4

    .line 3371
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "generateCSRUsingTemplate - Invalid Arguments"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3372
    :cond_4
    return-object v10

    .line 3366
    :cond_5
    if-eqz p3, :cond_3

    .line 3367
    if-eqz p1, :cond_3

    .line 3368
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_3

    .line 3369
    if-eqz p4, :cond_6

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x40

    if-gt v7, v8, :cond_3

    .line 3375
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 3376
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_7

    .line 3377
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 3378
    const-string/jumbo v8, "generateCSRUsingTemplate - CCM is not enabled for caller"

    .line 3377
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3379
    :cond_7
    return-object v10

    .line 3382
    :cond_8
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_9

    .line 3383
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "generateCSRUsingTemplate - challengePassword is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3386
    :cond_9
    const/4 v3, 0x0

    .line 3387
    .local v3, "challPwdBytes":[B
    const/4 v2, 0x0

    .line 3389
    .local v2, "buf":[B
    if-eqz p4, :cond_e

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_e

    .line 3391
    :try_start_0
    new-instance v6, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 3392
    .local v6, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v7, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    invoke-direct {v7, p4}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 3394
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/Attribute;

    .line 3395
    sget-object v7, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_challengePassword:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 3396
    new-instance v8, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v8, v6}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 3394
    invoke-direct {v1, v7, v8}, Lcom/android/org/bouncycastle/asn1/x509/Attribute;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    .line 3397
    .local v1, "attribute":Lcom/android/org/bouncycastle/asn1/x509/Attribute;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/Attribute;->getEncoded()[B

    move-result-object v3

    .line 3399
    .local v3, "challPwdBytes":[B
    array-length v7, v3

    const/16 v8, 0x7f

    if-le v7, v8, :cond_b

    .line 3401
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_a

    .line 3402
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 3403
    const-string/jumbo v8, "generateCSRUsingTemplate - challenge password too long"

    .line 3402
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3404
    :cond_a
    return-object v10

    .line 3405
    :cond_b
    array-length v7, v3

    if-gtz v7, :cond_d

    .line 3406
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_c

    .line 3407
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 3408
    const-string/jumbo v8, "generateCSRUsingTemplate - challenge password length equal or less than 0"

    .line 3407
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3409
    :cond_c
    return-object v10

    .line 3411
    :cond_d
    array-length v7, v3

    add-int/lit8 v7, v7, 0x2

    new-array v2, v7, [B

    .line 3413
    .local v2, "buf":[B
    array-length v7, v3

    .line 3412
    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-static {v3, v8, v2, v9, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 3416
    const/16 v7, -0x60

    const/4 v8, 0x0

    aput-byte v7, v2, v8

    .line 3417
    array-length v7, v3

    int-to-byte v7, v7

    const/4 v8, 0x1

    aput-byte v7, v2, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3427
    .end local v1    # "attribute":Lcom/android/org/bouncycastle/asn1/x509/Attribute;
    .end local v2    # "buf":[B
    .end local v3    # "challPwdBytes":[B
    .end local v6    # "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_e
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    .line 3428
    .local v5, "userId":I
    invoke-direct {p0, p1, v5, v10}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAdminIdForCaller(Lcom/samsung/android/knox/ContextInfo;ILjava/util/List;)I

    move-result v0

    .line 3429
    .local v0, "adminId":I
    const/4 v7, -0x1

    if-ne v7, v0, :cond_10

    .line 3430
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_f

    .line 3431
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "generateCSRUsingTemplate - failed to get admin Id"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3432
    :cond_f
    return-object v10

    .line 3419
    .end local v0    # "adminId":I
    .end local v5    # "userId":I
    :catch_0
    move-exception v4

    .line 3420
    .local v4, "e":Ljava/lang/Exception;
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_e

    .line 3421
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 3422
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "generateCSRUsingTemplate - Exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3423
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    .line 3422
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3421
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3435
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "adminId":I
    .restart local v5    # "userId":I
    :cond_10
    invoke-static {v0, v5, p2, p3, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_gen_csr_using_template(IILjava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v7

    return-object v7
.end method

.method public generateKeyPair(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)[B
    .locals 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "pKeyAlias"    # Ljava/lang/String;
    .param p3, "keyLength"    # I

    .prologue
    const/4 v5, 0x0

    .line 1451
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_0

    .line 1452
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "in generateKeyPair"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1456
    iget-boolean v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v3, :cond_2

    .line 1457
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_1

    .line 1458
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "generateKeyPair - TIMA version does not include CCM"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    :cond_1
    return-object v5

    .line 1462
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1463
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_3

    .line 1464
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "generateKeyPair - CCM is not enabled for caller"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    :cond_3
    return-object v5

    .line 1468
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    .line 1469
    .local v2, "userId":I
    invoke-direct {p0, p1, v2, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAdminIdForCaller(Lcom/samsung/android/knox/ContextInfo;ILjava/util/List;)I

    move-result v0

    .line 1472
    .local v0, "adminId":I
    const/4 v3, -0x1

    if-ne v3, v0, :cond_6

    .line 1473
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_5

    .line 1474
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "generateKeyPair - failed to get admin Id"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    :cond_5
    return-object v5

    .line 1478
    :cond_6
    invoke-static {v0, v2, p2, p3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_gen_key_pair(IILjava/lang/String;I)[B

    move-result-object v1

    .line 1480
    .local v1, "tlv_return":[B
    if-nez v1, :cond_8

    .line 1481
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_7

    .line 1482
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "generateKeyPair - failed in ccm_gen_key_pair"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    :cond_7
    return-object v5

    .line 1486
    :cond_8
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_9

    .line 1487
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "generateKeyPair - succeed in ccm_gen_key_pair"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    :cond_9
    return-object v1
.end method

.method public getAliasesForCaller(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 7
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
    const/4 v6, 0x0

    .line 4228
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_0

    .line 4229
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "in getAliasesForCaller"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4231
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 4233
    if-nez p1, :cond_2

    .line 4234
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_1

    .line 4235
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "getAliasesForCaller - null cxtInfo"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4236
    :cond_1
    return-object v6

    .line 4239
    :cond_2
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    if-nez v4, :cond_4

    .line 4240
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_3

    .line 4241
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "getAliasesForCaller - Invalid Context"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4242
    :cond_3
    return-object v6

    .line 4245
    :cond_4
    const/4 v0, 0x0

    .line 4249
    .local v0, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v3

    .line 4250
    .local v3, "userId":I
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4251
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v4, "uid"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4252
    const-string/jumbo v4, "installerId"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4253
    const-string/jumbo v4, "csr"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4254
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 4255
    const-string/jumbo v5, "CCMCertTable"

    const-string/jumbo v6, "alias"

    .line 4254
    invoke-virtual {v4, v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 4263
    .end local v0    # "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    .end local v3    # "userId":I
    :cond_5
    :goto_0
    return-object v0

    .line 4257
    .restart local v0    # "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 4258
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_5

    .line 4259
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 4260
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getAliasesForPackage - aliasesList1 Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4261
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 4260
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4259
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAliasesForPackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 4281
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_0

    .line 4282
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "in getAliasesForPackage"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4284
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 4286
    if-eqz p2, :cond_1

    if-nez p1, :cond_3

    .line 4287
    :cond_1
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_2

    .line 4288
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "getAliasesForPackage - Invalid input parameters"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4289
    :cond_2
    return-object v8

    .line 4292
    :cond_3
    iget-boolean v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v6, :cond_5

    .line 4293
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_4

    .line 4294
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 4295
    const-string/jumbo v7, "getAliasesForPackage - TIMA version does not include CCM"

    .line 4294
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4296
    :cond_4
    return-object v8

    .line 4299
    :cond_5
    const/4 v0, 0x0

    .line 4300
    .local v0, "aliasesList1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 4301
    .local v1, "aliasesList2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4303
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForPackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 4304
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_6

    .line 4305
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 4306
    const-string/jumbo v7, " getAliasesForPackage - token access is not permitted"

    .line 4305
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4307
    :cond_6
    return-object v8

    .line 4310
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    .line 4312
    .local v5, "userId":I
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_8

    .line 4313
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " UserId - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " Package - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4317
    :cond_8
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 4318
    .local v2, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v6, "uid"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4319
    const-string/jumbo v6, "pkgName"

    invoke-virtual {v2, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4320
    const-string/jumbo v6, "csr"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4321
    iget-object v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 4322
    const-string/jumbo v7, "CCMCertTable"

    const-string/jumbo v8, "alias"

    .line 4321
    invoke-virtual {v6, v7, v8, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 4333
    .end local v0    # "aliasesList1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "cvWhere":Landroid/content/ContentValues;
    :cond_9
    :goto_0
    :try_start_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 4334
    .restart local v2    # "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v6, "uid"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4335
    const-string/jumbo v6, "allowAllPkgs"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4336
    const-string/jumbo v6, "csr"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4337
    iget-object v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 4338
    const-string/jumbo v7, "CCMCertTable"

    const-string/jumbo v8, "alias"

    .line 4337
    invoke-virtual {v6, v7, v8, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 4347
    .end local v1    # "aliasesList2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "cvWhere":Landroid/content/ContentValues;
    :cond_a
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4348
    .local v4, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_b

    .line 4349
    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4351
    :cond_b
    if-eqz v1, :cond_c

    .line 4352
    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4355
    :cond_c
    return-object v4

    .line 4324
    .end local v4    # "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "aliasesList1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "aliasesList2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 4325
    .local v3, "e":Ljava/lang/Exception;
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_9

    .line 4326
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 4327
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getAliasesForPackage - aliasesList1 Exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 4328
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    .line 4327
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4326
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4340
    .end local v0    # "aliasesList1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 4341
    .restart local v3    # "e":Ljava/lang/Exception;
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_a

    .line 4342
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 4343
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getAliasesForPackage - aliasesList2 Exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 4344
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    .line 4343
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4342
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getAliasesForWiFi()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 4595
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_0

    .line 4596
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "in getAliasesForWiFi"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4598
    :cond_0
    iget-boolean v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v4, :cond_2

    .line 4599
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_1

    .line 4600
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 4601
    const-string/jumbo v5, "getAliasesForWiFi - TIMA version does not include CCM"

    .line 4600
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4602
    :cond_1
    return-object v7

    .line 4605
    :cond_2
    const/4 v0, 0x0

    .line 4609
    .local v0, "aliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4610
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v4, "allowWiFi"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4611
    const-string/jumbo v4, "allowRawSigning"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4612
    const-string/jumbo v4, "csr"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4613
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 4614
    const-string/jumbo v5, "CCMCertTable"

    const-string/jumbo v6, "alias"

    .line 4613
    invoke-virtual {v4, v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v0

    .line 4616
    .local v0, "aliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 4617
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 4618
    .local v3, "uniqueAliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4619
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4620
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4628
    .end local v3    # "uniqueAliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    return-object v0

    .line 4622
    .end local v0    # "aliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    .line 4623
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_4

    .line 4624
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getAliasesForWiFi - Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4625
    :cond_4
    return-object v7
.end method

.method public getCCMProfile(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/keystore/CCMProfile;
    .locals 21
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 773
    new-instance v13, Lcom/samsung/android/knox/keystore/CCMProfile;

    invoke-direct {v13}, Lcom/samsung/android/knox/keystore/CCMProfile;-><init>()V

    .line 774
    .local v13, "profile":Lcom/samsung/android/knox/keystore/CCMProfile;
    sget-boolean v18, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v18, :cond_0

    .line 775
    sget-object v18, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v19, "in getCCMProfile"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 779
    if-nez p1, :cond_2

    .line 780
    sget-boolean v18, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v18, :cond_1

    .line 781
    sget-object v18, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v19, "getCCMProfile - null cxtInfo"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :cond_1
    const/16 v18, 0x0

    return-object v18

    .line 785
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    move/from16 v18, v0

    if-nez v18, :cond_4

    .line 786
    sget-boolean v18, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v18, :cond_3

    .line 787
    sget-object v18, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v19, "getCCMProfile - TIMA version does not include CCM"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :cond_3
    const/16 v18, 0x0

    return-object v18

    .line 792
    :cond_4
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v17

    .line 793
    .local v17, "userId":I
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAdminIdForCaller(Lcom/samsung/android/knox/ContextInfo;ILjava/util/List;)I

    move-result v5

    .line 795
    .local v5, "adminId":I
    sget-boolean v18, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v18, :cond_5

    .line 796
    sget-object v18, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "AdminId - "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " UserId - "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    :cond_5
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v0, v5, :cond_7

    .line 799
    sget-boolean v18, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v18, :cond_6

    .line 800
    sget-object v18, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v19, "getCCMProfile - admin not found"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    :cond_6
    const/16 v18, 0x0

    return-object v18

    .line 804
    :cond_7
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v14, v0, [Ljava/lang/String;

    const-string/jumbo v18, "adminUid"

    const/16 v19, 0x0

    aput-object v18, v14, v19

    .line 805
    const-string/jumbo v18, "uid"

    const/16 v19, 0x1

    aput-object v18, v14, v19

    .line 806
    .local v14, "sColumns":[Ljava/lang/String;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    aput-object v18, v16, v19

    .line 807
    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    aput-object v18, v16, v19

    .line 809
    .local v16, "sValues":[Ljava/lang/String;
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v15, v0, [Ljava/lang/String;

    const-string/jumbo v18, "accessType"

    const/16 v19, 0x0

    aput-object v18, v15, v19

    .line 810
    const-string/jumbo v18, "allowAllPkgs"

    const/16 v19, 0x1

    aput-object v18, v15, v19

    .line 811
    const-string/jumbo v18, "loginRetry"

    const/16 v19, 0x2

    aput-object v18, v15, v19

    .line 812
    const-string/jumbo v18, "loginExpiration"

    const/16 v19, 0x3

    aput-object v18, v15, v19

    .line 814
    .local v15, "sReturnColumns":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v18, v0

    .line 815
    const-string/jumbo v19, "ClientCertificateManagerTable"

    .line 814
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v14, v2, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 817
    .local v8, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v8, :cond_b

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_b

    .line 818
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    .line 819
    .local v7, "cv":Landroid/content/ContentValues;
    if-eqz v7, :cond_b

    .line 821
    const-string/jumbo v18, "accessType"

    .line 820
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 822
    .local v4, "accessCntrlMethd":Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v13, Lcom/samsung/android/knox/keystore/CCMProfile;->accessControlMethod:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    .line 825
    const-string/jumbo v18, "allowAllPkgs"

    .line 824
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    .line 826
    .local v6, "ballalowpkgs":Ljava/lang/Boolean;
    if-eqz v6, :cond_8

    .line 827
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    move/from16 v0, v18

    iput-boolean v0, v13, Lcom/samsung/android/knox/keystore/CCMProfile;->whiteListAllPackages:Z

    .line 830
    :cond_8
    sget-object v18, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->TRUSTED_PINPAD:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    iget-object v0, v13, Lcom/samsung/android/knox/keystore/CCMProfile;->accessControlMethod:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 831
    new-instance v18, Lcom/samsung/android/knox/keystore/TUIProperty;

    invoke-direct/range {v18 .. v18}, Lcom/samsung/android/knox/keystore/TUIProperty;-><init>()V

    move-object/from16 v0, v18

    iput-object v0, v13, Lcom/samsung/android/knox/keystore/CCMProfile;->tuiProperty:Lcom/samsung/android/knox/keystore/TUIProperty;

    .line 832
    const-string/jumbo v18, "loginRetry"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    .line 833
    .local v12, "loginRetry":Ljava/lang/Integer;
    const-string/jumbo v18, "loginExpiration"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    .line 834
    .local v11, "loginExpire":Ljava/lang/Integer;
    if-eqz v12, :cond_9

    .line 835
    iget-object v0, v13, Lcom/samsung/android/knox/keystore/CCMProfile;->tuiProperty:Lcom/samsung/android/knox/keystore/TUIProperty;

    move-object/from16 v18, v0

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/samsung/android/knox/keystore/TUIProperty;->loginRetry:I

    .line 837
    :cond_9
    if-eqz v11, :cond_a

    .line 838
    iget-object v0, v13, Lcom/samsung/android/knox/keystore/CCMProfile;->tuiProperty:Lcom/samsung/android/knox/keystore/TUIProperty;

    move-object/from16 v18, v0

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/samsung/android/knox/keystore/TUIProperty;->loginRetry:I

    .line 842
    .end local v11    # "loginExpire":Ljava/lang/Integer;
    .end local v12    # "loginRetry":Ljava/lang/Integer;
    :cond_a
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 843
    .local v9, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v18, "adminUid"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 844
    const-string/jumbo v18, "uid"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v18, v0

    .line 846
    const-string/jumbo v19, "ClientCertificateManagerTable"

    const-string/jumbo v20, "pkgName"

    .line 845
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v13, Lcom/samsung/android/knox/keystore/CCMProfile;->packageList:Ljava/util/List;

    .line 849
    sget-boolean v18, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v18, :cond_b

    .line 850
    sget-object v18, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 851
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "PackageList - "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 852
    iget-object v0, v13, Lcom/samsung/android/knox/keystore/CCMProfile;->packageList:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 851
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 850
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 861
    .end local v4    # "accessCntrlMethd":Ljava/lang/String;
    .end local v5    # "adminId":I
    .end local v6    # "ballalowpkgs":Ljava/lang/Boolean;
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v8    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v9    # "cvWhere":Landroid/content/ContentValues;
    .end local v13    # "profile":Lcom/samsung/android/knox/keystore/CCMProfile;
    .end local v14    # "sColumns":[Ljava/lang/String;
    .end local v15    # "sReturnColumns":[Ljava/lang/String;
    .end local v16    # "sValues":[Ljava/lang/String;
    .end local v17    # "userId":I
    :cond_b
    :goto_0
    return-object v13

    .line 856
    .restart local v13    # "profile":Lcom/samsung/android/knox/keystore/CCMProfile;
    :catch_0
    move-exception v10

    .line 857
    .local v10, "e":Ljava/lang/Exception;
    const/4 v13, 0x0

    .line 858
    .local v13, "profile":Lcom/samsung/android/knox/keystore/CCMProfile;
    sget-boolean v18, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v18, :cond_b

    .line 859
    sget-object v18, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "getCCMProfile - Exception "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCCMVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3605
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 3606
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in getCCMVersion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3608
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v0, :cond_2

    .line 3609
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_1

    .line 3610
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getCCMVersion - TIMA version does not include CCM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3611
    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 3614
    :cond_2
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->get_ccm_version()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCertificateAliases(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 9
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
    const/4 v8, 0x0

    .line 4924
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_0

    .line 4925
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "in getCertificateAliases"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4927
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 4929
    if-nez p1, :cond_2

    .line 4930
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_1

    .line 4931
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "getCertificateAliases - Invalid Arguments"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4932
    :cond_1
    return-object v8

    .line 4935
    :cond_2
    iget-boolean v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v5, :cond_4

    .line 4936
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_3

    .line 4937
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 4938
    const-string/jumbo v6, "getCertificateAliases - TIMA version does not include CCM"

    .line 4937
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4939
    :cond_3
    return-object v8

    .line 4942
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v4

    .line 4943
    .local v4, "userId":I
    const/4 v0, 0x0

    .line 4947
    .local v0, "aliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4948
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v5, "uid"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4949
    const-string/jumbo v5, "csr"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4950
    iget-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 4951
    const-string/jumbo v6, "CCMCertTable"

    const-string/jumbo v7, "alias"

    .line 4950
    invoke-virtual {v5, v6, v7, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v0

    .line 4953
    .local v0, "aliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 4954
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 4955
    .local v3, "uniqueAliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4956
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4957
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4965
    .end local v3    # "uniqueAliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5
    return-object v0

    .line 4959
    .end local v0    # "aliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    .line 4960
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_6

    .line 4961
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getCertificateAliases - Exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4962
    :cond_6
    return-object v8
.end method

.method public getCertificateAliasesHavingPrivateKey(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 10
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
    const/4 v9, 0x0

    .line 4975
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_0

    .line 4976
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "in getCertificateAliasesHavingPrivateKey"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4978
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 4980
    if-nez p1, :cond_2

    .line 4981
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_1

    .line 4982
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 4983
    const-string/jumbo v7, "getCertificateAliasesHavingPrivateKey - Invalid Arguments"

    .line 4982
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4984
    :cond_1
    return-object v9

    .line 4987
    :cond_2
    iget-boolean v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v6, :cond_4

    .line 4988
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_3

    .line 4989
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 4990
    const-string/jumbo v7, "getCertificateAliasesHavingPrivateKey - TIMA version does not include CCM"

    .line 4989
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4991
    :cond_3
    return-object v9

    .line 4994
    :cond_4
    const/4 v0, 0x0

    .line 4995
    .local v0, "aliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    .line 4996
    .local v5, "userId":I
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_5

    .line 4997
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getCertificateAliasesHavingPrivateKey - userId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5001
    :cond_5
    :try_start_0
    invoke-static {v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_get_aliases_having_private_key(I)[Ljava/lang/String;

    move-result-object v3

    .line 5003
    .local v3, "tzAliases":[Ljava/lang/String;
    if-eqz v3, :cond_6

    array-length v6, v3

    if-nez v6, :cond_8

    .line 5004
    :cond_6
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_7

    .line 5005
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 5006
    const-string/jumbo v7, "getCertificateAliasesHavingPrivateKey - native ccm_get_aliases_having_private_key returnd null"

    .line 5005
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5007
    :cond_7
    return-object v9

    .line 5010
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5011
    .end local v0    # "aliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v1, "aliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_9

    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_9

    .line 5012
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 5013
    .local v4, "uniqueAliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 5014
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 5015
    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 5025
    .end local v4    # "uniqueAliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_9
    return-object v1

    .line 5017
    .end local v1    # "aliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "tzAliases":[Ljava/lang/String;
    .restart local v0    # "aliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 5018
    .end local v0    # "aliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "e":Ljava/lang/Exception;
    :goto_0
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_a

    .line 5019
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getCertificateAliasesHavingPrivateKey - Exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 5020
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    .line 5019
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5021
    :cond_a
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 5022
    return-object v9

    .line 5017
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "aliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "tzAliases":[Ljava/lang/String;
    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v0, v1

    .end local v1    # "aliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "aliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0
.end method

.method public getDefaultCertificateAlias()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3619
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 3620
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in getDefaultCertificateAlias"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3622
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v0, :cond_2

    .line 3623
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_1

    .line 3624
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 3625
    const-string/jumbo v1, "getDefaultCertificateAlias - TIMA version does not include CCM"

    .line 3624
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3626
    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 3629
    :cond_2
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->get_default_cert_alias()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mDefaultCertAlias:Ljava/lang/String;

    .line 3631
    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mDefaultCertAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyChainMarkedAliases(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 7
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
    const/4 v6, 0x0

    .line 4877
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_0

    .line 4878
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "in getKeyChainMarkedAliases"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4880
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 4882
    if-nez p1, :cond_2

    .line 4883
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_1

    .line 4884
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "getKeyChainMarkedAliases - Invalid Arguments"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4885
    :cond_1
    return-object v6

    .line 4888
    :cond_2
    iget-boolean v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v4, :cond_4

    .line 4889
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_3

    .line 4890
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 4891
    const-string/jumbo v5, "getKeyChainMarkedAliases - TIMA version does not include CCM"

    .line 4890
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4892
    :cond_3
    return-object v6

    .line 4895
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v3

    .line 4896
    .local v3, "userId":I
    const/4 v0, 0x0

    .line 4899
    .local v0, "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4900
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v4, "uid"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4901
    const-string/jumbo v4, "pkgName"

    .line 4902
    const-string/jumbo v5, "keystorekeychain"

    .line 4901
    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4903
    const-string/jumbo v4, "csr"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4904
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 4905
    const-string/jumbo v5, "CCMCertTable"

    const-string/jumbo v6, "alias"

    .line 4904
    invoke-virtual {v4, v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v0

    .line 4907
    .local v0, "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 4908
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "getKeyChainMarkedAliases - Alias list empty or null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4914
    .end local v0    # "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    :cond_5
    :goto_0
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getKeyChainMarkedAliases - Alias list :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4915
    return-object v0

    .line 4910
    :catch_0
    move-exception v2

    .line 4911
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_5

    .line 4912
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getKeyChainMarkedAliases - Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSlotIdForCaller(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J
    .locals 24
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    .line 2781
    sget-boolean v19, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v19, :cond_0

    .line 2782
    sget-object v19, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v20, "in getSlotIdForCaller"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2784
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2786
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    move/from16 v19, v0

    if-gtz v19, :cond_2

    .line 2788
    sget-boolean v19, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v19, :cond_1

    .line 2789
    sget-object v19, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v20, "getSlotIdForCaller - CCM profile is not set"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2790
    :cond_1
    const-wide/16 v20, -0x1

    return-wide v20

    .line 2793
    :cond_2
    if-nez p1, :cond_4

    .line 2794
    sget-boolean v19, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v19, :cond_3

    .line 2795
    sget-object v19, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v20, "getSlotIdForCaller - null cxtInfo"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2796
    :cond_3
    const-wide/16 v20, -0x1

    return-wide v20

    .line 2799
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    if-nez v19, :cond_5

    .line 2800
    sget-object v19, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v20, "getSlotIdForCaller - Invalid Context "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2801
    const-wide/16 v20, -0x1

    return-wide v20

    .line 2804
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2806
    const-wide/16 v16, -0x1

    .line 2812
    .local v16, "slotId":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v19

    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    .line 2814
    .local v4, "callingUid":I
    sget-boolean v19, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v19, :cond_6

    .line 2815
    sget-object v19, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "getSlotIdForCaller callingUid - "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2817
    :cond_6
    const/16 v19, 0x3e8

    move/from16 v0, v19

    if-ne v4, v0, :cond_11

    .line 2818
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v18

    .line 2819
    .local v18, "userId":I
    const/4 v12, 0x0

    .line 2821
    .local v12, "rowCount":I
    sget-boolean v19, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v19, :cond_7

    .line 2822
    sget-object v19, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "getSlotIdForCaller UserId - "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 2823
    const-string/jumbo v21, ", alias - "

    .line 2822
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2826
    :cond_7
    const/4 v8, 0x0

    .line 2829
    .local v8, "isDefaultCertificateAlias":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mDefaultCertAlias:Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_8

    .line 2830
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getDefaultCertificateAlias()Ljava/lang/String;

    .line 2833
    :cond_8
    if-eqz p2, :cond_a

    .line 2834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mDefaultCertAlias:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 2835
    const-string/jumbo v19, "Digital Signature"

    .line 2834
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    .line 2833
    if-eqz v19, :cond_a

    .line 2836
    :cond_9
    const/4 v8, 0x1

    .line 2839
    :cond_a
    if-nez v8, :cond_c

    .line 2841
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 2842
    .local v6, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v19, "uid"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2843
    const-string/jumbo v19, "csr"

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2846
    if-eqz p2, :cond_b

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_b

    .line 2847
    const-string/jumbo v19, "alias"

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2850
    :cond_b
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v19, v0

    .line 2851
    const-string/jumbo v20, "CCMCertTable"

    .line 2850
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v19

    add-int/lit8 v12, v19, 0x0

    .line 2860
    .end local v6    # "cvWhere":Landroid/content/ContentValues;
    :cond_c
    :goto_0
    if-nez v8, :cond_d

    if-lez v12, :cond_10

    .line 2862
    :cond_d
    :goto_1
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v13, v0, [Ljava/lang/String;

    const-string/jumbo v19, "uid"

    const/16 v20, 0x0

    aput-object v19, v13, v20

    .line 2863
    .local v13, "sColumns":[Ljava/lang/String;
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v15, v0, [Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    aput-object v19, v15, v20

    .line 2865
    .local v15, "sValues":[Ljava/lang/String;
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v14, v0, [Ljava/lang/String;

    const-string/jumbo v19, "slotId"

    const/16 v20, 0x0

    aput-object v19, v14, v20

    .line 2866
    .local v14, "sReturnColumns":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 2868
    .local v5, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v19, v0

    .line 2869
    const-string/jumbo v20, "ClientCertificateManagerTable"

    .line 2868
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v13, v15, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 2877
    .end local v5    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_e
    :goto_2
    if-eqz v5, :cond_f

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_f

    .line 2878
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/ContentValues;

    const-string/jumbo v20, "slotId"

    invoke-virtual/range {v19 .. v20}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    .line 2879
    .local v9, "lslotId":Ljava/lang/Long;
    if-eqz v9, :cond_f

    .line 2880
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 2885
    .end local v9    # "lslotId":Ljava/lang/Long;
    .end local v13    # "sColumns":[Ljava/lang/String;
    .end local v14    # "sReturnColumns":[Ljava/lang/String;
    .end local v15    # "sValues":[Ljava/lang/String;
    :cond_f
    return-wide v16

    .line 2852
    .restart local v6    # "cvWhere":Landroid/content/ContentValues;
    :catch_0
    move-exception v7

    .line 2853
    .local v7, "e":Ljava/lang/Exception;
    sget-boolean v19, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v19, :cond_c

    .line 2854
    sget-object v19, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 2855
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "getSlotIdForCaller - slotId Exception"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 2856
    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    .line 2855
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 2854
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2860
    .end local v6    # "cvWhere":Landroid/content/ContentValues;
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_10
    if-eqz p2, :cond_d

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v19

    if-nez v19, :cond_f

    goto/16 :goto_1

    .line 2871
    .restart local v5    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v13    # "sColumns":[Ljava/lang/String;
    .restart local v14    # "sReturnColumns":[Ljava/lang/String;
    .restart local v15    # "sValues":[Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 2872
    .restart local v7    # "e":Ljava/lang/Exception;
    sget-boolean v19, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v19, :cond_e

    .line 2873
    sget-object v19, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 2874
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "getSlotIdForCaller - retrieving slot Id Exception"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 2875
    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    .line 2874
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 2873
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2888
    .end local v5    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "isDefaultCertificateAlias":Z
    .end local v12    # "rowCount":I
    .end local v13    # "sColumns":[Ljava/lang/String;
    .end local v14    # "sReturnColumns":[Ljava/lang/String;
    .end local v15    # "sValues":[Ljava/lang/String;
    .end local v18    # "userId":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 2889
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v20

    .line 2888
    invoke-virtual/range {v19 .. v20}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v11

    .line 2890
    .local v11, "pkgNames":[Ljava/lang/String;
    const/16 v19, 0x0

    array-length v0, v11

    move/from16 v20, v0

    :goto_3
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_12

    aget-object v10, v11, v19

    .line 2891
    .local v10, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v10, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getSlotIdForPackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v16

    .line 2892
    const-wide/16 v22, 0x0

    cmp-long v21, v16, v22

    if-ltz v21, :cond_13

    .line 2896
    .end local v10    # "pkgName":Ljava/lang/String;
    :cond_12
    return-wide v16

    .line 2890
    .restart local v10    # "pkgName":Ljava/lang/String;
    :cond_13
    add-int/lit8 v19, v19, 0x1

    goto :goto_3
.end method

.method public getSlotIdForPackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)J
    .locals 22
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;

    .prologue
    .line 2902
    sget-boolean v17, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v17, :cond_0

    .line 2903
    sget-object v17, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v18, "in getSlotIdForPackage"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2905
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2907
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    move/from16 v17, v0

    if-gtz v17, :cond_2

    .line 2909
    sget-boolean v17, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v17, :cond_1

    .line 2910
    sget-object v17, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v18, "getSlotIdForPackage - CCM profile is not set"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2911
    :cond_1
    const-wide/16 v18, -0x1

    return-wide v18

    .line 2914
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    move/from16 v17, v0

    if-nez v17, :cond_4

    .line 2915
    sget-boolean v17, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v17, :cond_3

    .line 2916
    sget-object v17, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 2917
    const-string/jumbo v18, "getSlotIdForPackage - TIMA version does not include CCM"

    .line 2916
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2918
    :cond_3
    const-wide/16 v18, -0x1

    return-wide v18

    .line 2921
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2923
    if-eqz p2, :cond_5

    if-nez p1, :cond_6

    .line 2924
    :cond_5
    sget-object v17, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v18, "getSlotIdForPackage failed - Invalid arguments"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2925
    const-wide/16 v18, -0x1

    return-wide v18

    .line 2928
    :cond_6
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v16

    .line 2930
    .local v16, "userId":I
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForPackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 2931
    sget-boolean v17, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v17, :cond_7

    .line 2932
    sget-object v17, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 2933
    const-string/jumbo v18, " getSlotIdForPackage - token access is not permitted"

    .line 2932
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2934
    :cond_7
    const-wide/16 v18, -0x1

    return-wide v18

    .line 2938
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mDefaultCertAlias:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_9

    .line 2939
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getDefaultCertificateAlias()Ljava/lang/String;

    .line 2943
    :cond_9
    const/4 v8, 0x0

    .line 2944
    .local v8, "isDefaultCertificateAlias":Z
    if-eqz p3, :cond_d

    .line 2945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mDefaultCertAlias:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_a

    .line 2946
    const-string/jumbo v17, "Digital Signature"

    .line 2945
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 2944
    if-eqz v17, :cond_d

    .line 2948
    :cond_a
    invoke-static {}, Lcom/android/server/ServiceKeeper;->isTableActive()Z

    move-result v17

    if-nez v17, :cond_b

    .line 2949
    invoke-static {}, Lcom/android/server/ServiceKeeper;->authorizeLoadProcedure()Z

    .line 2951
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v18

    .line 2952
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v19

    sget-object v20, Lcom/samsung/android/knox/EnterpriseDeviceManager;->KNOX_CCM_POLICY_SERVICE:Ljava/lang/String;

    .line 2953
    const-string/jumbo v21, "getSlotIdForPackage"

    .line 2951
    invoke-static/range {v17 .. v21}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v17

    if-eqz v17, :cond_c

    .line 2954
    new-instance v7, Ljava/lang/SecurityException;

    .line 2955
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Security Exception Occurred while pid["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 2956
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v18

    .line 2955
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 2956
    const-string/jumbo v18, "] with uid["

    .line 2955
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 2957
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v18

    .line 2955
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 2958
    const-string/jumbo v18, "] trying to access methodName ["

    .line 2955
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 2959
    const-string/jumbo v18, "getSlotIdForPackage"

    .line 2955
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 2959
    const-string/jumbo v18, "] in ["

    .line 2955
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 2960
    sget-object v18, Lcom/samsung/android/knox/EnterpriseDeviceManager;->KNOX_CCM_POLICY_SERVICE:Ljava/lang/String;

    .line 2955
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 2960
    const-string/jumbo v18, "] service"

    .line 2955
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 2954
    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 2961
    .local v7, "e":Ljava/lang/SecurityException;
    throw v7

    .line 2966
    .end local v7    # "e":Ljava/lang/SecurityException;
    :cond_c
    const/4 v8, 0x1

    .line 2969
    :cond_d
    const/4 v10, 0x0

    .line 2970
    .local v10, "rowCount":I
    const-wide/16 v14, -0x1

    .line 2972
    .local v14, "slotId":J
    sget-boolean v17, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v17, :cond_e

    .line 2973
    sget-object v17, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "UserId - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " packageName - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 2974
    const-string/jumbo v19, " alias - "

    .line 2973
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2976
    :cond_e
    if-nez v8, :cond_13

    .line 2978
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2979
    .local v5, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v17, "uid"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2980
    const-string/jumbo v17, "pkgName"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2981
    const-string/jumbo v17, "csr"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2984
    if-eqz p3, :cond_f

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_f

    .line 2985
    const-string/jumbo v17, "alias"

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2988
    :cond_f
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v17, v0

    const-string/jumbo v18, "CCMCertTable"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    add-int/lit8 v10, v17, 0x0

    .line 2998
    :cond_10
    :goto_0
    if-nez v10, :cond_13

    .line 2999
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 3000
    .local v4, "cvW":Landroid/content/ContentValues;
    const-string/jumbo v17, "uid"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3001
    const-string/jumbo v17, "allowAllPkgs"

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3002
    const-string/jumbo v17, "csr"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3005
    if-eqz p3, :cond_11

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_11

    .line 3006
    const-string/jumbo v17, "alias"

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3009
    :cond_11
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v17, v0

    .line 3010
    const-string/jumbo v18, "CCMCertTable"

    .line 3009
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v17

    add-int v10, v10, v17

    .line 3017
    :cond_12
    :goto_1
    if-lez v10, :cond_13

    .line 3018
    sget-boolean v17, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v17, :cond_13

    .line 3019
    sget-object v17, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 3020
    const-string/jumbo v18, "in getSlotIdForPackage - all packages are allowed access"

    .line 3019
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3026
    .end local v4    # "cvW":Landroid/content/ContentValues;
    .end local v5    # "cvWhere":Landroid/content/ContentValues;
    :cond_13
    if-nez v8, :cond_14

    if-lez v10, :cond_17

    .line 3028
    :cond_14
    :goto_2
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v11, v0, [Ljava/lang/String;

    const-string/jumbo v17, "uid"

    const/16 v18, 0x0

    aput-object v17, v11, v18

    .line 3029
    .local v11, "sColumns":[Ljava/lang/String;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v13, v0, [Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v17, v13, v18

    .line 3031
    .local v13, "sValues":[Ljava/lang/String;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v12, v0, [Ljava/lang/String;

    const-string/jumbo v17, "slotId"

    const/16 v18, 0x0

    aput-object v17, v12, v18

    .line 3032
    .local v12, "sReturnColumns":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 3034
    .local v3, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v17, v0

    .line 3035
    const-string/jumbo v18, "ClientCertificateManagerTable"

    .line 3034
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v11, v13, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    .line 3043
    .end local v3    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_15
    :goto_3
    if-eqz v3, :cond_16

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_16

    .line 3044
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 3045
    .local v2, "cv":Landroid/content/ContentValues;
    if-eqz v2, :cond_16

    .line 3046
    const-string/jumbo v17, "slotId"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    .line 3047
    .local v9, "lslotId":Ljava/lang/Long;
    if-eqz v9, :cond_16

    .line 3048
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 3053
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v9    # "lslotId":Ljava/lang/Long;
    .end local v11    # "sColumns":[Ljava/lang/String;
    .end local v12    # "sReturnColumns":[Ljava/lang/String;
    .end local v13    # "sValues":[Ljava/lang/String;
    :cond_16
    return-wide v14

    .line 2990
    .restart local v5    # "cvWhere":Landroid/content/ContentValues;
    :catch_0
    move-exception v6

    .line 2991
    .local v6, "e":Ljava/lang/Exception;
    sget-boolean v17, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v17, :cond_10

    .line 2992
    sget-object v17, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 2993
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "getSlotIdForPackage - slotId Exception"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 2994
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    .line 2993
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 2992
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3011
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v4    # "cvW":Landroid/content/ContentValues;
    :catch_1
    move-exception v6

    .line 3012
    .restart local v6    # "e":Ljava/lang/Exception;
    sget-boolean v17, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v17, :cond_12

    .line 3013
    sget-object v17, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "getSlotIdForPackage - allPackages Exception"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 3014
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    .line 3013
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3026
    .end local v4    # "cvW":Landroid/content/ContentValues;
    .end local v5    # "cvWhere":Landroid/content/ContentValues;
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_17
    if-eqz p3, :cond_14

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_16

    goto/16 :goto_2

    .line 3037
    .restart local v3    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v11    # "sColumns":[Ljava/lang/String;
    .restart local v12    # "sReturnColumns":[Ljava/lang/String;
    .restart local v13    # "sValues":[Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 3038
    .restart local v6    # "e":Ljava/lang/Exception;
    sget-boolean v17, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v17, :cond_15

    .line 3039
    sget-object v17, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 3040
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "getSlotIdForPackage - retrieving slot Id Exception"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 3041
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    .line 3040
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 3039
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method public hasGrant(Ljava/lang/String;)Z
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 5153
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 5154
    :cond_0
    return v3

    .line 5156
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v1, :cond_3

    .line 5157
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_2

    .line 5158
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 5159
    const-string/jumbo v2, "hasGrant - TIMA version does not include CCM"

    .line 5158
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5160
    :cond_2
    return v3

    .line 5163
    :cond_3
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 5164
    .local v0, "CInfo":Lcom/samsung/android/knox/ContextInfo;
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 5165
    return v3

    .line 5167
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->hasGrantInternal(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public insertOrUpdateCCMProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CCMProfile;)Z
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profile"    # Lcom/samsung/android/knox/keystore/CCMProfile;

    .prologue
    .line 2042
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_0

    .line 2043
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "in insertOrUpdateCCMProfile"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getSlotIdForCaller(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v0

    .line 2048
    .local v0, "slotId":J
    const-wide v2, 0xffffffffL

    cmp-long v2, v2, v0

    if-nez v2, :cond_2

    .line 2049
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_1

    .line 2050
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "insertOrUpdateCCMProfile - getSlotIdForCaller failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    :cond_1
    const/4 v2, 0x0

    return v2

    .line 2054
    :cond_2
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_3

    .line 2055
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insertOrUpdateCCMProfile - slot Id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    :cond_3
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->insertOrUpdateCCMProfileInternal(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CCMProfile;J)Z

    move-result v2

    return v2
.end method

.method public insertOrUpdateCertificateProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateProfile;)Z
    .locals 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profile"    # Lcom/samsung/android/knox/keystore/CertificateProfile;

    .prologue
    const/4 v5, 0x0

    .line 2260
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 2261
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in insertOrUpdateCertificateProfile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2263
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2265
    if-eqz p1, :cond_1

    if-nez p2, :cond_3

    .line 2267
    :cond_1
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_2

    .line 2268
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "insertOrUpdateCertificateProfile - Invalid Arguments"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    :cond_2
    return v5

    .line 2266
    :cond_3
    iget-object v0, p2, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2272
    iget-boolean v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v0, :cond_5

    .line 2273
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_4

    .line 2274
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "insertOrUpdateCertificateProfile - TIMA version does not include CCM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2275
    :cond_4
    return v5

    .line 2278
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2279
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_6

    .line 2280
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "insertOrUpdateCertificateProfile - CCM is not enabled for caller"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2281
    :cond_6
    return v5

    .line 2285
    :cond_7
    iget-object v0, p2, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 2286
    iget-object v0, p2, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2287
    iget-object v0, p2, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "pkg$iterator":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2288
    .local v6, "pkg":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    .line 2289
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_9

    .line 2290
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "insertOrUpdateCertificateProfile - Invalid packageList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2291
    :cond_9
    return v5

    .line 2296
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v7    # "pkg$iterator":Ljava/util/Iterator;
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v4

    .line 2298
    .local v4, "userId":I
    iget-object v0, p2, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    invoke-direct {p0, p1, v4, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAdminIdForCaller(Lcom/samsung/android/knox/ContextInfo;ILjava/util/List;)I

    move-result v3

    .line 2299
    .local v3, "adminId":I
    const/4 v0, -0x1

    if-ne v0, v3, :cond_c

    .line 2300
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_b

    .line 2301
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in insertOrUpdateCertificateProfile - failed to get admin Id"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2302
    :cond_b
    return v5

    :cond_c
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 2305
    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->insertOrUpdateCertificateProfileInternal(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateProfile;IIZ)Z

    move-result v0

    return v0
.end method

.method public installCertificate(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateProfile;[BLjava/lang/String;)Z
    .locals 20
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profile"    # Lcom/samsung/android/knox/keystore/CertificateProfile;
    .param p3, "certBytes"    # [B
    .param p4, "privateKeyPassword"    # Ljava/lang/String;

    .prologue
    .line 1569
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_0

    .line 1570
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "in installCertificate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1574
    if-eqz p1, :cond_1

    if-nez p2, :cond_3

    .line 1576
    :cond_1
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_2

    .line 1577
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "installCertificate - Invalid Arguments"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    :cond_2
    const/4 v2, 0x0

    return v2

    .line 1574
    :cond_3
    if-eqz p3, :cond_1

    .line 1575
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1581
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v2, :cond_5

    .line 1582
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_4

    .line 1583
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 1584
    const-string/jumbo v3, "installCertificate - TIMA version does not include CCM"

    .line 1583
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    :cond_4
    const/4 v2, 0x0

    return v2

    .line 1588
    :cond_5
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1589
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_6

    .line 1590
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "installCertificate - CCM is not enabled for caller"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    :cond_6
    const/4 v2, 0x0

    return v2

    .line 1595
    :cond_7
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    if-eqz v2, :cond_a

    .line 1596
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1597
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "pkg$iterator":Ljava/util/Iterator;
    :cond_8
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 1598
    .local v17, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    .line 1599
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_9

    .line 1600
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "installCertificate - Invalid packageList"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    :cond_9
    const/4 v2, 0x0

    return v2

    .line 1606
    .end local v17    # "pkg":Ljava/lang/String;
    .end local v18    # "pkg$iterator":Ljava/util/Iterator;
    :cond_a
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    .line 1609
    .local v5, "userId":I
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAdminIdForCaller(Lcom/samsung/android/knox/ContextInfo;ILjava/util/List;)I

    move-result v4

    .line 1611
    .local v4, "adminId":I
    const/4 v2, -0x1

    if-ne v2, v4, :cond_c

    .line 1612
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_b

    .line 1613
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "in installCertificate - failed to get admin Id"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    :cond_b
    const/4 v2, 0x0

    return v2

    .line 1618
    :cond_c
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v2, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->checkAliasExists(IILjava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1619
    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1620
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v2, p0

    .line 1619
    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->verifyCertificateInstaller(IIILjava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_e

    .line 1621
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_d

    .line 1622
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 1623
    const-string/jumbo v3, "installCertificate - verifyCertificateInstaller returned false"

    .line 1622
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    :cond_d
    const/4 v2, 0x0

    return v2

    .line 1647
    :cond_e
    :try_start_0
    new-instance v13, Lcom/android/server/enterprise/ccm/CertificateHandler;

    invoke-direct {v13}, Lcom/android/server/enterprise/ccm/CertificateHandler;-><init>()V

    .line 1648
    .local v13, "certHandler":Lcom/android/server/enterprise/ccm/CertificateHandler;
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v13, v0, v1}, Lcom/android/server/enterprise/ccm/CertificateHandler;->extractPkcs12([BLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1649
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_f

    .line 1650
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "installCertificate - pkcs12 certificate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    :cond_f
    invoke-virtual {v13}, Lcom/android/server/enterprise/ccm/CertificateHandler;->isPrivateKeyExists()Z

    move-result v2

    if-nez v2, :cond_11

    .line 1654
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_10

    .line 1655
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 1656
    const-string/jumbo v3, "installCertificate - certificate does not contain private key"

    .line 1655
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    :cond_10
    const/4 v2, 0x0

    return v2

    .line 1662
    :cond_11
    invoke-virtual {v13}, Lcom/android/server/enterprise/ccm/CertificateHandler;->getKeyAlgorithm()Ljava/lang/String;

    move-result-object v15

    .line 1663
    .local v15, "keyAlg":Ljava/lang/String;
    if-eqz v15, :cond_14

    const-string/jumbo v2, "RSA"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string/jumbo v2, "EC"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1671
    :cond_12
    invoke-virtual {v13}, Lcom/android/server/enterprise/ccm/CertificateHandler;->getPemCertificateChain()[B

    move-result-object v16

    .line 1672
    .local v16, "pemBytes":[B
    if-nez v16, :cond_16

    .line 1673
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_13

    .line 1674
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 1675
    const-string/jumbo v3, "installCertificate - failed to get certificate chain"

    .line 1674
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    :cond_13
    const/4 v2, 0x0

    return v2

    .line 1664
    .end local v16    # "pemBytes":[B
    :cond_14
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_15

    .line 1665
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 1666
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "installCertificate - certificate does not support key algorithm: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1665
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    :cond_15
    const/4 v2, 0x0

    return v2

    .line 1681
    .restart local v16    # "pemBytes":[B
    :cond_16
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    .line 1682
    invoke-virtual {v13}, Lcom/android/server/enterprise/ccm/CertificateHandler;->getFormattedPrivateKey()[B

    move-result-object v8

    .line 1683
    move-object/from16 v0, p2

    iget-boolean v10, v0, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowWiFi:Z

    move-object/from16 v0, p2

    iget-boolean v11, v0, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowRawSigning:Z

    .line 1681
    const/4 v7, 0x3

    .line 1682
    const/4 v9, 0x0

    .line 1680
    invoke-static/range {v4 .. v11}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_install_object(IILjava/lang/String;I[BLjava/lang/String;ZZ)J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v6, v2

    if-eqz v2, :cond_18

    .line 1684
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_17

    .line 1685
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 1686
    const-string/jumbo v3, "installCertificate - native ccm_install_object failed"

    .line 1685
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    :cond_17
    const/4 v2, 0x0

    return v2

    .line 1690
    :cond_18
    move-object/from16 p3, v16

    .line 1691
    const/4 v2, 0x1

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lcom/samsung/android/knox/keystore/CertificateProfile;->isCSRResponse:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1692
    const/16 p4, 0x0

    .line 1707
    .end local v15    # "keyAlg":Ljava/lang/String;
    .end local p4    # "privateKeyPassword":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/samsung/android/knox/keystore/CertificateProfile;->isCSRResponse:Z

    move-object/from16 v0, p2

    iget-boolean v7, v0, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowWiFi:Z

    move-object/from16 v0, p2

    iget-boolean v8, v0, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowRawSigning:Z

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    .line 1706
    invoke-static/range {v4 .. v11}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_install_certificate(IIZZZLjava/lang/String;[BLjava/lang/String;)J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v6, v2

    if-eqz v2, :cond_1c

    .line 1709
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_19

    .line 1710
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 1711
    const-string/jumbo v3, "installCertificate - native ccm_install_certificate failed"

    .line 1710
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    :cond_19
    const/4 v2, 0x0

    return v2

    .line 1695
    .end local v16    # "pemBytes":[B
    .restart local p4    # "privateKeyPassword":Ljava/lang/String;
    :cond_1a
    :try_start_1
    invoke-virtual {v13}, Lcom/android/server/enterprise/ccm/CertificateHandler;->getPemCertificateChain()[B

    move-result-object v16

    .line 1696
    .restart local v16    # "pemBytes":[B
    const-string/jumbo v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v12

    .line 1697
    .local v12, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v12, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v19

    .local v19, "tmpCert":Ljava/security/cert/Certificate;
    goto :goto_0

    .line 1699
    .end local v12    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v13    # "certHandler":Lcom/android/server/enterprise/ccm/CertificateHandler;
    .end local v16    # "pemBytes":[B
    .end local v19    # "tmpCert":Ljava/security/cert/Certificate;
    :catch_0
    move-exception v14

    .line 1700
    .local v14, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_1b

    .line 1701
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "installCertificate - Exception"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    :cond_1b
    const/4 v2, 0x0

    return v2

    .line 1717
    .end local v14    # "e":Ljava/lang/Exception;
    .end local p4    # "privateKeyPassword":Ljava/lang/String;
    .restart local v13    # "certHandler":Lcom/android/server/enterprise/ccm/CertificateHandler;
    .restart local v16    # "pemBytes":[B
    :cond_1c
    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move v9, v4

    move v10, v5

    .line 1716
    invoke-direct/range {v6 .. v11}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->insertOrUpdateCertificateProfileInternal(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateProfile;IIZ)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 1718
    const/4 v2, 0x0

    return v2

    .line 1720
    :cond_1d
    const/4 v2, 0x1

    return v2
.end method

.method public installKeyPair(Lcom/samsung/android/knox/ContextInfo;[B[B[BLjava/lang/String;Ljava/lang/String;)Z
    .locals 16
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "privateKey"    # [B
    .param p3, "certBytes"    # [B
    .param p4, "chain"    # [B
    .param p5, "pKeyAlias"    # Ljava/lang/String;
    .param p6, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1495
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_0

    .line 1496
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "installKeyPair() for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/ContextInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    :cond_0
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/sec/generic/util/CCMKeyCertUtils;->doesCCMSupportKeyAlgorithm([B[B)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1500
    const/4 v2, 0x0

    return v2

    .line 1503
    :cond_1
    move-object/from16 v14, p2

    .line 1504
    .local v14, "pKeyBytes":[B
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "installKeyPair()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    if-eqz p3, :cond_7

    if-eqz p5, :cond_7

    .line 1511
    :try_start_0
    const-string/jumbo v2, "USRPKEY_"

    const-string/jumbo v3, ""

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 1512
    .local v8, "alias":Ljava/lang/String;
    new-instance v4, Lcom/samsung/android/knox/keystore/CertificateProfile;

    invoke-direct {v4}, Lcom/samsung/android/knox/keystore/CertificateProfile;-><init>()V

    .line 1513
    .local v4, "profile":Lcom/samsung/android/knox/keystore/CertificateProfile;
    const/4 v2, 0x0

    iput-boolean v2, v4, Lcom/samsung/android/knox/keystore/CertificateProfile;->isCSRResponse:Z

    .line 1514
    iput-object v8, v4, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    .line 1515
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1516
    .local v11, "keyStoreKeyChainApp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v2, "keystorekeychain"

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1517
    if-eqz p6, :cond_2

    .line 1518
    move-object/from16 v0, p6

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1520
    :cond_2
    iput-object v11, v4, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    .line 1521
    const/4 v2, 0x1

    iput-boolean v2, v4, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowAllPackages:Z

    .line 1523
    if-eqz p2, :cond_5

    .line 1524
    invoke-static/range {p2 .. p2}, Lcom/sec/generic/util/CCMKeyCertUtils;->getPrivateKeyFromBytes([B)Ljava/security/PrivateKey;

    move-result-object v13

    .line 1525
    .local v13, "pKey":Ljava/security/PrivateKey;
    invoke-static/range {p3 .. p3}, Lcom/sec/generic/util/CCMKeyCertUtils;->getCertificateFromBytes([B)Ljava/security/cert/Certificate;

    move-result-object v9

    .line 1526
    .local v9, "cert":Ljava/security/cert/Certificate;
    if-nez v9, :cond_3

    .line 1527
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "cert is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    const/4 v2, 0x0

    return v2

    .line 1530
    :cond_3
    const/4 v15, 0x0

    .line 1531
    .local v15, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p6, :cond_4

    .line 1532
    new-instance v15, Ljava/util/ArrayList;

    .end local v15    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1533
    .local v15, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p6

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1540
    .end local v15    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {v9}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    .line 1539
    invoke-static {v13, v2}, Lcom/sec/generic/util/CCMKeyCertUtils;->getFormattedPrivateKey(Ljava/security/PrivateKey;Ljava/security/PublicKey;)[B

    move-result-object v6

    .line 1538
    const/4 v5, 0x3

    .line 1541
    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 1535
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->installObjectWithProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateProfile;I[BLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1542
    const/4 v2, 0x0

    return v2

    .line 1546
    .end local v9    # "cert":Ljava/security/cert/Certificate;
    .end local v13    # "pKey":Ljava/security/PrivateKey;
    :cond_5
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1547
    .local v12, "outputStream":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1548
    if-eqz p4, :cond_6

    .line 1549
    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1552
    :cond_6
    const/4 v2, 0x1

    iput-boolean v2, v4, Lcom/samsung/android/knox/keystore/CertificateProfile;->isCSRResponse:Z

    .line 1554
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    .line 1553
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->installCertificate(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateProfile;[BLjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_7

    .line 1555
    const/4 v2, 0x0

    return v2

    .line 1557
    .end local v4    # "profile":Lcom/samsung/android/knox/keystore/CertificateProfile;
    .end local v8    # "alias":Ljava/lang/String;
    .end local v11    # "keyStoreKeyChainApp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "outputStream":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v10

    .line 1558
    .local v10, "ex":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 1559
    const/4 v2, 0x0

    return v2

    .line 1562
    .end local v10    # "ex":Ljava/lang/Exception;
    :cond_7
    const/4 v2, 0x1

    return v2
.end method

.method public installObject(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLjava/lang/String;Z)I
    .locals 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "UID"    # I
    .param p3, "tokenName"    # Ljava/lang/String;
    .param p4, "tokenPassword"    # Ljava/lang/String;
    .param p5, "objectAlias"    # Ljava/lang/String;
    .param p6, "objectType"    # I
    .param p7, "objectData"    # [B
    .param p8, "objectPassword"    # Ljava/lang/String;
    .param p9, "isTrustedBootRequired"    # Z

    .prologue
    .line 407
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 408
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in installObject"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 412
    if-eqz p1, :cond_1

    if-nez p5, :cond_3

    .line 413
    :cond_1
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_2

    .line 414
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "installObject - invalid input parameters"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_2
    const/4 v0, -0x1

    return v0

    .line 412
    :cond_3
    if-eqz p7, :cond_1

    .line 418
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->enforcePermission(Lcom/samsung/android/knox/ContextInfo;)V

    .line 420
    iget-boolean v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v0, :cond_5

    .line 421
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_4

    .line 422
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "installObject - TIMA version does not include CCM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_4
    const/4 v0, -0x1

    return v0

    .line 426
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v3

    .line 429
    .local v3, "userId":I
    const/16 v2, 0x3e8

    .line 432
    .local v2, "adminId":I
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 433
    const/4 v0, 0x0

    invoke-direct {p0, p1, v3, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAdminIdForCaller(Lcom/samsung/android/knox/ContextInfo;ILjava/util/List;)I

    move-result v2

    .line 434
    const/4 v0, -0x1

    if-ne v0, v2, :cond_6

    .line 435
    const/16 v2, 0x3e8

    .line 436
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_6

    .line 437
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "installObject - failed to get admin Id"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_6
    const/4 v0, 0x0

    invoke-direct {p0, v2, v3, p5, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->checkAliasExists(IILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 443
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 444
    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p5

    .line 443
    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->verifyCertificateInstaller(IIILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_8

    .line 445
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_7

    .line 446
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 447
    const-string/jumbo v1, "installObject - verifyCertificateInstaller returned false"

    .line 446
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_7
    const/4 v0, -0x1

    return v0

    .line 453
    :cond_8
    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    .line 452
    invoke-static/range {v2 .. v9}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_install_object(IILjava/lang/String;I[BLjava/lang/String;ZZ)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_a

    .line 454
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_9

    .line 455
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "installObject - native ccm_install_object failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_9
    const/4 v0, -0x1

    return v0

    .line 460
    :cond_a
    new-instance v6, Lcom/samsung/android/knox/keystore/CertificateProfile;

    invoke-direct {v6}, Lcom/samsung/android/knox/keystore/CertificateProfile;-><init>()V

    .line 461
    .local v6, "profile":Lcom/samsung/android/knox/keystore/CertificateProfile;
    iput-object p5, v6, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    .line 462
    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowAllPackages:Z

    .line 463
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowWiFi:Z

    .line 464
    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowRawSigning:Z

    .line 467
    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move v7, v2

    move v8, v3

    .line 466
    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->insertOrUpdateCertificateProfileInternal(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateProfile;IIZ)Z

    move-result v0

    if-nez v0, :cond_c

    .line 468
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_b

    .line 469
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "installObject - failed to add DB entry"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_b
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0, v3, p5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_certificate(IILjava/lang/String;)J

    .line 471
    const/4 v0, -0x1

    return v0

    .line 473
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public installObjectWithProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateProfile;I[BLjava/lang/String;)Z
    .locals 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profile"    # Lcom/samsung/android/knox/keystore/CertificateProfile;
    .param p3, "objectType"    # I
    .param p4, "objectData"    # [B
    .param p5, "objectPassword"    # Ljava/lang/String;

    .prologue
    .line 1872
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 1873
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in installObjectWithProfile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1877
    if-eqz p1, :cond_1

    if-nez p2, :cond_3

    .line 1879
    :cond_1
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_2

    .line 1880
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "installObjectWithProfile - Invalid Arguments"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 1877
    :cond_3
    if-eqz p4, :cond_1

    .line 1878
    iget-object v0, p2, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1884
    iget-boolean v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v0, :cond_5

    .line 1885
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_4

    .line 1886
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 1887
    const-string/jumbo v1, "installObjectWithProfile - TIMA version does not include CCM"

    .line 1886
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    :cond_4
    const/4 v0, 0x0

    return v0

    .line 1891
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1892
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_6

    .line 1893
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 1894
    const-string/jumbo v1, "installObjectWithProfile - CCM is not enabled for caller"

    .line 1893
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    :cond_6
    const/4 v0, 0x0

    return v0

    .line 1899
    :cond_7
    iget-object v0, p2, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 1900
    iget-object v0, p2, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1901
    iget-object v0, p2, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "pkg$iterator":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1902
    .local v10, "pkg":Ljava/lang/String;
    invoke-direct {p0, v10}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    .line 1903
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_9

    .line 1904
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 1905
    const-string/jumbo v1, "installObjectWithProfile - Invalid packageList"

    .line 1904
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    :cond_9
    const/4 v0, 0x0

    return v0

    .line 1911
    .end local v10    # "pkg":Ljava/lang/String;
    .end local v11    # "pkg$iterator":Ljava/util/Iterator;
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v3

    .line 1913
    .local v3, "userId":I
    iget-object v0, p2, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    invoke-direct {p0, p1, v3, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAdminIdForCaller(Lcom/samsung/android/knox/ContextInfo;ILjava/util/List;)I

    move-result v2

    .line 1915
    .local v2, "adminId":I
    const/4 v0, -0x1

    if-ne v0, v2, :cond_c

    .line 1916
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_b

    .line 1917
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 1918
    const-string/jumbo v1, "in installObjectWithProfile - failed to get admin Id"

    .line 1917
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    :cond_b
    const/4 v0, 0x0

    return v0

    .line 1923
    :cond_c
    iget-object v0, p2, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->checkAliasExists(IILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1924
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1925
    iget-object v4, p2, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    .line 1924
    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->verifyCertificateInstaller(IIILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1926
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_d

    .line 1927
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 1928
    const-string/jumbo v1, "installObjectWithProfile - verifyCertificateInstaller returned false"

    .line 1927
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    :cond_d
    const/4 v0, 0x0

    return v0

    .line 1934
    :cond_e
    iget-object v4, p2, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    .line 1935
    iget-boolean v8, p2, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowWiFi:Z

    iget-boolean v9, p2, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowRawSigning:Z

    move v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    .line 1933
    invoke-static/range {v2 .. v9}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_install_object(IILjava/lang/String;I[BLjava/lang/String;ZZ)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_10

    .line 1936
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_f

    .line 1937
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 1938
    const-string/jumbo v1, "in installObjectWithProfile - native ccm_install_object failed"

    .line 1937
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    :cond_f
    const/4 v0, 0x0

    return v0

    .line 1944
    :cond_10
    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, v2

    move v8, v3

    .line 1943
    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->insertOrUpdateCertificateProfileInternal(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateProfile;IIZ)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1945
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_11

    .line 1946
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 1947
    const-string/jumbo v1, "in installObjectWithProfile - failed to add DB entry"

    .line 1946
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    :cond_11
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget-object v1, p2, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    invoke-static {v0, v3, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_certificate(IILjava/lang/String;)J

    .line 1949
    const/4 v0, 0x0

    return v0

    .line 1952
    :cond_12
    const/4 v0, 0x1

    return v0
.end method

.method public installObjectWithType(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I[BLjava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "objectAlias"    # Ljava/lang/String;
    .param p3, "objectType"    # I
    .param p4, "objectData"    # [B
    .param p5, "objectPassword"    # Ljava/lang/String;

    .prologue
    .line 1860
    const/4 v0, 0x0

    return v0
.end method

.method public isAccessControlMethodPassword(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    const/4 v3, 0x0

    .line 4566
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_0

    .line 4567
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in isAccessControlMethodPassword"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4569
    :cond_0
    if-nez p1, :cond_2

    .line 4570
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_1

    .line 4571
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isAccessControlMethodPassword - null cxtInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4572
    :cond_1
    return v3

    .line 4576
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCCMProfile(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/keystore/CCMProfile;

    move-result-object v0

    .line 4578
    .local v0, "profile":Lcom/samsung/android/knox/keystore/CCMProfile;
    if-eqz v0, :cond_4

    .line 4579
    sget-object v1, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->PASSWORD:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    iget-object v2, v0, Lcom/samsung/android/knox/keystore/CCMProfile;->accessControlMethod:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    if-ne v1, v2, :cond_4

    .line 4580
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_3

    .line 4581
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isAccessControlMethodPassword return - true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4582
    :cond_3
    const/4 v1, 0x1

    return v1

    .line 4586
    :cond_4
    return v3
.end method

.method public isCCMEmptyForKeyChain(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4866
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getKeyChainMarkedAliases(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0

    .line 4867
    .local v0, "aliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public isCCMPolicyEnabledByAdmin(I)Z
    .locals 7
    .param p1, "adminId"    # I

    .prologue
    const/4 v6, 0x0

    .line 3444
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_0

    .line 3445
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "in isCCMPolicyEnabledByAdmin"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3447
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v3, :cond_2

    .line 3448
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_1

    .line 3449
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 3450
    const-string/jumbo v4, "isCCMPolicyEnabledByAdmin - TIMA version does not include CCM"

    .line 3449
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3451
    :cond_1
    return v6

    .line 3454
    :cond_2
    const/4 v2, 0x0

    .line 3456
    .local v2, "rowCount":I
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_3

    .line 3457
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isCCMPolicyEnabledByAdmin - AdminId - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3459
    :cond_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3460
    .local v0, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v3, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3463
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "ClientCertificateManagerTable"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 3472
    :cond_4
    :goto_0
    if-lez v2, :cond_5

    .line 3473
    const/4 v3, 0x1

    return v3

    .line 3465
    :catch_0
    move-exception v1

    .line 3466
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_4

    .line 3467
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 3468
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isCCMPolicyEnabledByAdmin - Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3469
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 3468
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3467
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3476
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    return v6
.end method

.method public isCCMPolicyEnabledForCaller(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    const/4 v4, 0x0

    .line 2600
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_0

    .line 2601
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "in isCCMPolicyEnabledForCaller"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2603
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2605
    iget v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    if-gtz v5, :cond_2

    .line 2607
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_1

    .line 2608
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 2609
    const-string/jumbo v6, "isCCMPolicyEnabledForCaller - CCM profile is not set"

    .line 2608
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2610
    :cond_1
    return v4

    .line 2613
    :cond_2
    if-nez p1, :cond_4

    .line 2614
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_3

    .line 2615
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "isCCMPolicyEnabledForCaller - null cxtInfo"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2616
    :cond_3
    return v4

    .line 2619
    :cond_4
    iget-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    if-nez v5, :cond_5

    .line 2620
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "isCCMPolicyEnabledForCaller - Invalid Context "

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2621
    return v4

    .line 2624
    :cond_5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 2626
    .local v0, "callingUid":I
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_6

    .line 2627
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isCCMPolicyEnabledForCaller callingUid - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2629
    :cond_6
    const/16 v5, 0x3e8

    if-ne v0, v5, :cond_7

    .line 2630
    const/4 v4, 0x1

    return v4

    .line 2633
    :cond_7
    const/4 v3, 0x0

    .line 2634
    .local v3, "ret":Z
    iget-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 2636
    .local v2, "pkgNames":[Ljava/lang/String;
    array-length v5, v2

    .end local v3    # "ret":Z
    :goto_0
    if-ge v4, v5, :cond_8

    aget-object v1, v2, v4

    .line 2637
    .local v1, "pkgName":Ljava/lang/String;
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForPackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    .line 2638
    .local v3, "ret":Z
    if-eqz v3, :cond_a

    .line 2643
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v3    # "ret":Z
    :cond_8
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_9

    .line 2644
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isCCMPolicyEnabledForCaller returned - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2646
    :cond_9
    return v3

    .line 2636
    .restart local v1    # "pkgName":Ljava/lang/String;
    .restart local v3    # "ret":Z
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public isCCMPolicyEnabledForPackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 13
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2652
    sget-boolean v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v10, :cond_0

    .line 2653
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "in isCCMPolicyEnabledForPackage. packageName is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2655
    :cond_0
    if-nez p1, :cond_1

    .line 2656
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 2657
    const-string/jumbo v11, "isCCMPolicyEnabledForPackage failed - Invalid arguments"

    .line 2656
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2658
    const/4 v10, 0x0

    return v10

    .line 2661
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2663
    const-string/jumbo v10, "SecurityPolicy"

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2664
    sget-boolean v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v10, :cond_2

    .line 2665
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "security policy must not be allowed to access CCM"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2666
    :cond_2
    const/4 v10, 0x0

    return v10

    .line 2671
    :cond_3
    if-eqz p2, :cond_5

    .line 2672
    const-string/jumbo v10, "com.android.exchange"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 2673
    const-string/jumbo v10, "com.android.email"

    .line 2672
    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 2673
    const-string/jumbo v10, "com.samsung.android.email"

    invoke-virtual {p2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    .line 2671
    if-eqz v10, :cond_5

    .line 2674
    :cond_4
    new-instance v7, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardEmailPolicy;

    .line 2675
    iget-object v10, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    .line 2674
    invoke-direct {v7, p1, v10}, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardEmailPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    .line 2676
    .local v7, "emailPolicy":Lcom/sec/enterprise/knox/smartcard/policy/SmartCardEmailPolicy;
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardEmailPolicy;->isAuthenticationEnabled()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2677
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "SmartCardEmailPolicy is enabled"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2678
    const/4 v10, 0x0

    return v10

    .line 2681
    .end local v7    # "emailPolicy":Lcom/sec/enterprise/knox/smartcard/policy/SmartCardEmailPolicy;
    :cond_5
    if-eqz p2, :cond_7

    .line 2682
    const-string/jumbo v10, "com.android.browser"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 2683
    const-string/jumbo v10, "com.sec.android.app.sbrowser"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 2682
    if-nez v10, :cond_6

    .line 2685
    const-string/jumbo v10, "com.chrome.deviceextras.samsung"

    .line 2684
    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 2682
    if-nez v10, :cond_6

    .line 2687
    const-string/jumbo v10, "com.sec.android.providers.downloads"

    .line 2686
    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 2682
    if-nez v10, :cond_6

    .line 2688
    const-string/jumbo v10, "com.android.providers.downloads"

    .line 2687
    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 2681
    if-eqz v10, :cond_7

    .line 2689
    :cond_6
    new-instance v3, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;

    .line 2690
    iget-object v10, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    .line 2689
    invoke-direct {v3, p1, v10}, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    .line 2691
    .local v3, "browserPolicy":Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;
    if-eqz v3, :cond_7

    .line 2692
    invoke-virtual {v3}, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;->isAuthenticationEnabled()Z

    move-result v10

    .line 2691
    if-eqz v10, :cond_7

    .line 2693
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "SmartCardBrowserPolicy is enabled"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2694
    const/4 v10, 0x0

    return v10

    .line 2698
    .end local v3    # "browserPolicy":Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;
    :cond_7
    iget v10, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    if-gtz v10, :cond_9

    .line 2700
    sget-boolean v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v10, :cond_8

    .line 2701
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 2702
    const-string/jumbo v11, "isCCMPolicyEnabledForPackage - CCM profile is not set"

    .line 2701
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2703
    :cond_8
    const/4 v10, 0x0

    return v10

    .line 2705
    :cond_9
    iget-boolean v10, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v10, :cond_b

    .line 2706
    sget-boolean v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v10, :cond_a

    .line 2707
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 2708
    const-string/jumbo v11, "isCCMPolicyEnabledForPackage - TIMA version does not include CCM"

    .line 2707
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2709
    :cond_a
    const/4 v10, 0x0

    return v10

    .line 2712
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    .line 2714
    .local v9, "userId":I
    invoke-direct {p0, p1, v9}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->validateCallerContainer(Lcom/samsung/android/knox/ContextInfo;I)Z

    .line 2716
    const/4 v8, 0x0

    .line 2717
    .local v8, "rowCount":I
    iget-object v10, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v10, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 2721
    .local v2, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adminId$iterator":Ljava/util/Iterator;
    :cond_c
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2722
    .local v0, "adminId":Ljava/lang/Long;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2723
    .local v4, "cvW":Landroid/content/ContentValues;
    const-string/jumbo v10, "uid"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2724
    const-string/jumbo v10, "adminUid"

    invoke-virtual {v4, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2725
    const-string/jumbo v10, "allowAllPkgs"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2728
    :try_start_0
    iget-object v10, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2729
    const-string/jumbo v11, "ClientCertificateManagerTable"

    .line 2728
    invoke-virtual {v10, v11, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    add-int/2addr v8, v10

    .line 2736
    :cond_d
    :goto_1
    if-lez v8, :cond_c

    .line 2737
    sget-boolean v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v10, :cond_c

    .line 2738
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 2739
    const-string/jumbo v11, "isCCMPolicyEnabledForPackage - all packages are allowed access"

    .line 2738
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2730
    :catch_0
    move-exception v6

    .line 2731
    .local v6, "e":Ljava/lang/Exception;
    sget-boolean v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v10, :cond_d

    .line 2732
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 2733
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isCCMPolicyEnabledForPackage - allPackages Exception"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2734
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    .line 2733
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2732
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2743
    .end local v0    # "adminId":Ljava/lang/Long;
    .end local v4    # "cvW":Landroid/content/ContentValues;
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_e
    if-nez v8, :cond_12

    .line 2744
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2745
    if-nez p2, :cond_f

    .line 2746
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 2747
    const-string/jumbo v11, "isCCMPolicyEnabledForPackage failed - Invalid arguments"

    .line 2746
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2748
    const/4 v10, 0x0

    return v10

    .line 2751
    :cond_f
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2752
    .restart local v0    # "adminId":Ljava/lang/Long;
    sget-boolean v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v10, :cond_11

    .line 2753
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "AdminId - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " UserId - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2754
    const-string/jumbo v12, " packageName - "

    .line 2753
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2756
    :cond_11
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2757
    .local v5, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v10, "uid"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2758
    const-string/jumbo v10, "adminUid"

    invoke-virtual {v5, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2759
    const-string/jumbo v10, "pkgName"

    invoke-virtual {v5, v10, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2762
    :try_start_1
    iget-object v10, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2763
    const-string/jumbo v11, "ClientCertificateManagerTable"

    .line 2762
    invoke-virtual {v10, v11, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    add-int/2addr v8, v10

    goto :goto_2

    .line 2764
    :catch_1
    move-exception v6

    .line 2765
    .restart local v6    # "e":Ljava/lang/Exception;
    sget-boolean v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v10, :cond_10

    .line 2766
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 2767
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isCCMPolicyEnabledForPackage - adminId Exception"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2768
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    .line 2767
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2766
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2772
    .end local v0    # "adminId":Ljava/lang/Long;
    .end local v5    # "cvWhere":Landroid/content/ContentValues;
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_12
    if-lez v8, :cond_13

    .line 2773
    const/4 v10, 0x1

    return v10

    .line 2776
    :cond_13
    const/4 v10, 0x0

    return v10
.end method

.method public isKeyChainMarkedAlias(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 4719
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 4720
    :cond_0
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_1

    .line 4721
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isKeyChainMarkedAlias - Invalid Arguments"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4722
    :cond_1
    return v3

    .line 4719
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 4725
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getKeyChainMarkedAliases(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0

    .line 4726
    .local v0, "aliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_3

    .line 4727
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 4729
    :cond_3
    return v3
.end method

.method public keychainMarkedReset(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 13
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    const/4 v12, 0x0

    .line 4798
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_0

    .line 4799
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "in keychainMarkedReset"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4801
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 4803
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    const/16 v8, 0x3e8

    if-eq v7, v8, :cond_2

    .line 4804
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_1

    .line 4805
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "keychainMarkedReset - Cannot clear credentials, not a system app"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4806
    :cond_1
    return v12

    .line 4809
    :cond_2
    if-nez p1, :cond_4

    .line 4810
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_3

    .line 4811
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "keychainMarkedReset - Invalid Arguments"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4812
    :cond_3
    return v12

    .line 4815
    :cond_4
    iget-boolean v7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v7, :cond_6

    .line 4816
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_5

    .line 4817
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 4818
    const-string/jumbo v8, "keychainMarkedReset - TIMA version does not include CCM"

    .line 4817
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4819
    :cond_5
    return v12

    .line 4822
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v6

    .line 4823
    .local v6, "userId":I
    const/4 v3, 0x1

    .line 4824
    .local v3, "ret":Z
    const/4 v1, 0x0

    .line 4828
    .local v1, "aliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getKeyChainMarkedAliases(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v1

    .line 4829
    .local v1, "aliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_9

    .line 4830
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 4833
    .local v0, "aliases":[Ljava/lang/String;
    invoke-static {v6, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_alias_list(I[Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v10, v8

    if-eqz v7, :cond_8

    .line 4834
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_7

    .line 4835
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 4836
    const-string/jumbo v8, "keychainMarkedReset - native ccm_delete_alias_list failed"

    .line 4835
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4837
    :cond_7
    return v12

    .line 4841
    :cond_8
    const/4 v7, 0x3

    new-array v4, v7, [Ljava/lang/String;

    const-string/jumbo v7, "uid"

    const/4 v8, 0x0

    aput-object v7, v4, v8

    .line 4842
    const-string/jumbo v7, "pkgName"

    const/4 v8, 0x1

    aput-object v7, v4, v8

    const-string/jumbo v7, "csr"

    const/4 v8, 0x2

    aput-object v7, v4, v8

    .line 4843
    .local v4, "sColumns":[Ljava/lang/String;
    const/4 v7, 0x3

    new-array v5, v7, [Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v5, v8

    .line 4844
    const-string/jumbo v7, "keystorekeychain"

    const/4 v8, 0x1

    aput-object v7, v5, v8

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v5, v8

    .line 4845
    .local v5, "sValues":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 4846
    const-string/jumbo v8, "CCMCertTable"

    .line 4845
    invoke-virtual {v7, v8, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 4847
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->removeAllGrants()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4855
    .end local v0    # "aliases":[Ljava/lang/String;
    .end local v1    # "aliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "sColumns":[Ljava/lang/String;
    .end local v5    # "sValues":[Ljava/lang/String;
    :cond_9
    :goto_0
    return v3

    .line 4849
    :catch_0
    move-exception v2

    .line 4850
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_a

    .line 4851
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "keychainMarkedReset - Exception"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4852
    :cond_a
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 5253
    return-void
.end method

.method public onAdminAdded(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 3929
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 3930
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAdminAdded - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3928
    :cond_0
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 5
    .param p1, "uid"    # I

    .prologue
    .line 3945
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_0

    .line 3946
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAdminRemoved - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3947
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 3949
    .local v1, "userId":I
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCertificateProfileUsingAdminId(IIZ)Z

    .line 3950
    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCCMProfileUsingAdminId(IIZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3944
    :cond_1
    :goto_0
    return-void

    .line 3951
    :catch_0
    move-exception v0

    .line 3952
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_1

    .line 3953
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAdminRemoved - Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreAdminRemoval(I)V
    .locals 4
    .param p1, "adminId"    # I

    .prologue
    .line 3936
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_0

    .line 3937
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPreAdminRemoval - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3938
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3940
    .local v0, "userId":I
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCSRProfileUsingAdminId(II)Z

    .line 3935
    return-void
.end method

.method public registerForDefaultCertificate(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;Ljava/lang/String;Z)I
    .locals 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "UID"    # I
    .param p3, "registrationPassword"    # Ljava/lang/String;
    .param p4, "oldPassword"    # Ljava/lang/String;
    .param p5, "isTrustedBootRequired"    # Z

    .prologue
    const/4 v5, -0x1

    .line 482
    const/4 v2, -0x1

    .line 483
    .local v2, "ret":I
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_0

    .line 484
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "in registerForDefaultCertificate"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 488
    if-eqz p1, :cond_1

    if-nez p3, :cond_3

    .line 489
    :cond_1
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_2

    .line 490
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 491
    const-string/jumbo v4, "registerForDefaultCertificate - invalid input parameters"

    .line 490
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_2
    return v5

    .line 495
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->enforcePermission(Lcom/samsung/android/knox/ContextInfo;)V

    .line 497
    iget-boolean v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v3, :cond_5

    .line 498
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_4

    .line 499
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 500
    const-string/jumbo v4, "registerForDefaultCertificate - TIMA version does not include CCM"

    .line 499
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_4
    return v5

    .line 504
    :cond_5
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_6

    .line 505
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "in registerForDefaultCertificate - calling UID is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 506
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 505
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_6
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->initParams()V

    .line 510
    iget-object v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mTimaService:Landroid/service/tima/ITimaService;

    if-eqz v3, :cond_8

    .line 512
    :try_start_0
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_7

    .line 513
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 514
    const-string/jumbo v4, "Called TIMA service registerForDefaultCertificate"

    .line 513
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_7
    iget-object v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v3, p2, p3, p4, p5}, Landroid/service/tima/ITimaService;->ccmRegisterForDefaultCertificate(ILjava/lang/String;Ljava/lang/String;Z)I

    move-result v2

    .line 519
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 518
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 520
    .local v0, "currentUserId":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->updateLockStatus(IZZZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    .end local v0    # "currentUserId":I
    :cond_8
    :goto_0
    return v2

    .line 521
    :catch_0
    move-exception v1

    .line 522
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeKeyPair(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1785
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 1786
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in removeKeyPair"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1790
    if-eqz p1, :cond_1

    if-nez p2, :cond_3

    .line 1791
    :cond_1
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_2

    .line 1792
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeKeyPair - Invalid Arguments"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    :cond_2
    return v5

    .line 1790
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1796
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v3

    .line 1797
    .local v3, "userId":I
    const/16 v0, 0x64

    if-ge v3, v0, :cond_6

    .line 1798
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_5

    .line 1807
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v0, :cond_7

    .line 1808
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_4

    .line 1809
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 1810
    const-string/jumbo v1, "removeKeyPair - TIMA version does not include CCM"

    .line 1809
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    :cond_4
    return v5

    .line 1801
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    goto :goto_0

    .line 1804
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    goto :goto_0

    .line 1815
    :cond_7
    const/16 v2, 0x3e8

    .line 1816
    .local v2, "adminId":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1819
    .local v6, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1820
    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAdminIdForCaller(Lcom/samsung/android/knox/ContextInfo;ILjava/util/List;)I

    move-result v2

    .line 1821
    const/4 v0, -0x1

    if-ne v0, v2, :cond_8

    .line 1822
    const/16 v2, 0x3e8

    .line 1823
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_8

    .line 1824
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeKeyPair - failed to get admin Id"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    :cond_8
    invoke-direct {p0, v2, v3, p2, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->checkAliasExists(IILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1829
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_9

    .line 1830
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeKeyPair - alias doesn\'t exist: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    :cond_9
    return v5

    .line 1834
    :cond_a
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isInstalledKeyChainAlias(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1835
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_b

    .line 1836
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeKeyPair - alias installed by MDM: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    :cond_b
    return v5

    .line 1840
    :cond_c
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->verifyCertificateInstaller(IIILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1842
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_d

    .line 1843
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 1844
    const-string/jumbo v1, "removeKeyPair - verifyCertificateInstaller failed"

    .line 1843
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    :cond_d
    return v5

    .line 1848
    :cond_e
    invoke-direct {p0, v2, v3, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCertificateUsingAdminId(IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1849
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_f

    .line 1850
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeKeyPair - failed to delete certificate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    :cond_f
    return v5

    .line 1853
    :cond_10
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->removeGrantsForAlias(Ljava/lang/String;)V

    .line 1854
    const/4 v0, 0x1

    return v0
.end method

.method public removePackageFromExemptList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 3546
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_0

    .line 3547
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "in removePackageFromExemptList"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3549
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 3551
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3553
    if-eqz p1, :cond_1

    if-nez p2, :cond_3

    .line 3554
    :cond_1
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_2

    .line 3555
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "removePackageFromExemptList - Invalid input"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3556
    :cond_2
    return v6

    .line 3559
    :cond_3
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_4

    .line 3560
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removePackageFromExemptList packageName - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3563
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->enforceAdminPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 3565
    iget-boolean v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v2, :cond_6

    .line 3566
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_5

    .line 3567
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 3568
    const-string/jumbo v3, "removePackageFromExemptList - TIMA version does not include CCM"

    .line 3567
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3569
    :cond_5
    return v6

    .line 3572
    :cond_6
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledByAdmin(I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 3573
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_7

    .line 3574
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 3575
    const-string/jumbo v3, "removePackageFromExemptList - CCM is not enabled by admin"

    .line 3574
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3576
    :cond_7
    return v6

    .line 3579
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    .line 3581
    .local v1, "userId":I
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1, v2, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->validatePackageExemption(IILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 3583
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_9

    .line 3584
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removePackageFromExemptList - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3585
    const-string/jumbo v4, " not whitelisted"

    .line 3584
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3586
    :cond_9
    return v6

    .line 3589
    :cond_a
    invoke-direct {p0, v1, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getPackageUid(ILjava/lang/String;)I

    move-result v0

    .line 3591
    .local v0, "uid":I
    const/4 v2, -0x1

    if-eq v2, v0, :cond_c

    .line 3592
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v6, v2, v1, v0, v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_manage_exempt_list(ZIIIZ)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v4, v2

    if-eqz v2, :cond_d

    .line 3593
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_b

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removePackageFromExemptList - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3594
    :cond_b
    return v6

    .line 3597
    :cond_c
    return v6

    .line 3600
    :cond_d
    const/4 v2, 0x1

    return v2
.end method

.method public setCCMProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CCMProfile;)Z
    .locals 32
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profile"    # Lcom/samsung/android/knox/keystore/CCMProfile;

    .prologue
    .line 551
    const/16 v23, 0x1

    .line 552
    .local v23, "ret":Z
    const-wide/16 v24, 0x0

    .line 553
    .local v24, "slotId":J
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_0

    .line 554
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "in setCCMProfile cxtInfo "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 558
    if-eqz p1, :cond_1

    if-nez p2, :cond_3

    .line 559
    :cond_1
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_2

    .line 560
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "setCCMProfile - Invalid Arguments"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_2
    const/4 v6, 0x0

    return v6

    .line 564
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->enforceAdminPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 566
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v6, :cond_5

    .line 567
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_4

    .line 568
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "setCCMProfile - TIMA version does not include CCM"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_4
    const/4 v6, 0x0

    return v6

    .line 572
    :cond_5
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/samsung/android/knox/keystore/CCMProfile;->accessControlMethod:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    .line 573
    .local v12, "accessControlMethod":Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;
    const/16 v17, 0x0

    .line 575
    .local v17, "password":Ljava/lang/String;
    sget-object v6, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->PASSWORD:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    if-ne v6, v12, :cond_7

    .line 576
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/samsung/android/knox/keystore/CCMProfile;->accessControlPassword:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 577
    .local v17, "password":Ljava/lang/String;
    if-nez v17, :cond_7

    .line 578
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_6

    .line 579
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 580
    const-string/jumbo v7, "setCCMProfile - Invalid Password Access Control arguments"

    .line 579
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :cond_6
    const/4 v6, 0x0

    return v6

    .line 585
    .end local v17    # "password":Ljava/lang/String;
    :cond_7
    sget-object v6, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->TRUSTED_PINPAD:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    if-ne v6, v12, :cond_f

    .line 587
    const/16 v29, 0x0

    .line 588
    .local v29, "tuiVersion":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mTimaService:Landroid/service/tima/ITimaService;

    if-eqz v6, :cond_8

    .line 590
    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v6}, Landroid/service/tima/ITimaService;->getTuiVersion()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v29

    .line 596
    .end local v29    # "tuiVersion":Ljava/lang/String;
    :cond_8
    :goto_0
    if-nez v29, :cond_a

    .line 597
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_9

    .line 598
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "setCCMProfile - TUI is not supported"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_9
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "TUI is not supported"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 591
    .restart local v29    # "tuiVersion":Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 592
    .local v13, "e":Landroid/os/RemoteException;
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    invoke-static {v13}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 603
    .end local v13    # "e":Landroid/os/RemoteException;
    .end local v29    # "tuiVersion":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/samsung/android/knox/keystore/CCMProfile;->tuiProperty:Lcom/samsung/android/knox/keystore/TUIProperty;

    if-nez v6, :cond_c

    .line 604
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_b

    .line 605
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 606
    const-string/jumbo v7, "setCCMProfile - Invalid TUI Access Control arguments"

    .line 605
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_b
    const/4 v6, 0x0

    return v6

    .line 610
    :cond_c
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/samsung/android/knox/keystore/CCMProfile;->tuiProperty:Lcom/samsung/android/knox/keystore/TUIProperty;

    iget v6, v6, Lcom/samsung/android/knox/keystore/TUIProperty;->loginRetry:I

    if-ltz v6, :cond_d

    .line 611
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/samsung/android/knox/keystore/CCMProfile;->tuiProperty:Lcom/samsung/android/knox/keystore/TUIProperty;

    iget-object v6, v6, Lcom/samsung/android/knox/keystore/TUIProperty;->pin:[B

    if-nez v6, :cond_f

    .line 612
    :cond_d
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_e

    .line 613
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 614
    const-string/jumbo v7, "setCCMProfile - Invalid TUI Access Control arguments"

    .line 613
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :cond_e
    const/4 v6, 0x0

    return v6

    .line 621
    :cond_f
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/samsung/android/knox/keystore/CCMProfile;->packageList:Ljava/util/List;

    if-eqz v6, :cond_12

    .line 622
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/samsung/android/knox/keystore/CCMProfile;->packageList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_12

    .line 623
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/samsung/android/knox/keystore/CCMProfile;->packageList:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "pkg$iterator":Ljava/util/Iterator;
    :cond_10
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 624
    .local v19, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_10

    .line 625
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_11

    .line 626
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "setCCMProfile - Invalid packageList"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_11
    const/4 v6, 0x0

    return v6

    .line 632
    .end local v19    # "pkg":Ljava/lang/String;
    .end local v20    # "pkg$iterator":Ljava/util/Iterator;
    :cond_12
    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/samsung/android/knox/keystore/CCMProfile;->whiteListAllPackages:Z

    if-nez v6, :cond_15

    .line 637
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/samsung/android/knox/keystore/CCMProfile;->packageList:Ljava/util/List;

    if-nez v6, :cond_14

    .line 638
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_13

    .line 639
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "setCCMProfile - null packageList"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :cond_13
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p2

    iput-object v6, v0, Lcom/samsung/android/knox/keystore/CCMProfile;->packageList:Ljava/util/List;

    .line 644
    :cond_14
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 645
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 644
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v22

    .line 647
    .local v22, "pkgNames":[Ljava/lang/String;
    const/4 v6, 0x0

    move-object/from16 v0, v22

    array-length v7, v0

    :goto_1
    if-ge v6, v7, :cond_15

    aget-object v21, v22, v6

    .line 648
    .local v21, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/samsung/android/knox/keystore/CCMProfile;->packageList:Ljava/util/List;

    move-object/from16 v0, v21

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 647
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 650
    .end local v21    # "pkgName":Ljava/lang/String;
    .end local v22    # "pkgNames":[Ljava/lang/String;
    :catch_1
    move-exception v14

    .line 651
    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 655
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_15
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v30

    .line 657
    .local v30, "userId":I
    move-object/from16 v0, p1

    iget v6, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 658
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/samsung/android/knox/keystore/CCMProfile;->accessControlMethod:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    invoke-virtual {v7}, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->getValue()I

    move-result v7

    .line 657
    move/from16 v0, v30

    move-object/from16 v1, v17

    invoke-static {v6, v0, v7, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_create_slot(IIILjava/lang/String;)J

    move-result-wide v24

    .line 660
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_16

    .line 661
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setCCMProfile - slot Id is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v24

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " , userId is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " , accessControlMethod is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/samsung/android/knox/keystore/CCMProfile;->accessControlMethod:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    invoke-virtual {v8}, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->getValue()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_16
    const-wide v6, 0xffffffffL

    cmp-long v6, v6, v24

    if-nez v6, :cond_18

    .line 664
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_17

    .line 665
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "setCCMProfile - native create_slot failed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :cond_17
    const/4 v6, 0x0

    return v6

    .line 669
    :cond_18
    sget-object v6, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->TRUSTED_PINPAD:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    if-ne v6, v12, :cond_1f

    .line 671
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/samsung/android/knox/keystore/CCMProfile;->tuiProperty:Lcom/samsung/android/knox/keystore/TUIProperty;

    iget-object v6, v6, Lcom/samsung/android/knox/keystore/TUIProperty;->pin:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->verifyCertChain([B)[B

    move-result-object v11

    .line 672
    .local v11, "wrappedPin":[B
    if-nez v11, :cond_1a

    .line 673
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_19

    .line 674
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 675
    const-string/jumbo v7, "setCCMProfile - Invalid TUI Access Control arguments"

    .line 674
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_19
    move-object/from16 v0, p1

    iget v6, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    move/from16 v0, v30

    invoke-static {v6, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_slot(II)J

    .line 678
    move-object/from16 v0, p1

    iget v6, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v6, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->resetDefaultCCMProfile(II)V

    .line 679
    const/4 v6, 0x0

    return v6

    .line 681
    :cond_1a
    const/4 v10, 0x0

    .line 683
    .local v10, "imageId":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/samsung/android/knox/keystore/CCMProfile;->tuiProperty:Lcom/samsung/android/knox/keystore/TUIProperty;

    iget-object v6, v6, Lcom/samsung/android/knox/keystore/TUIProperty;->secretImage:[B

    if-eqz v6, :cond_1d

    .line 685
    :try_start_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mTimaService:Landroid/service/tima/ITimaService;

    .line 686
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/samsung/android/knox/keystore/CCMProfile;->tuiProperty:Lcom/samsung/android/knox/keystore/TUIProperty;

    iget-object v7, v7, Lcom/samsung/android/knox/keystore/TUIProperty;->secretImage:[B

    .line 687
    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 686
    const/4 v9, 0x0

    const/16 v31, 0x0

    .line 685
    move/from16 v0, v31

    invoke-interface {v6, v7, v9, v0, v8}, Landroid/service/tima/ITimaService;->tuiInitSecret([BIILjava/lang/String;)I

    move-result v6

    if-gez v6, :cond_1c

    .line 688
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_1b

    .line 689
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 690
    const-string/jumbo v7, "setCCMProfile - Invalid TUI Access Control arguments"

    .line 689
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_1b
    move-object/from16 v0, p1

    iget v6, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    move/from16 v0, v30

    invoke-static {v6, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_slot(II)J

    .line 693
    move-object/from16 v0, p1

    iget v6, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v6, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->resetDefaultCCMProfile(II)V

    .line 694
    const/4 v6, 0x0

    return v6

    .line 696
    :cond_1c
    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    .line 697
    .local v10, "imageId":Ljava/lang/String;
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "tuiInitSecret success"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 708
    .end local v10    # "imageId":Ljava/lang/String;
    :cond_1d
    :goto_2
    move-wide/from16 v0, v24

    long-to-int v7, v0

    .line 709
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/samsung/android/knox/keystore/CCMProfile;->tuiProperty:Lcom/samsung/android/knox/keystore/TUIProperty;

    iget v8, v6, Lcom/samsung/android/knox/keystore/TUIProperty;->loginExpirationPeriod:I

    .line 710
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/samsung/android/knox/keystore/CCMProfile;->tuiProperty:Lcom/samsung/android/knox/keystore/TUIProperty;

    iget v9, v6, Lcom/samsung/android/knox/keystore/TUIProperty;->loginRetry:I

    move-object/from16 v6, p0

    .line 708
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->setTokenTUIProperty(IIILjava/lang/String;[B)I

    move-result v28

    .line 711
    .local v28, "tuiRet":I
    if-eqz v28, :cond_1f

    .line 712
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_1e

    .line 713
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 714
    const-string/jumbo v7, "setCCMProfile - setTokenTUIProperty() returns an error"

    .line 713
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :cond_1e
    move-object/from16 v0, p1

    iget v6, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    move/from16 v0, v30

    invoke-static {v6, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_slot(II)J

    .line 717
    move-object/from16 v0, p1

    iget v6, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v6, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->resetDefaultCCMProfile(II)V

    .line 718
    const/4 v6, 0x0

    return v6

    .line 699
    .end local v28    # "tuiRet":I
    :catch_2
    move-exception v13

    .line 700
    .restart local v13    # "e":Landroid/os/RemoteException;
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "exception - tuiInitSecret failed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    invoke-static {v13}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 722
    .end local v11    # "wrappedPin":[B
    .end local v13    # "e":Landroid/os/RemoteException;
    :cond_1f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->insertOrUpdateCCMProfileInternal(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CCMProfile;J)Z

    move-result v6

    if-nez v6, :cond_20

    .line 723
    move-object/from16 v0, p1

    iget v6, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    move/from16 v0, v30

    invoke-static {v6, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_slot(II)J

    .line 724
    move-object/from16 v0, p1

    iget v6, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v6, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->resetDefaultCCMProfile(II)V

    .line 725
    const/4 v6, 0x0

    return v6

    .line 728
    :cond_20
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getSlotCount()I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    .line 730
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->initParams()V

    .line 733
    const/16 v16, 0x0

    .line 734
    .local v16, "isPersona":Z
    const/4 v15, 0x1

    .line 735
    .local v15, "isLocked":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v26

    .line 737
    .local v26, "token":J
    :try_start_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v6, :cond_21

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

    move/from16 v0, v30

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 738
    const/16 v16, 0x1

    .line 739
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

    move/from16 v0, v30

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;

    move-result-object v18

    .line 740
    .local v18, "persInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    if-eqz v18, :cond_21

    .line 741
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

    move/from16 v0, v30

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/SemPersonaManager;->getStateManager(I)Lcom/samsung/android/knox/SemPersonaManager$StateManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/knox/SemPersonaState;->ACTIVE:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->inState(Lcom/samsung/android/knox/SemPersonaState;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v6

    .line 740
    if-eqz v6, :cond_21

    .line 742
    const/4 v15, 0x0

    .line 750
    .end local v18    # "persInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    :cond_21
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 753
    :goto_3
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_22

    .line 754
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setCCMProfile - isPersona: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 755
    const-string/jumbo v8, ", isLocked: "

    .line 754
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :cond_22
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v15, v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->updateLockStatus(IZZZ)Z

    .line 761
    move-object/from16 v0, p1

    iget v6, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move/from16 v0, v30

    invoke-static {v7, v6, v0, v8, v9}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_manage_exempt_list(ZIIIZ)J

    .line 763
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1, v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->setCCMAsDefaultCertStore(IZ)Z

    .line 764
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_23

    .line 765
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isCCMDefaultCertStore says: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 766
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMDefaultCertStore(I)Z

    move-result v8

    .line 765
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    :cond_23
    return v23

    .line 745
    :catch_3
    move-exception v14

    .line 746
    .restart local v14    # "e":Ljava/lang/Exception;
    :try_start_4
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_24

    .line 747
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 750
    :cond_24
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    .line 749
    .end local v14    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 750
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 749
    throw v6
.end method

.method public setCSRProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CSRProfile;)Z
    .locals 17
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profile"    # Lcom/samsung/android/knox/keystore/CSRProfile;

    .prologue
    .line 3058
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_0

    .line 3059
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "in setCSRProfile"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3061
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 3063
    if-eqz p2, :cond_1

    if-nez p1, :cond_3

    .line 3066
    :cond_1
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_2

    .line 3067
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "setCSRProfile - Invalid Arguments"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3068
    :cond_2
    const/4 v4, 0x0

    return v4

    .line 3064
    :cond_3
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/samsung/android/knox/keystore/CSRProfile;->templateName:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 3065
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/samsung/android/knox/keystore/CSRProfile;->templateName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 3071
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v4, :cond_5

    .line 3072
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_4

    .line 3073
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "setCSRProfile - TIMA version does not include CCM"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3074
    :cond_4
    const/4 v4, 0x0

    return v4

    .line 3077
    :cond_5
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 3078
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_6

    .line 3079
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "setCSRProfile - CCM is not enabled for caller"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3080
    :cond_6
    const/4 v4, 0x0

    return v4

    .line 3083
    :cond_7
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v3

    .line 3084
    .local v3, "userId":I
    const/4 v6, 0x0

    .line 3086
    .local v6, "subj":[B
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 3087
    .local v16, "str":Ljava/lang/StringBuilder;
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/samsung/android/knox/keystore/CSRProfile;->commonName:Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 3088
    const-string/jumbo v4, "CN="

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/samsung/android/knox/keystore/CSRProfile;->commonName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3090
    :cond_8
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/samsung/android/knox/keystore/CSRProfile;->domainComponent:Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 3091
    const-string/jumbo v4, "DC="

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/samsung/android/knox/keystore/CSRProfile;->domainComponent:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3093
    :cond_9
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/samsung/android/knox/keystore/CSRProfile;->organization:Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 3094
    const-string/jumbo v4, "O="

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/samsung/android/knox/keystore/CSRProfile;->organization:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3096
    :cond_a
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/samsung/android/knox/keystore/CSRProfile;->locality:Ljava/lang/String;

    if-eqz v4, :cond_b

    .line 3097
    const-string/jumbo v4, "L="

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/samsung/android/knox/keystore/CSRProfile;->locality:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3099
    :cond_b
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/samsung/android/knox/keystore/CSRProfile;->state:Ljava/lang/String;

    if-eqz v4, :cond_c

    .line 3100
    const-string/jumbo v4, "ST="

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/samsung/android/knox/keystore/CSRProfile;->state:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3102
    :cond_c
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/samsung/android/knox/keystore/CSRProfile;->country:Ljava/lang/String;

    if-eqz v4, :cond_d

    .line 3103
    const-string/jumbo v4, "C="

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/samsung/android/knox/keystore/CSRProfile;->country:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3105
    :cond_d
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/samsung/android/knox/keystore/CSRProfile;->emailAddress:Ljava/lang/String;

    if-eqz v4, :cond_e

    .line 3106
    const-string/jumbo v4, "emailAddress="

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/samsung/android/knox/keystore/CSRProfile;->emailAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3109
    :cond_e
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    .line 3110
    .local v14, "length":I
    const/4 v4, 0x2

    if-le v14, v4, :cond_f

    .line 3111
    add-int/lit8 v4, v14, -0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v14}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3115
    :try_start_0
    new-instance v15, Lcom/android/org/bouncycastle/jce/X509Principal;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v15, v4}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>(Ljava/lang/String;)V

    .line 3116
    .local v15, "prncpal":Lcom/android/org/bouncycastle/jce/X509Principal;
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/jce/X509Principal;->getEncoded()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 3125
    .end local v6    # "subj":[B
    .end local v15    # "prncpal":Lcom/android/org/bouncycastle/jce/X509Principal;
    :cond_f
    :goto_0
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAdminIdForCaller(Lcom/samsung/android/knox/ContextInfo;ILjava/util/List;)I

    move-result v2

    .line 3126
    .local v2, "adminId":I
    const/4 v4, -0x1

    if-ne v4, v2, :cond_11

    .line 3127
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_10

    .line 3128
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "in setCSRProfile - failed to get admin Id"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3129
    :cond_10
    const/4 v4, 0x0

    return v4

    .line 3118
    .end local v2    # "adminId":I
    .restart local v6    # "subj":[B
    :catch_0
    move-exception v13

    .line 3119
    .local v13, "e":Ljava/lang/Exception;
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_f

    .line 3120
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "in setCSRProfile - Exception "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3133
    .end local v6    # "subj":[B
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v2    # "adminId":I
    :cond_11
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/samsung/android/knox/keystore/CSRProfile;->templateName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget v5, v0, Lcom/samsung/android/knox/keystore/CSRProfile;->keyLength:I

    .line 3134
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/samsung/android/knox/keystore/CSRProfile;->profileType:Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

    invoke-virtual {v7}, Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;->ordinal()I

    move-result v7

    .line 3132
    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_set_csr_profile(IILjava/lang/String;I[BI)J

    move-result-wide v4

    const-wide/16 v10, 0x0

    cmp-long v4, v10, v4

    if-eqz v4, :cond_13

    .line 3135
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_12

    .line 3136
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 3137
    const-string/jumbo v5, "in setCSRProfile - native ccm_set_csr_profile failed"

    .line 3136
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3138
    :cond_12
    const/4 v4, 0x0

    return v4

    .line 3142
    :cond_13
    new-instance v9, Lcom/samsung/android/knox/keystore/CertificateProfile;

    invoke-direct {v9}, Lcom/samsung/android/knox/keystore/CertificateProfile;-><init>()V

    .line 3143
    .local v9, "certProf":Lcom/samsung/android/knox/keystore/CertificateProfile;
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/samsung/android/knox/keystore/CSRProfile;->templateName:Ljava/lang/String;

    iput-object v4, v9, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    .line 3144
    const/4 v4, 0x0

    iput-boolean v4, v9, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowAllPackages:Z

    .line 3145
    const/4 v4, 0x0

    iput-boolean v4, v9, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowWiFi:Z

    .line 3146
    const/4 v4, 0x0

    iput-boolean v4, v9, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowRawSigning:Z

    .line 3150
    const/4 v12, 0x1

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move v10, v2

    move v11, v3

    .line 3149
    invoke-direct/range {v7 .. v12}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->insertOrUpdateCertificateProfileInternal(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateProfile;IIZ)Z

    move-result v4

    if-nez v4, :cond_14

    .line 3151
    const/4 v4, 0x0

    return v4

    .line 3154
    :cond_14
    const/4 v4, 0x1

    return v4
.end method

.method public setDefaultCCMProfile()Z
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 1097
    const-wide v10, 0xffffffffL

    .line 1098
    .local v10, "slotId":J
    const/16 v1, 0x3e8

    .line 1099
    .local v1, "callerUID":I
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_0

    .line 1100
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "in setDefaultCCMProfile"

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    :cond_0
    iget-boolean v9, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v9, :cond_2

    .line 1103
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_1

    .line 1104
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 1105
    const-string/jumbo v12, "setDefaultCCMProfile - TIMA version does not include CCM"

    .line 1104
    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    :cond_1
    return v14

    .line 1109
    :cond_2
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->updateEnterpriseDBForDefaultCCMProfile()Z

    move-result v9

    if-nez v9, :cond_3

    .line 1110
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "update db failed"

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    return v14

    .line 1115
    :cond_3
    new-instance v4, Lcom/samsung/android/knox/keystore/CCMProfile;

    invoke-direct {v4}, Lcom/samsung/android/knox/keystore/CCMProfile;-><init>()V

    .line 1116
    .local v4, "defaultCCMProfile":Lcom/samsung/android/knox/keystore/CCMProfile;
    sget-object v9, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->LOCK_STATE:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    iput-object v9, v4, Lcom/samsung/android/knox/keystore/CCMProfile;->accessControlMethod:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    .line 1117
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v4, Lcom/samsung/android/knox/keystore/CCMProfile;->packageList:Ljava/util/List;

    .line 1118
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->defaultPackageList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_4

    .line 1119
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->defaultPackageList:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1120
    .local v0, "addPackageName":Ljava/lang/String;
    iget-object v9, v4, Lcom/samsung/android/knox/keystore/CCMProfile;->packageList:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1118
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1125
    .end local v0    # "addPackageName":Ljava/lang/String;
    :cond_4
    iget-object v9, v4, Lcom/samsung/android/knox/keystore/CCMProfile;->accessControlMethod:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    invoke-virtual {v9}, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->getValue()I

    move-result v9

    const/4 v12, 0x0

    .line 1124
    invoke-static {v1, v14, v9, v12}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_create_slot(IIILjava/lang/String;)J

    move-result-wide v10

    .line 1127
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_5

    .line 1128
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "setDefaultCCMProfile - slot Id is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1129
    const-string/jumbo v13, ", caller Id is "

    .line 1128
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    :cond_5
    const-wide v12, 0xffffffffL

    cmp-long v9, v12, v10

    if-nez v9, :cond_7

    .line 1132
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_6

    .line 1133
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 1134
    const-string/jumbo v12, "setDefaultCCMProfile - native create_slot failed"

    .line 1133
    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    :cond_6
    return v14

    .line 1140
    :cond_7
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1141
    .local v2, "cv":Landroid/content/ContentValues;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1143
    .local v3, "cvWhere":Landroid/content/ContentValues;
    iget-object v9, v4, Lcom/samsung/android/knox/keystore/CCMProfile;->packageList:Ljava/util/List;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "pkg$iterator":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1144
    .local v7, "pkg":Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    .end local v2    # "cv":Landroid/content/ContentValues;
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1145
    .restart local v2    # "cv":Landroid/content/ContentValues;
    const-string/jumbo v9, "adminUid"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1146
    const-string/jumbo v9, "uid"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1147
    const-string/jumbo v9, "accessType"

    .line 1148
    iget-object v12, v4, Lcom/samsung/android/knox/keystore/CCMProfile;->accessControlMethod:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    invoke-virtual {v12}, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->name()Ljava/lang/String;

    move-result-object v12

    .line 1147
    invoke-virtual {v2, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    const-string/jumbo v9, "loginRetry"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1150
    const-string/jumbo v9, "loginExpiration"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1151
    const-string/jumbo v9, "slotId"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v2, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1152
    const-string/jumbo v9, "pkgName"

    invoke-virtual {v2, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    new-instance v3, Landroid/content/ContentValues;

    .end local v3    # "cvWhere":Landroid/content/ContentValues;
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1155
    .restart local v3    # "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v9, "adminUid"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1156
    const-string/jumbo v9, "uid"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1157
    const-string/jumbo v9, "pkgName"

    invoke-virtual {v3, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    iget-object v9, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1160
    const-string/jumbo v12, "ClientCertificateManagerTable"

    .line 1159
    invoke-virtual {v9, v12, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 1161
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_9

    .line 1162
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 1163
    const-string/jumbo v12, "setDefaultCCMProfile packages - DB operation failed"

    .line 1162
    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    :cond_9
    const/4 v9, 0x0

    invoke-static {v1, v9}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_slot(II)J

    .line 1165
    const/4 v9, 0x0

    invoke-direct {p0, v1, v9}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->resetDefaultCCMProfile(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1166
    return v14

    .line 1170
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "cvWhere":Landroid/content/ContentValues;
    .end local v7    # "pkg":Ljava/lang/String;
    .end local v8    # "pkg$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v5

    .line 1171
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v1, v14}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_slot(II)J

    .line 1172
    invoke-direct {p0, v1, v14}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->resetDefaultCCMProfile(II)V

    .line 1173
    return v14

    .line 1176
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "cv":Landroid/content/ContentValues;
    .restart local v3    # "cvWhere":Landroid/content/ContentValues;
    .restart local v8    # "pkg$iterator":Ljava/util/Iterator;
    :cond_a
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->addDefaultPackageToExemptList()V

    .line 1178
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getSlotCount()I

    move-result v9

    iput v9, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    .line 1180
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->initParams()V

    .line 1182
    invoke-direct {p0, v14, v14, v14, v14}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->updateLockStatus(IZZZ)Z

    .line 1184
    const/4 v9, 0x1

    return v9
.end method

.method public setGrant(ILjava/lang/String;Z)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .prologue
    .line 5111
    iget-boolean v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v1, :cond_1

    .line 5112
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_0

    .line 5113
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 5114
    const-string/jumbo v2, "setGrant - TIMA version does not include CCM"

    .line 5113
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5115
    :cond_0
    return-void

    .line 5118
    :cond_1
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 5119
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 5120
    .local v0, "CInfo":Lcom/samsung/android/knox/ContextInfo;
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5121
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isInstalledKeyChainAlias(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5122
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_2

    .line 5123
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setGrant - uid :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",alias:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5124
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->setGrantInternal(ILjava/lang/String;Z)V

    .line 5110
    .end local v0    # "CInfo":Lcom/samsung/android/knox/ContextInfo;
    :cond_3
    return-void
.end method

.method public setTokenTUIProperty(IIILjava/lang/String;[B)I
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "loginExpirationTime"    # I
    .param p3, "loginRetry"    # I
    .param p4, "secretImageId"    # Ljava/lang/String;
    .param p5, "wrappedPin"    # [B

    .prologue
    .line 3762
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_0

    .line 3763
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setTokenTUIProperty - slotId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3764
    const-string/jumbo v3, "loginExpirationTime="

    .line 3763
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3765
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setTokenTUIProperty - loginRetry="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3767
    :cond_0
    invoke-static {p1, p4, p5, p3, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->CCM_SetTokenTUIProperty(ILjava/lang/String;[BII)I

    move-result v0

    .line 3770
    .local v0, "ret":I
    return v0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 3876
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->handleCCMBuildUpdate()V

    .line 3878
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->checkMPforCCM()V

    .line 3874
    return-void
.end method
