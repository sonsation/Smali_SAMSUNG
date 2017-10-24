.class public Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;
.super Lcom/samsung/android/knox/container/IRCPPolicy$Stub;
.source "KnoxMUMRCPPolicyService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.sec.knox.rcppolicyprovider"

.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final ENFORCED_PERMISSION:Ljava/lang/String; = "com.samsung.permission.READ_KNOX_NOTIFICATION"

.field private static final KNOX_RCP_SYNC_MGMT_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_RCP_SYNC_MGMT"

.field private static final KNOX_RCP_SYNC_MGMT_PERMISSION_NEW:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CONTAINER_RCP"

.field private static final MDM_ENTERPRISE_CONTAINER_PERMISSION:Ljava/lang/String; = "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

.field private static final MDM_ENTERPRISE_CONTAINER_PERMISSION_NEW:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CONTAINER"

.field private static final NOTIFICATION_POLICY_CHANGED:Ljava/lang/String; = "samsung.knox.intent.action.NOTIFICATION_POLICY_CHANGED"

.field private static final RCP_POLICY_CHANGED:Ljava/lang/String; = "samsung.knox.intent.action.RCP_POLICY_CHANGED"

.field private static final TABLE_NAME:Ljava/lang/String; = "RCP_DATA"

.field private static final TAG:Ljava/lang/String; = "KnoxMUMRCPPolicyService"

.field private static final URL:Ljava/lang/String; = "content://com.sec.knox.rcppolicyprovider/RCP_DATA"

.field private static final isEngMode:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private providerList1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private providerList2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 86
    const-string/jumbo v0, "eng"

    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->isEngMode:Z

    .line 90
    const-string/jumbo v0, "content://com.sec.knox.rcppolicyprovider/RCP_DATA"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->CONTENT_URI:Landroid/net/Uri;

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-direct {p0}, Lcom/samsung/android/knox/container/IRCPPolicy$Stub;-><init>()V

    .line 82
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 83
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 84
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->providerList1:Ljava/util/List;

    .line 85
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->providerList2:Ljava/util/List;

    .line 101
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mContext:Landroid/content/Context;

    .line 102
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 100
    return-void
.end method

.method private enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/knox/ContextInfo;"
        }
    .end annotation

    .prologue
    .line 118
    .local p2, "permission":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceSystemUid()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 123
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Not a system service. This API only allowed by SYSTEM_UID"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    return-void
.end method

.method private final getDefaultRCPPolicy(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "userId"    # I
    .param p2, "policyProperty"    # Ljava/lang/String;

    .prologue
    .line 201
    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    .line 202
    .local v1, "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    invoke-virtual {v1, p1}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v0

    .line 203
    .local v0, "isPersona":Z
    const-string/jumbo v2, "knox-import-data"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    const-string/jumbo v2, "true"

    return-object v2

    .line 205
    :cond_0
    const-string/jumbo v2, "knox-export-data"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 206
    if-eqz v0, :cond_1

    .line 207
    const-string/jumbo v2, "false"

    return-object v2

    .line 209
    :cond_1
    const-string/jumbo v2, "true"

    return-object v2

    .line 211
    :cond_2
    const-string/jumbo v2, "knox-sanitize-data"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 212
    if-eqz v0, :cond_3

    .line 213
    const-string/jumbo v2, "false"

    return-object v2

    .line 215
    :cond_3
    const-string/jumbo v2, "true"

    return-object v2

    .line 218
    :cond_4
    const-string/jumbo v2, "knox-sanitize-data-lockscreen"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 219
    if-eqz v0, :cond_5

    .line 220
    const-string/jumbo v2, "false"

    return-object v2

    .line 222
    :cond_5
    const-string/jumbo v2, "true"

    return-object v2

    .line 226
    :cond_6
    const/4 v2, 0x0

    return-object v2
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mContext:Landroid/content/Context;

    .line 108
    const-string/jumbo v1, "enterprise_policy"

    .line 107
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getListFromSyncPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "property"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    new-instance v6, Ljava/util/ArrayList;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v8, "com.sec.enterprise.knox.permission.KNOX_RCP_SYNC_MGMT"

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 264
    const-string/jumbo v8, "com.samsung.android.knox.permission.KNOX_CONTAINER_RCP"

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 263
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1, v6}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 265
    sget-boolean v6, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->isEngMode:Z

    if-eqz v6, :cond_0

    .line 266
    const-string/jumbo v6, "KnoxMUMRCPPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "admin uid from context info: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    if-nez p4, :cond_2

    .line 270
    :cond_1
    const/4 v6, 0x0

    return-object v6

    .line 269
    :cond_2
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 272
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v6, "name"

    const/4 v7, 0x0

    aput-object v6, v0, v7

    .line 274
    .local v0, "columns":[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 275
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v6, "adminUid"

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 276
    const-string/jumbo v6, "propertyName"

    invoke-virtual {v1, v6, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string/jumbo v6, "propertyValue"

    invoke-virtual {v1, v6, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v6, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v6, p2, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    .line 280
    .local v2, "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 281
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v3, "providerStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "values$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 283
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v6, "name"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 285
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_3
    return-object v3

    .line 287
    .end local v3    # "providerStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "values$iterator":Ljava/util/Iterator;
    :cond_4
    const/4 v6, 0x0

    return-object v6
.end method

.method private getPropertyValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "property"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 234
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->enforceSystemUid()V

    .line 236
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    if-nez p4, :cond_1

    .line 238
    :cond_0
    return-object v7

    .line 237
    :cond_1
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    .line 236
    if-nez v6, :cond_0

    .line 237
    if-eqz p2, :cond_0

    .line 240
    iget-object v6, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 241
    .local v0, "adminList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 242
    :cond_2
    return-object v7

    .line 245
    :cond_3
    const/4 v6, 0x1

    new-array v1, v6, [Ljava/lang/String;

    .line 246
    const-string/jumbo v6, "propertyValue"

    aput-object v6, v1, v8

    .line 248
    .local v1, "columns":[Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 249
    .local v2, "cv":Landroid/content/ContentValues;
    const-string/jumbo v6, "name"

    invoke-virtual {v2, v6, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string/jumbo v6, "propertyName"

    invoke-virtual {v2, v6, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "uid$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 252
    .local v4, "uid":Ljava/lang/Long;
    const-string/jumbo v6, "adminUid"

    invoke-virtual {v2, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 253
    iget-object v6, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v6, p1, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    .line 255
    .local v3, "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 256
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    const-string/jumbo v7, "propertyValue"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 259
    .end local v3    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v4    # "uid":Ljava/lang/Long;
    :cond_5
    invoke-direct {p0, p2, p4}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->getDefaultRCPPolicy(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private setRCPSyncPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 22
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "table"    # Ljava/lang/String;
    .param p4, "property"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 128
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v18, "KnoxMUMRCPPolicyService"

    const-string/jumbo v19, "setRCPSyncPolicy"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v18, Ljava/util/ArrayList;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "com.sec.enterprise.knox.permission.KNOX_RCP_SYNC_MGMT"

    const/16 v21, 0x0

    aput-object v20, v19, v21

    .line 130
    const-string/jumbo v20, "com.samsung.android.knox.permission.KNOX_CONTAINER_RCP"

    const/16 v21, 0x1

    aput-object v20, v19, v21

    .line 129
    invoke-static/range {v19 .. v19}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v11

    .line 132
    .local v11, "lCtxInfo":Lcom/samsung/android/knox/ContextInfo;
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_0

    if-nez p4, :cond_1

    .line 134
    :cond_0
    const-string/jumbo v18, "KnoxMUMRCPPolicyService"

    const-string/jumbo v19, "setRCPSyncPolicy: bad arguments"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/16 v18, 0x0

    return v18

    .line 132
    :cond_1
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_0

    .line 133
    if-eqz p5, :cond_0

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    .line 132
    if-nez v18, :cond_0

    .line 137
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    aput-object v19, v18, v20

    const-string/jumbo v19, ""

    const/16 v20, 0x1

    aput-object v19, v18, v20

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 138
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 139
    const-string/jumbo v18, "KnoxMUMRCPPolicyService"

    const-string/jumbo v19, "setRCPSyncPolicy: bad arguments after filtering.."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/16 v18, 0x0

    return v18

    .line 142
    :cond_2
    const/4 v13, 0x0

    .line 143
    .local v13, "result":Z
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 144
    .local v15, "where":Landroid/content/ContentValues;
    const-string/jumbo v18, "adminUid"

    iget v0, v11, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 145
    const-string/jumbo v18, "propertyName"

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v4, "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/TreeSet;

    move-object/from16 v0, p3

    invoke-direct {v14, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 149
    .local v14, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v13    # "result":Z
    .local v10, "item$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 150
    .local v9, "item":Ljava/lang/String;
    const-string/jumbo v18, "name"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v5

    .line 153
    .local v5, "count":I
    if-lez v5, :cond_6

    .line 155
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 156
    .local v7, "cv":Landroid/content/ContentValues;
    const-string/jumbo v18, "propertyValue"

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v7, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v13

    .line 164
    .end local v7    # "cv":Landroid/content/ContentValues;
    .local v13, "result":Z
    :goto_1
    if-nez v13, :cond_7

    .line 165
    const-string/jumbo v18, "KnoxMUMRCPPolicyService"

    const-string/jumbo v19, "Setting RCP data sync policy failed."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .end local v5    # "count":I
    .end local v9    # "item":Ljava/lang/String;
    .end local v13    # "result":Z
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_5

    .line 175
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 176
    .local v8, "i":Landroid/content/Intent;
    const-string/jumbo v18, "samsung.knox.intent.action.RCP_POLICY_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 178
    .local v12, "policyChangedBundle":Landroid/os/Bundle;
    const-string/jumbo v18, "personaId"

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 179
    const-string/jumbo v18, "syncerList"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 180
    const-string/jumbo v18, "policyName"

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string/jumbo v18, "policyValue"

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string/jumbo v18, "policyChangedBundle"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 183
    sget-boolean v18, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->isEngMode:Z

    if-eqz v18, :cond_4

    .line 184
    const-string/jumbo v18, "KnoxMUMRCPPolicyService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Intent data personaId: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const-string/jumbo v18, "KnoxMUMRCPPolicyService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Intent data syncerList: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-string/jumbo v18, "KnoxMUMRCPPolicyService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Intent data policyName: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-string/jumbo v18, "KnoxMUMRCPPolicyService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Intent data policyValue: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 191
    .local v16, "token":J
    new-instance v6, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v18

    move/from16 v0, v18

    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 192
    .local v6, "currentUser":Landroid/os/UserHandle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 193
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 195
    .end local v6    # "currentUser":Landroid/os/UserHandle;
    .end local v8    # "i":Landroid/content/Intent;
    .end local v12    # "policyChangedBundle":Landroid/os/Bundle;
    .end local v16    # "token":J
    :cond_5
    return v13

    .line 160
    .restart local v5    # "count":I
    .restart local v9    # "item":Ljava/lang/String;
    :cond_6
    const-string/jumbo v18, "propertyValue"

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v13

    .restart local v13    # "result":Z
    goto/16 :goto_1

    .line 169
    :cond_7
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    const-string/jumbo v18, "KnoxMUMRCPPolicyService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Array list populated with: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private updateClipboardShareValues()V
    .locals 5

    .prologue
    .line 779
    const-string/jumbo v3, "KnoxMUMRCPPolicyService"

    const-string/jumbo v4, "updateClipboardShareValues()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    .line 781
    const-string/jumbo v3, "adminUid"

    const/4 v4, 0x0

    aput-object v3, v0, v4

    .line 782
    const-string/jumbo v3, "propertyValue"

    const/4 v4, 0x1

    aput-object v3, v0, v4

    .line 784
    .local v0, "columns":[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 785
    .local v1, "cv1":Landroid/content/ContentValues;
    const-string/jumbo v3, "name"

    const-string/jumbo v4, "Clipboard"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    const-string/jumbo v3, "propertyName"

    const-string/jumbo v4, "knox-import-data"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 788
    .local v2, "cv2":Landroid/content/ContentValues;
    const-string/jumbo v3, "name"

    const-string/jumbo v4, "Clipboard"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    const-string/jumbo v3, "propertyName"

    const-string/jumbo v4, "knox-export-data"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 791
    const-string/jumbo v4, "RCP_DATA"

    .line 790
    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->providerList1:Ljava/util/List;

    .line 792
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 793
    const-string/jumbo v4, "RCP_DATA"

    .line 792
    invoke-virtual {v3, v4, v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->providerList2:Ljava/util/List;

    .line 778
    return-void
.end method


# virtual methods
.method public allowMoveAppsToContainer(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 13
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "value"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 550
    new-instance v8, Ljava/util/ArrayList;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    aput-object v12, v11, v10

    .line 551
    const-string/jumbo v12, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    aput-object v12, v11, v9

    .line 550
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1, v8}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 552
    if-eqz p1, :cond_5

    .line 553
    const/4 v4, 0x0

    .line 554
    .local v4, "result":Z
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 555
    .local v5, "where":Landroid/content/ContentValues;
    const-string/jumbo v8, "cid"

    iget v11, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 556
    const-string/jumbo v8, "adminUid"

    iget v11, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 557
    const-string/jumbo v8, "propertyName"

    const-string/jumbo v11, "EnforceMoveAppsToContainer"

    invoke-virtual {v5, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    sget-boolean v8, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->isEngMode:Z

    if-eqz v8, :cond_0

    .line 559
    const-string/jumbo v8, "KnoxMUMRCPPolicyService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setEnforceAuthForContainer: CONTAINER_ID - ADMIN_UID - CONTAINER_PROPERTY_NAME:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 560
    iget v12, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 559
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 560
    const-string/jumbo v12, " "

    .line 559
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 560
    iget v12, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 559
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 560
    const-string/jumbo v12, " EnforceMoveAppsToContainer"

    .line 559
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_0
    iget-object v8, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v11, "CONTAINER_POLICY"

    invoke-virtual {v8, v11, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    .line 563
    .local v1, "count":I
    const-string/jumbo v11, "KnoxMUMRCPPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setEnforceAuthForContainer: already row present ? "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-lez v1, :cond_1

    move v8, v9

    :goto_0
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    if-lez v1, :cond_2

    .line 566
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 567
    .local v2, "cv":Landroid/content/ContentValues;
    const-string/jumbo v8, "propertyValue"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v2, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 568
    iget-object v8, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v11, "CONTAINER_POLICY"

    invoke-virtual {v8, v11, v2, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v4

    .line 575
    .end local v2    # "cv":Landroid/content/ContentValues;
    .local v4, "result":Z
    :goto_1
    if-nez v4, :cond_3

    .line 576
    const-string/jumbo v8, "KnoxMUMRCPPolicyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setEnforceAuthForContainer failed : result = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    return v10

    .local v4, "result":Z
    :cond_1
    move v8, v10

    .line 563
    goto :goto_0

    .line 571
    :cond_2
    const-string/jumbo v8, "propertyValue"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v5, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 572
    iget-object v8, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v11, "CONTAINER_POLICY"

    invoke-virtual {v8, v11, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v4

    .local v4, "result":Z
    goto :goto_1

    .line 580
    :cond_3
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 581
    .local v3, "i":Landroid/content/Intent;
    const-string/jumbo v8, "samsung.knox.intent.action.RCP_POLICY_CHANGED"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 582
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 583
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v8, "personaId"

    iget v10, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v0, v8, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 584
    const-string/jumbo v8, "policyName"

    const-string/jumbo v10, "EnforceMoveAppsToContainer"

    invoke-virtual {v0, v8, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const-string/jumbo v8, "policyValue"

    invoke-virtual {v0, v8, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 586
    const-string/jumbo v8, "MoveAppsToContainerBundle"

    invoke-virtual {v3, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 587
    sget-boolean v8, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->isEngMode:Z

    if-eqz v8, :cond_4

    .line 588
    const-string/jumbo v8, "KnoxMUMRCPPolicyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Intent data personaId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const-string/jumbo v8, "KnoxMUMRCPPolicyService"

    const-string/jumbo v10, "Intent data policyName: EnforceMoveAppsToContainer"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const-string/jumbo v8, "KnoxMUMRCPPolicyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Intent data policyValue: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 594
    .local v6, "token":J
    iget-object v8, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v3, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 595
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 596
    return v9

    .line 600
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "count":I
    .end local v3    # "i":Landroid/content/Intent;
    .end local v4    # "result":Z
    .end local v5    # "where":Landroid/content/ContentValues;
    .end local v6    # "token":J
    :cond_5
    return v10
.end method

.method public allowMoveFilesToContainer(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "value"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 392
    new-instance v4, Ljava/util/ArrayList;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v8, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    aput-object v8, v7, v6

    .line 393
    const-string/jumbo v8, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    aput-object v8, v7, v5

    .line 392
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 394
    if-eqz p1, :cond_4

    .line 395
    const/4 v2, 0x0

    .line 396
    .local v2, "result":Z
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 397
    .local v3, "where":Landroid/content/ContentValues;
    const-string/jumbo v4, "cid"

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 398
    const-string/jumbo v4, "adminUid"

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 399
    const-string/jumbo v4, "propertyName"

    const-string/jumbo v7, "EnforceMoveFilesToContainer"

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    sget-boolean v4, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->isEngMode:Z

    if-eqz v4, :cond_0

    .line 401
    const-string/jumbo v4, "KnoxMUMRCPPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "allowMoveFilesToContainer: CONTAINER_ID - ADMIN_UID - CONTAINER_PROPERTY_NAME:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 402
    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 401
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 402
    const-string/jumbo v8, " "

    .line 401
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 402
    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 401
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 402
    const-string/jumbo v8, " EnforceMoveFilesToContainer"

    .line 401
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "CONTAINER_POLICY"

    invoke-virtual {v4, v7, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .line 405
    .local v0, "count":I
    const-string/jumbo v7, "KnoxMUMRCPPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "allowMoveFilesToContainer: already row present ? "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-lez v0, :cond_1

    move v4, v5

    :goto_0
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    if-lez v0, :cond_2

    .line 408
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 409
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v4, "propertyValue"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 410
    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "CONTAINER_POLICY"

    invoke-virtual {v4, v7, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v2

    .line 417
    .end local v1    # "cv":Landroid/content/ContentValues;
    .local v2, "result":Z
    :goto_1
    if-nez v2, :cond_3

    .line 418
    const-string/jumbo v4, "KnoxMUMRCPPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "allowMoveFilesToContainer failed : result = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    return v6

    .local v2, "result":Z
    :cond_1
    move v4, v6

    .line 405
    goto :goto_0

    .line 413
    :cond_2
    const-string/jumbo v4, "propertyValue"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 414
    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "CONTAINER_POLICY"

    invoke-virtual {v4, v7, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    .local v2, "result":Z
    goto :goto_1

    .line 421
    :cond_3
    return v5

    .line 425
    .end local v0    # "count":I
    .end local v2    # "result":Z
    .end local v3    # "where":Landroid/content/ContentValues;
    :cond_4
    return v6
.end method

.method public allowMoveFilesToOwner(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "value"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 471
    new-instance v4, Ljava/util/ArrayList;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v8, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    aput-object v8, v7, v6

    .line 472
    const-string/jumbo v8, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    aput-object v8, v7, v5

    .line 471
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 473
    if-eqz p1, :cond_4

    .line 474
    const/4 v2, 0x0

    .line 475
    .local v2, "result":Z
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 476
    .local v3, "where":Landroid/content/ContentValues;
    const-string/jumbo v4, "cid"

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 477
    const-string/jumbo v4, "adminUid"

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 478
    const-string/jumbo v4, "propertyName"

    const-string/jumbo v7, "EnforceMoveFilesToOwner"

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    sget-boolean v4, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->isEngMode:Z

    if-eqz v4, :cond_0

    .line 480
    const-string/jumbo v4, "KnoxMUMRCPPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "allowMoveFilesToOwner: CONTAINER_ID - ADMIN_UID - CONTAINER_PROPERTY_NAME:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 481
    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 480
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 481
    const-string/jumbo v8, " "

    .line 480
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 481
    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 480
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 481
    const-string/jumbo v8, " EnforceMoveFilesToOwner"

    .line 480
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "CONTAINER_POLICY"

    invoke-virtual {v4, v7, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .line 484
    .local v0, "count":I
    const-string/jumbo v7, "KnoxMUMRCPPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "allowMoveFilesToOwner: already row present ? "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-lez v0, :cond_1

    move v4, v5

    :goto_0
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    if-lez v0, :cond_2

    .line 487
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 488
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v4, "propertyValue"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 489
    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "CONTAINER_POLICY"

    invoke-virtual {v4, v7, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v2

    .line 496
    .end local v1    # "cv":Landroid/content/ContentValues;
    .local v2, "result":Z
    :goto_1
    if-nez v2, :cond_3

    .line 497
    const-string/jumbo v4, "KnoxMUMRCPPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "allowMoveFilesToOwner failed : result = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    return v6

    .local v2, "result":Z
    :cond_1
    move v4, v6

    .line 484
    goto :goto_0

    .line 492
    :cond_2
    const-string/jumbo v4, "propertyValue"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 493
    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "CONTAINER_POLICY"

    invoke-virtual {v4, v7, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    .local v2, "result":Z
    goto :goto_1

    .line 500
    :cond_3
    return v5

    .line 504
    .end local v0    # "count":I
    .end local v2    # "result":Z
    .end local v3    # "where":Landroid/content/ContentValues;
    :cond_4
    return v6
.end method

.method public allowShareClipboardDataToContainer(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 14
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "value"    # Z

    .prologue
    .line 703
    new-instance v10, Ljava/util/ArrayList;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "com.sec.enterprise.knox.permission.KNOX_RCP_SYNC_MGMT"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    .line 704
    const-string/jumbo v12, "com.samsung.android.knox.permission.KNOX_CONTAINER_RCP"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    .line 703
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1, v10}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 705
    if-eqz p1, :cond_3

    .line 706
    const/4 v5, 0x0

    .line 707
    .local v5, "result":Z
    iget-object v10, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v11, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 708
    .local v0, "adminLUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_3

    .line 709
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->intValue()I

    move-result v3

    .line 710
    .local v3, "logicalAdminUid":I
    const-string/jumbo v10, "KnoxMUMRCPPolicyService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "allowShareClipboardDataToContainer: AdminLUid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 713
    .local v9, "where":Landroid/content/ContentValues;
    const-string/jumbo v10, "adminUid"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 714
    const-string/jumbo v10, "name"

    const-string/jumbo v11, "Clipboard"

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    const-string/jumbo v10, "propertyName"

    const-string/jumbo v11, "knox-import-data"

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    const-string/jumbo v6, "adminUid = ? AND name = ? AND propertyName = ?"

    .line 717
    .local v6, "selection":Ljava/lang/String;
    const/4 v10, 0x3

    new-array v7, v10, [Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v7, v11

    const-string/jumbo v10, "Clipboard"

    const/4 v11, 0x1

    aput-object v10, v7, v11

    const-string/jumbo v10, "knox-import-data"

    const/4 v11, 0x2

    aput-object v10, v7, v11

    .line 718
    .local v7, "selectionArgs":[Ljava/lang/String;
    sget-boolean v10, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->isEngMode:Z

    if-eqz v10, :cond_0

    .line 719
    const-string/jumbo v10, "KnoxMUMRCPPolicyService"

    .line 720
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "allowShareClipboardDataToContainer:RCP_ID  ADMIN_UID-RCP_PROPERTY_NAME:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 722
    iget v12, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 720
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 722
    const-string/jumbo v12, " "

    .line 720
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 722
    iget v12, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 720
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 722
    const-string/jumbo v12, " Clipboard"

    .line 720
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 719
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :cond_0
    iget-object v10, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v11, "RCP_DATA"

    invoke-virtual {v10, v11, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    .line 725
    .local v1, "count":I
    const-string/jumbo v11, "KnoxMUMRCPPolicyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "allowShareClipboardDataToContainer: already row present ? "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-lez v1, :cond_1

    const/4 v10, 0x1

    :goto_0
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    if-lez v1, :cond_2

    .line 728
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 729
    .local v2, "cv":Landroid/content/ContentValues;
    const-string/jumbo v10, "propertyValue"

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    iget-object v10, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v11, v2, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 736
    .end local v2    # "cv":Landroid/content/ContentValues;
    :goto_1
    const/4 v10, 0x1

    return v10

    .line 725
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 733
    :cond_2
    const-string/jumbo v10, "propertyValue"

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    iget-object v10, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    .local v8, "uri":Landroid/net/Uri;
    goto :goto_1

    .line 739
    .end local v0    # "adminLUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v1    # "count":I
    .end local v3    # "logicalAdminUid":I
    .end local v5    # "result":Z
    .end local v6    # "selection":Ljava/lang/String;
    .end local v7    # "selectionArgs":[Ljava/lang/String;
    .end local v8    # "uri":Landroid/net/Uri;
    .end local v9    # "where":Landroid/content/ContentValues;
    :cond_3
    const-string/jumbo v10, "KnoxMUMRCPPolicyService"

    const-string/jumbo v11, "allowShareClipboardDataToContainer failed returning false"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    const/4 v10, 0x0

    return v10
.end method

.method public allowShareClipboardDataToOwner(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 14
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "value"    # Z

    .prologue
    .line 663
    new-instance v10, Ljava/util/ArrayList;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "com.sec.enterprise.knox.permission.KNOX_RCP_SYNC_MGMT"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    .line 664
    const-string/jumbo v12, "com.samsung.android.knox.permission.KNOX_CONTAINER_RCP"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    .line 663
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1, v10}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 665
    if-eqz p1, :cond_3

    .line 666
    const/4 v5, 0x0

    .line 667
    .local v5, "result":Z
    iget-object v10, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v11, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 668
    .local v0, "adminLUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_3

    .line 669
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->intValue()I

    move-result v3

    .line 670
    .local v3, "logicalAdminUid":I
    const-string/jumbo v10, "KnoxMUMRCPPolicyService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "allowShareClipboardDataToOwner: AdminLUid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 673
    .local v9, "where":Landroid/content/ContentValues;
    const-string/jumbo v10, "adminUid"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 674
    const-string/jumbo v10, "name"

    const-string/jumbo v11, "Clipboard"

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    const-string/jumbo v10, "propertyName"

    const-string/jumbo v11, "knox-export-data"

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    const-string/jumbo v6, "adminUid = ? AND name = ? AND propertyName = ?"

    .line 677
    .local v6, "selection":Ljava/lang/String;
    const/4 v10, 0x3

    new-array v7, v10, [Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v7, v11

    const-string/jumbo v10, "Clipboard"

    const/4 v11, 0x1

    aput-object v10, v7, v11

    const-string/jumbo v10, "knox-export-data"

    const/4 v11, 0x2

    aput-object v10, v7, v11

    .line 678
    .local v7, "selectionArgs":[Ljava/lang/String;
    sget-boolean v10, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->isEngMode:Z

    if-eqz v10, :cond_0

    .line 679
    const-string/jumbo v10, "KnoxMUMRCPPolicyService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "allowShareClipboardDataToOwner:RCP_ID  ADMIN_UID - RCP_PROPERTY_NAME:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 680
    iget v12, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 679
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 680
    const-string/jumbo v12, " "

    .line 679
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 680
    iget v12, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 679
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 680
    const-string/jumbo v12, " Clipboard"

    .line 679
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :cond_0
    iget-object v10, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v11, "RCP_DATA"

    invoke-virtual {v10, v11, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    .line 683
    .local v1, "count":I
    const-string/jumbo v11, "KnoxMUMRCPPolicyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "allowShareClipboardDataToOwner: already row present ? "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-lez v1, :cond_1

    const/4 v10, 0x1

    :goto_0
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    if-lez v1, :cond_2

    .line 686
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 687
    .local v2, "cv":Landroid/content/ContentValues;
    const-string/jumbo v10, "propertyValue"

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    iget-object v10, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v11, v2, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 694
    .end local v2    # "cv":Landroid/content/ContentValues;
    :goto_1
    const/4 v10, 0x1

    return v10

    .line 683
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 691
    :cond_2
    const-string/jumbo v10, "propertyValue"

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    iget-object v10, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    .local v8, "uri":Landroid/net/Uri;
    goto :goto_1

    .line 697
    .end local v0    # "adminLUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v1    # "count":I
    .end local v3    # "logicalAdminUid":I
    .end local v5    # "result":Z
    .end local v6    # "selection":Ljava/lang/String;
    .end local v7    # "selectionArgs":[Ljava/lang/String;
    .end local v8    # "uri":Landroid/net/Uri;
    .end local v9    # "where":Landroid/content/ContentValues;
    :cond_3
    const-string/jumbo v10, "KnoxMUMRCPPolicyService"

    const-string/jumbo v11, "allowShareClipboardDataToOwner failed returning false"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    const/4 v10, 0x0

    return v10
.end method

.method public getAllowChangeDataSyncPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "property"    # Ljava/lang/String;

    .prologue
    .line 299
    const-string/jumbo v5, "KnoxMUMRCPPolicyService"

    const-string/jumbo v6, "getAllowChangeDataSyncPolicy"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/4 v4, 0x0

    .line 301
    .local v4, "userId":I
    if-eqz p1, :cond_0

    .line 302
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 307
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 308
    .local v2, "token":J
    const-string/jumbo v5, "RCP_DATA"

    invoke-direct {p0, v5, v4, p2, p3}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->getPropertyValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, "retval":Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 310
    if-nez v1, :cond_1

    .line 311
    const/4 v5, 0x0

    return v5

    .line 304
    .end local v1    # "retval":Ljava/lang/String;
    .end local v2    # "token":J
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 305
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    goto :goto_0

    .line 313
    .end local v0    # "callingUid":I
    .restart local v1    # "retval":Ljava/lang/String;
    .restart local v2    # "token":J
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    return v5
.end method

.method public getDataSyncPolicyByUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "property"    # Ljava/lang/String;

    .prologue
    .line 317
    const-string/jumbo v0, "RCP_DATA"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->getPropertyValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getListFromAllowChangeDataSyncPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Ljava/util/List;
    .locals 2
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "property"    # Ljava/lang/String;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    const-string/jumbo v0, "KnoxMUMRCPPolicyService"

    const-string/jumbo v1, "getListFromAllowChangeDataSyncPolicy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const-string/jumbo v0, "RCP_DATA"

    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->getListFromSyncPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationSyncPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "property"    # Ljava/lang/String;

    .prologue
    .line 334
    const-string/jumbo v5, "KnoxMUMRCPPolicyService"

    const-string/jumbo v6, "getNotificationSyncPolicy"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 336
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 337
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 338
    .local v2, "token":J
    const-string/jumbo v5, "RCP_NOTIFICATION"

    invoke-direct {p0, v5, v4, p2, p3}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->getPropertyValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, "retval":Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 340
    return-object v1
.end method

.method public getNotificationSyncPolicyByUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "property"    # Ljava/lang/String;

    .prologue
    .line 344
    const-string/jumbo v0, "RCP_NOTIFICATION"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->getPropertyValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromNotificationSyncPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "property"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 349
    const-string/jumbo v0, "RCP_NOTIFICATION"

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->getListFromSyncPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isMoveAppsToContainerAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 510
    if-eqz p1, :cond_4

    .line 511
    new-array v0, v10, [Ljava/lang/String;

    .line 512
    const-string/jumbo v5, "propertyValue"

    aput-object v5, v0, v9

    .line 514
    .local v0, "columns":[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 515
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v5, "propertyName"

    const-string/jumbo v6, "EnforceMoveAppsToContainer"

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v2

    .line 517
    .local v2, "ownerUid":I
    const-string/jumbo v5, "adminUid"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 518
    const-string/jumbo v5, "cid"

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 519
    sget-boolean v5, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->isEngMode:Z

    if-eqz v5, :cond_0

    .line 520
    const-string/jumbo v5, "KnoxMUMRCPPolicyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getEnforceAuthForContainer: CONTAINER_ID - ADMIN_UID - CONTAINER_PROPERTY_NAME:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 521
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 520
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 521
    const-string/jumbo v7, " "

    .line 520
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 521
    const-string/jumbo v7, " EnforceMoveAppsToContainer"

    .line 520
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 524
    const-string/jumbo v6, "CONTAINER_POLICY"

    .line 523
    invoke-virtual {v5, v6, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    .line 525
    .local v3, "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 526
    sget-boolean v5, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->isEngMode:Z

    if-eqz v5, :cond_1

    .line 527
    const-string/jumbo v6, "KnoxMUMRCPPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getEnforceAuthForContainer: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    const-string/jumbo v8, "propertyValue"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_1
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    const-string/jumbo v6, "propertyValue"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 531
    .local v4, "ret":Ljava/lang/String;
    if-eqz v4, :cond_2

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 532
    return v10

    .line 534
    :cond_2
    return v9

    .line 538
    .end local v4    # "ret":Ljava/lang/String;
    :cond_3
    const-string/jumbo v5, "KnoxMUMRCPPolicyService"

    const-string/jumbo v6, "getEnforceAuthForContainer failed to get value from DB > returning true"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    return v9

    .line 542
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "ownerUid":I
    .end local v3    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_4
    const-string/jumbo v5, "KnoxMUMRCPPolicyService"

    const-string/jumbo v6, "getEnforceAuthForContainer failed > returning true"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    return v9
.end method

.method public isMoveFilesToContainerAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 354
    if-eqz p1, :cond_3

    .line 355
    new-array v0, v10, [Ljava/lang/String;

    .line 356
    const-string/jumbo v5, "propertyValue"

    aput-object v5, v0, v9

    .line 358
    .local v0, "columns":[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 359
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v5, "cid"

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 360
    const-string/jumbo v5, "propertyName"

    const-string/jumbo v6, "EnforceMoveFilesToContainer"

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v2

    .line 362
    .local v2, "ownerUid":I
    const-string/jumbo v5, "adminUid"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 363
    sget-boolean v5, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->isEngMode:Z

    if-eqz v5, :cond_0

    .line 364
    const-string/jumbo v5, "KnoxMUMRCPPolicyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isMoveFilesToContainerAllowed: CONTAINER_ID - ADMIN_UID - CONTAINER_PROPERTY_NAME:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 365
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 364
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 365
    const-string/jumbo v7, " "

    .line 364
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 365
    const-string/jumbo v7, " EnforceMoveFilesToContainer"

    .line 364
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 368
    const-string/jumbo v6, "CONTAINER_POLICY"

    .line 367
    invoke-virtual {v5, v6, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    .line 369
    .local v3, "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 370
    const-string/jumbo v6, "KnoxMUMRCPPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isMoveFilesToContainerAllowed: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    const-string/jumbo v8, "propertyValue"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    const-string/jumbo v6, "propertyValue"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 373
    .local v4, "ret":Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 374
    return v10

    .line 376
    :cond_1
    return v9

    .line 380
    .end local v4    # "ret":Ljava/lang/String;
    :cond_2
    const-string/jumbo v5, "KnoxMUMRCPPolicyService"

    const-string/jumbo v6, "isMoveFilesToContainerAllowed failed to get value from DB > returning true"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    return v10

    .line 384
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "ownerUid":I
    .end local v3    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_3
    const-string/jumbo v5, "KnoxMUMRCPPolicyService"

    const-string/jumbo v6, "isMoveFilesToContainerAllowed failed > returning true"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    return v10
.end method

.method public isMoveFilesToOwnerAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 431
    if-eqz p1, :cond_4

    .line 432
    new-array v0, v10, [Ljava/lang/String;

    .line 433
    const-string/jumbo v5, "propertyValue"

    aput-object v5, v0, v9

    .line 435
    .local v0, "columns":[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 436
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v5, "cid"

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 437
    const-string/jumbo v5, "propertyName"

    const-string/jumbo v6, "EnforceMoveFilesToOwner"

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v2

    .line 439
    .local v2, "ownerUid":I
    const-string/jumbo v5, "adminUid"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 440
    sget-boolean v5, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->isEngMode:Z

    if-eqz v5, :cond_0

    .line 441
    const-string/jumbo v5, "KnoxMUMRCPPolicyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isMoveFilesToOwnerAllowed: CONTAINER_ID - ADMIN_UID - CONTAINER_PROPERTY_NAME:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 442
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 441
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 442
    const-string/jumbo v7, " "

    .line 441
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 442
    const-string/jumbo v7, " EnforceMoveFilesToOwner"

    .line 441
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 445
    const-string/jumbo v6, "CONTAINER_POLICY"

    .line 444
    invoke-virtual {v5, v6, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    .line 446
    .local v3, "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 447
    sget-boolean v5, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->isEngMode:Z

    if-eqz v5, :cond_1

    .line 448
    const-string/jumbo v6, "KnoxMUMRCPPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isMoveFilesToOwnerAllowed: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    const-string/jumbo v8, "propertyValue"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_1
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    const-string/jumbo v6, "propertyValue"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 452
    .local v4, "ret":Ljava/lang/String;
    if-eqz v4, :cond_2

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 453
    return v10

    .line 455
    :cond_2
    return v9

    .line 459
    .end local v4    # "ret":Ljava/lang/String;
    :cond_3
    const-string/jumbo v5, "KnoxMUMRCPPolicyService"

    const-string/jumbo v6, "isMoveFilesToOwnerAllowed failed to get value from DB > returning true"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    return v9

    .line 463
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "ownerUid":I
    .end local v3    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_4
    const-string/jumbo v5, "KnoxMUMRCPPolicyService"

    const-string/jumbo v6, "isMoveFilesToOwnerAllowed failed > returning true"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    return v9
.end method

.method public isShareClipboardDataToContainerAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 745
    if-eqz p1, :cond_4

    .line 746
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->updateClipboardShareValues()V

    .line 747
    iget-object v6, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->providerList1:Ljava/util/List;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->providerList1:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 748
    iget-object v6, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 749
    .local v0, "adminLUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 750
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->intValue()I

    move-result v3

    .line 751
    .local v3, "logicalAdminUid":I
    const-string/jumbo v6, "KnoxMUMRCPPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isShareClipboardDataToContainerAllowed: AdminLUid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    const/4 v5, 0x0

    .line 754
    .local v5, "result":Ljava/lang/String;
    const/4 v4, 0x0

    .line 755
    .local v4, "mInteger":Ljava/lang/Integer;
    iget-object v6, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->providerList1:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v4    # "mInteger":Ljava/lang/Integer;
    .local v2, "cv$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 756
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v6, "adminUid"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 758
    .local v4, "mInteger":Ljava/lang/Integer;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v3, :cond_0

    .line 759
    const-string/jumbo v6, "propertyValue"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 763
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v4    # "mInteger":Ljava/lang/Integer;
    .end local v5    # "result":Ljava/lang/String;
    :cond_1
    sget-boolean v6, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->isEngMode:Z

    if-eqz v6, :cond_2

    .line 764
    const-string/jumbo v6, "KnoxMUMRCPPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isShareClipboardDataToContainerAllowed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_2
    if-nez v5, :cond_3

    .line 768
    return v9

    .line 770
    :cond_3
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    return v6

    .line 774
    .end local v0    # "adminLUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v2    # "cv$iterator":Ljava/util/Iterator;
    .end local v3    # "logicalAdminUid":I
    :cond_4
    const-string/jumbo v6, "KnoxMUMRCPPolicyService"

    const-string/jumbo v7, "isShareClipboardDataToContainerAllowed failed returning true"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    return v9
.end method

.method public isShareClipboardDataToOwnerAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    const/4 v9, 0x0

    .line 628
    if-eqz p1, :cond_4

    .line 629
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->updateClipboardShareValues()V

    .line 630
    iget-object v6, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->providerList2:Ljava/util/List;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->providerList2:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 631
    iget-object v6, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 632
    .local v0, "adminLUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 633
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->intValue()I

    move-result v3

    .line 634
    .local v3, "logicalAdminUid":I
    const-string/jumbo v6, "KnoxMUMRCPPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isShareClipboardDataToOwnerAllowed: AdminLUid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const/4 v5, 0x0

    .line 637
    .local v5, "result":Ljava/lang/String;
    const/4 v4, 0x0

    .line 638
    .local v4, "mInteger":Ljava/lang/Integer;
    iget-object v6, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->providerList2:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v4    # "mInteger":Ljava/lang/Integer;
    .local v2, "cv$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 639
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v6, "adminUid"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 641
    .local v4, "mInteger":Ljava/lang/Integer;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v3, :cond_0

    .line 642
    const-string/jumbo v6, "propertyValue"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 646
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v4    # "mInteger":Ljava/lang/Integer;
    .end local v5    # "result":Ljava/lang/String;
    :cond_1
    sget-boolean v6, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->isEngMode:Z

    if-eqz v6, :cond_2

    .line 647
    const-string/jumbo v6, "KnoxMUMRCPPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isShareClipboardDataToOwnerAllowed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_2
    if-nez v5, :cond_3

    .line 651
    return v9

    .line 653
    :cond_3
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    return v6

    .line 657
    .end local v0    # "adminLUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v2    # "cv$iterator":Ljava/util/Iterator;
    .end local v3    # "logicalAdminUid":I
    :cond_4
    const-string/jumbo v6, "KnoxMUMRCPPolicyService"

    const-string/jumbo v7, "isShareClipboardDataToOwnerAllowed failed returning false"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    return v9
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 797
    invoke-static {p1, p2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 796
    return-void
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 605
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 610
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 620
    return-void
.end method

.method public sendRCPPolicyChangedBroadcast(I)V
    .locals 5
    .param p1, "personaID"    # I

    .prologue
    .line 816
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 817
    .local v2, "syncerListSanitize":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v3, "Notifications"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 818
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "samsung.knox.intent.action.RCP_POLICY_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 819
    .local v0, "i":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 820
    .local v1, "policyChangedBundle":Landroid/os/Bundle;
    const-string/jumbo v3, "personaId"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 821
    const-string/jumbo v3, "syncerList"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 822
    const-string/jumbo v3, "policyName"

    const-string/jumbo v4, "knox-sanitize-data"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    const-string/jumbo v3, "policyChangedBundle"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 825
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 815
    return-void
.end method

.method public sendRCPPolicyChangedBroadcastToGearManager(Ljava/lang/String;I)V
    .locals 3
    .param p1, "policy"    # Ljava/lang/String;
    .param p2, "personaID"    # I

    .prologue
    .line 805
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "samsung.knox.intent.action.NOTIFICATION_POLICY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 806
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "personaId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 807
    const-string/jumbo v1, "policy"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 808
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.samsung.permission.READ_KNOX_NOTIFICATION"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 804
    return-void
.end method

.method public setAllowChangeDataSyncPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p3, "property"    # Ljava/lang/String;
    .param p4, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .line 293
    .local p2, "providerNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "KnoxMUMRCPPolicyService"

    const-string/jumbo v1, "setAllowChangeDataSyncPolicy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const-string/jumbo v2, "RCP_DATA"

    invoke-static {p4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->setRCPSyncPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNotificationSyncPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p3, "property"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 328
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "KnoxMUMRCPPolicyService"

    const-string/jumbo v1, "setNotificationSyncPolicy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const-string/jumbo v2, "RCP_NOTIFICATION"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->setRCPSyncPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 615
    return-void
.end method
