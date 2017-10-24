.class public Lcom/android/server/enterprise/browser/BrowserPolicy;
.super Lcom/samsung/android/knox/browser/IBrowserPolicy$Stub;
.source "BrowserPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;,
        Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    }
.end annotation


# static fields
.field private static final BROWSER_POLICY_SERVICE:Ljava/lang/String; = "FirewallPolicy"

.field static final NUM_OF_CONTAINER:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BrowserPolicy"


# instance fields
.field private mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mUserCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/enterprise/browser/BrowserPolicy;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/samsung/android/knox/browser/IBrowserPolicy$Stub;-><init>()V

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mUserCache:Ljava/util/HashMap;

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 205
    iput-object p1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    .line 206
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 208
    invoke-virtual {p0}, Lcom/android/server/enterprise/browser/BrowserPolicy;->loadProxySettings()V

    .line 204
    return-void
.end method

.method private enforceBrowserPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    .line 254
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.sec.MDM_BROWSER_SETTINGS"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 255
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_BROWSER_SETTINGS"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 254
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 253
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 256
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v0}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->enforceContainerPermission(I)I

    .line 257
    return-object p1
.end method

.method private enforceBrowserPermissionByContext(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    .line 276
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.sec.MDM_BROWSER_SETTINGS"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 277
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_BROWSER_SETTINGS"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 276
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 275
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 278
    return-object p1
.end method

.method private enforceBrowserProxyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    .line 283
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "com.sec.enterprise.mdm.permission.BROWSER_PROXY"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 284
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_BROWSER_PROXY"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 283
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 282
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 285
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v0}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->enforceContainerPermission(I)I

    .line 286
    return-object p1
.end method

.method private enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    .line 262
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.sec.MDM_FIREWALL"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 263
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_FIREWALL"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 262
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 261
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 264
    return-object p1
.end method

.method private enforceFirewallPermissionByContext(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    .line 269
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.sec.MDM_FIREWALL"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 270
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_FIREWALL"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 269
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 268
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 271
    return-object p1
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    .line 242
    const-string/jumbo v1, "enterprise_policy_new"

    .line 241
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getURLFilterEnabled(Lcom/samsung/android/knox/ContextInfo;ZZ)Z
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "allAdmins"    # Z
    .param p3, "isActiveAdmin"    # Z

    .prologue
    .line 740
    iget-object v3, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 741
    const-string/jumbo v3, "BrowserPolicy"

    const-string/jumbo v4, " getURLFilterEnabled calls from Profile return default value"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    const/4 v3, 0x0

    return v3

    .line 744
    :cond_0
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 745
    .local v1, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    .line 747
    .local v2, "userId":I
    if-eqz p2, :cond_1

    .line 748
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    const/4 v3, -0x1

    invoke-direct {p1, v3, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 751
    .restart local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getWebFilteringCache(I)Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    move-result-object v0

    .line 752
    .local v0, "cache":Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    iget-boolean v3, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlFilterStateUpdated:Z

    if-nez v3, :cond_2

    .line 754
    const-string/jumbo v3, "filtering"

    .line 753
    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getUrlFilterState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlFilterStateCache:Z

    .line 755
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlFilterStateUpdated:Z

    .line 756
    invoke-direct {p0, v0, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->refreshWebFiltering(Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;I)V

    .line 758
    :cond_2
    iget-boolean v3, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlFilterStateCache:Z

    return v3
.end method

.method private getURLFilterList(Lcom/samsung/android/knox/ContextInfo;ZZ)Ljava/util/List;
    .locals 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "allAdmins"    # Z
    .param p3, "isActiveAdmin"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "ZZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 850
    iget-object v3, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 851
    const-string/jumbo v3, "BrowserPolicy"

    const-string/jumbo v4, " getURLFilterList calls from Profile return default value"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    return-object v5

    .line 854
    :cond_0
    const/4 v1, 0x0

    .line 855
    .local v1, "urlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    .line 856
    .local v2, "userId":I
    const-string/jumbo v3, "BrowserPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getURLFilterList => userId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " callerUid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 857
    const-string/jumbo v5, " allAdmins "

    .line 856
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getWebFilteringCache(I)Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    move-result-object v0

    .line 859
    .local v0, "cache":Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    if-eqz p2, :cond_3

    .line 864
    iget-object v4, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    monitor-enter v4

    .line 865
    :try_start_0
    iget-boolean v3, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlBlacklistUpdated:Z

    if-nez v3, :cond_2

    .line 866
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getUrlBlackList(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/util/List;

    move-result-object v1

    .line 867
    .local v1, "urlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 868
    const-string/jumbo v3, "BrowserPolicy"

    const-string/jumbo v5, "getUrlBlackList - synchronized"

    invoke-static {v3, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    iget-object v3, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 870
    iget-object v3, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 871
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlBlacklistUpdated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v4

    .line 880
    :goto_1
    return-object v1

    .line 874
    .local v1, "urlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    iget-object v1, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlBlacklistAllAdmin:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v1, "urlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 864
    .end local v1    # "urlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 878
    .local v1, "urlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getUrlBlackList(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/util/List;

    move-result-object v1

    .local v1, "urlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1
.end method

.method private getURLFilterReport(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 11
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
    .line 1143
    const-string/jumbo v9, "BrowserPolicy"

    const-string/jumbo v10, "getURLFilterReport()"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    const/4 v9, 0x2

    new-array v0, v9, [Ljava/lang/String;

    .line 1145
    .local v0, "columns":[Ljava/lang/String;
    const-string/jumbo v9, "url"

    const/4 v10, 0x0

    aput-object v9, v0, v10

    .line 1146
    const-string/jumbo v9, "time"

    const/4 v10, 0x1

    aput-object v9, v0, v10

    .line 1147
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1148
    .local v5, "reportList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v6

    .line 1150
    .local v6, "userId":I
    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/String;

    .line 1151
    const-string/jumbo v9, "containerID"

    const/4 v10, 0x0

    aput-object v9, v7, v10

    .line 1152
    const-string/jumbo v9, "userID"

    const/4 v10, 0x1

    aput-object v9, v7, v10

    .line 1154
    .local v7, "where":[Ljava/lang/String;
    const/4 v9, 0x2

    new-array v8, v9, [Ljava/lang/String;

    .line 1155
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 1156
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    .line 1158
    .local v8, "whereArgs":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1159
    const-string/jumbo v10, "WebFilterLogTable"

    .line 1158
    invoke-virtual {v9, v10, v7, v8, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1160
    .local v2, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez v2, :cond_0

    .line 1161
    const-string/jumbo v9, "BrowserPolicy"

    const-string/jumbo v10, "getURLFilterReport - cvList is null"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    const/4 v9, 0x0

    return-object v9

    .line 1164
    :cond_0
    const/4 v1, 0x0

    .line 1165
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1167
    .end local v1    # "cv":Landroid/content/ContentValues;
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1168
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 1169
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v9, "time"

    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1170
    .local v4, "report":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1171
    const-string/jumbo v9, ":"

    invoke-virtual {v4, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1172
    const-string/jumbo v9, "url"

    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1173
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1176
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v4    # "report":Ljava/lang/String;
    :cond_2
    return-object v5
.end method

.method private getURLFilterReportEnabled(Lcom/samsung/android/knox/ContextInfo;ZZ)Z
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "allAdmins"    # Z
    .param p3, "isActiveAdmin"    # Z

    .prologue
    .line 1114
    iget-object v2, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1115
    const-string/jumbo v2, "BrowserPolicy"

    const-string/jumbo v3, " getURLFilterReportEnabled calls from Profile return default value"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    const/4 v2, 0x0

    return v2

    .line 1118
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    .line 1120
    .local v1, "userId":I
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getWebFilteringCache(I)Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    move-result-object v0

    .line 1121
    .local v0, "cache":Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    iget-boolean v2, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlFilterReportUpdated:Z

    if-nez v2, :cond_1

    .line 1123
    const-string/jumbo v2, "logging"

    .line 1122
    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getUrlFilterState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlFilterReportState:Z

    .line 1124
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlFilterReportUpdated:Z

    .line 1125
    const-string/jumbo v2, "WebFilteringCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cache.mUrlFilterReportState=> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1126
    iget-boolean v4, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlFilterReportState:Z

    .line 1125
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->refreshWebFiltering(Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;I)V

    .line 1129
    :cond_1
    iget-boolean v2, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlFilterReportState:Z

    return v2
.end method

.method private getUrlBlackList(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/util/List;
    .locals 13
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "allAdmins"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1231
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1232
    .local v7, "uid":I
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1234
    .local v1, "containerId":I
    const/4 v10, 0x1

    new-array v0, v10, [Ljava/lang/String;

    .line 1235
    .local v0, "columns":[Ljava/lang/String;
    const-string/jumbo v10, "url"

    const/4 v11, 0x0

    aput-object v10, v0, v11

    .line 1236
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1237
    .local v8, "urlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v10, "BrowserPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getUrlBlackList - uid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    if-nez p2, :cond_4

    .line 1239
    iget-object v10, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v11, "WebFilterTable"

    invoke-virtual {v10, v11, v7, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1242
    .local v2, "cursor":Landroid/database/Cursor;
    if-nez v2, :cond_0

    .line 1243
    const-string/jumbo v10, "BrowserPolicy"

    const-string/jumbo v11, "getUrlBlackList - Cursor is null"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    const/4 v10, 0x0

    return-object v10

    .line 1247
    :cond_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1250
    :cond_1
    const-string/jumbo v10, "url"

    .line 1249
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1251
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-nez v10, :cond_1

    .line 1257
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1279
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_3
    return-object v8

    .line 1253
    .restart local v2    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v5

    .line 1254
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string/jumbo v10, "BrowserPolicy"

    const-string/jumbo v11, "getUrlBlackList - IllegalArgumentException"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1255
    const/4 v10, 0x0

    .line 1257
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1255
    return-object v10

    .line 1256
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v10

    .line 1257
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1256
    throw v10

    .line 1260
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_4
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    .line 1261
    .local v9, "userId":I
    const-string/jumbo v10, "BrowserPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Getting URLList called by server for user "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1264
    .local v4, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    iget-object v10, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1265
    const-string/jumbo v11, "WebFilterTable"

    .line 1264
    invoke-virtual {v10, v1, v11, v0, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(ILjava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 1267
    if-nez v4, :cond_5

    .line 1268
    const-string/jumbo v10, "BrowserPolicy"

    const-string/jumbo v11, "getUrlBlackList - cv is null"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    const/4 v10, 0x0

    return-object v10

    .line 1272
    :cond_5
    const/4 v3, 0x0

    .line 1273
    .local v3, "cv":Landroid/content/ContentValues;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1274
    .end local v3    # "cv":Landroid/content/ContentValues;
    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1275
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 1276
    .local v3, "cv":Landroid/content/ContentValues;
    const-string/jumbo v10, "url"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getUrlFilterState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    .line 1180
    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/String;

    .line 1181
    .local v0, "columns":[Ljava/lang/String;
    const/4 v7, 0x0

    aput-object p2, v0, v7

    .line 1182
    const/4 v4, 0x0

    .line 1184
    .local v4, "ret":Z
    const-string/jumbo v7, "BrowserPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getUrlFilterState - uid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " containerId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1185
    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1184
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1185
    const-string/jumbo v9, " column:"

    .line 1184
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v6

    .line 1188
    .local v6, "userId":I
    const-string/jumbo v7, "BrowserPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getUrlFilterState - userId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    iget-object v7, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1190
    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1191
    const-string/jumbo v9, "WebFilterSettingsTable"

    .line 1189
    invoke-virtual {v7, v8, v9, v0, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(ILjava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 1192
    .local v2, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v2, :cond_1

    .line 1193
    const/4 v1, 0x0

    .line 1194
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1196
    .end local v1    # "cv":Landroid/content/ContentValues;
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1197
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 1198
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-virtual {v1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1199
    .local v5, "string":Ljava/lang/String;
    if-eqz v5, :cond_0

    const-string/jumbo v7, "true"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1200
    const/4 v4, 0x1

    .line 1206
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    .end local v5    # "string":Ljava/lang/String;
    :cond_1
    const-string/jumbo v7, "BrowserPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getUrlFilterState - ret: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    return v4
.end method

.method private getWebFilteringCache(I)Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    .locals 6
    .param p1, "userId"    # I

    .prologue
    const/4 v5, 0x2

    .line 1283
    iget-object v3, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mUserCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    .line 1284
    .local v2, "tCache":[Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    if-nez v2, :cond_1

    .line 1286
    new-array v0, v5, [Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    .line 1287
    .local v0, "cache":[Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 1288
    new-instance v3, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    invoke-direct {v3, p0, v1}, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;-><init>(Lcom/android/server/enterprise/browser/BrowserPolicy;I)V

    aput-object v3, v0, v1

    .line 1287
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1290
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mUserCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1291
    move-object v2, v0

    .line 1293
    .end local v0    # "cache":[Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    .end local v1    # "i":I
    :cond_1
    const/4 v3, 0x0

    aget-object v3, v2, v3

    return-object v3
.end method

.method private refreshWebFiltering(Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;I)V
    .locals 3
    .param p1, "cache"    # Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    .param p2, "userId"    # I

    .prologue
    .line 1297
    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mUserCache:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 1298
    return-void

    .line 1301
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mUserCache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1302
    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mUserCache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    .line 1303
    .local v0, "tCache":[Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    if-eqz v0, :cond_1

    .line 1304
    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mUserCache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1305
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1306
    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mUserCache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1296
    .end local v0    # "tCache":[Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    :cond_1
    return-void
.end method

.method private removeAdmin(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    const/4 v3, 0x0

    .line 1312
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1313
    .local v1, "userId":I
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getWebFilteringCache(I)Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    move-result-object v0

    .line 1314
    .local v0, "cache":Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    iget-object v2, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1315
    iput-boolean v3, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlBlacklistUpdated:Z

    .line 1316
    iput-boolean v3, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlFilterStateUpdated:Z

    .line 1317
    iput-boolean v3, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlFilterReportUpdated:Z

    .line 1311
    return-void
.end method

.method private saveURLBlockedReport(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    .locals 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 984
    iget-object v5, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    invoke-static {v5, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 985
    const-string/jumbo v5, "BrowserPolicy"

    const-string/jumbo v6, " saveURLBlockedReport calls from Profile return default value"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    return-void

    .line 988
    :cond_0
    const-string/jumbo v5, "BrowserPolicy"

    const-string/jumbo v6, "saveURLBlockedReport"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 990
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v4

    .line 991
    .local v4, "userId":I
    const-string/jumbo v5, "BrowserPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saveURLBlockedReport > userId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 993
    .local v2, "time":J
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 994
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v5, "url"

    invoke-virtual {v1, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    const-string/jumbo v5, "time"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    const-string/jumbo v5, "containerID"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 997
    const-string/jumbo v5, "userID"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 998
    iget-object v5, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 999
    const-string/jumbo v6, "WebFilterLogTable"

    .line 998
    invoke-virtual {v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1000
    const-string/jumbo v5, "BrowserPolicy"

    const-string/jumbo v6, "isUrlBlocked - Failed on inserting log"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    :cond_1
    return-void
.end method

.method private saveUrlBlackList(IILjava/util/List;)Z
    .locals 6
    .param p1, "containerId"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1211
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1212
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1214
    .local v0, "cv":Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "WebFilterTable"

    invoke-virtual {v2, v3, p2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdmin(Ljava/lang/String;II)Z

    .line 1215
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1216
    const-string/jumbo v2, "adminUid"

    .line 1217
    invoke-static {p2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 1216
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    const-string/jumbo v3, "url"

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    const-string/jumbo v2, "BrowserPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "saveUrlBlackList - cv: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    iget-object v2, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "WebFilterTable"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1222
    const/4 v2, 0x0

    return v2

    .line 1224
    :cond_0
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    goto :goto_0

    .line 1226
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private setURLFilterEnabled(Lcom/samsung/android/knox/ContextInfo;Z)I
    .locals 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 655
    const-string/jumbo v8, "BrowserPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setURLFilterEnabled("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 657
    .local v1, "containerId":I
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 658
    .local v6, "uid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v7

    .line 660
    .local v7, "userId":I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 661
    .local v2, "cv":Landroid/content/ContentValues;
    const-string/jumbo v8, "filtering"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    iget-object v8, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 663
    const-string/jumbo v9, "WebFilterSettingsTable"

    .line 662
    invoke-virtual {v8, v6, v1, v9, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v5

    .line 665
    .local v5, "ret":Z
    if-eqz v5, :cond_1

    .line 667
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getWebFilteringCache(I)Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    move-result-object v0

    .line 668
    .local v0, "cache":Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    iget-object v9, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    monitor-enter v9

    .line 669
    :try_start_0
    iget-object v8, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 670
    const/4 v8, 0x0

    iput-boolean v8, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlFilterStateUpdated:Z

    .line 671
    const/4 v8, 0x0

    iput-boolean v8, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlBlacklistUpdated:Z

    .line 672
    invoke-direct {p0, v0, v7}, Lcom/android/server/enterprise/browser/BrowserPolicy;->refreshWebFiltering(Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;I)V

    .line 673
    if-nez p2, :cond_0

    .line 674
    iget-object v8, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v10, "WebFilterTable"

    invoke-virtual {v8, v10, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdmin(Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v9

    .line 680
    iget-object v8, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    .line 681
    const-string/jumbo v9, "FirewallPolicy/getURLFilterEnabled"

    .line 679
    invoke-static {v8, v9, v7}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    .line 684
    .end local v0    # "cache":Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    :cond_1
    if-eqz v5, :cond_2

    if-nez v7, :cond_2

    .line 685
    new-instance v4, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v8, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v4, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 687
    .local v4, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string/jumbo v8, "Firewall"

    const-string/jumbo v9, "setURLFilterEnabled"

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct {p0, p1, v10, v11}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterEnabled(Lcom/samsung/android/knox/ContextInfo;ZZ)Z

    move-result v10

    invoke-virtual {v4, v8, v9, v10}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 688
    const-string/jumbo v8, "BrowserPolicy"

    const-string/jumbo v9, "setURLFilterEnabled() calling gearPolicyManager "

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 693
    .end local v4    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_2
    :goto_0
    const-string/jumbo v8, "BrowserPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setURLFilterEnabled : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    if-eqz v5, :cond_3

    const/4 v8, 0x1

    :goto_1
    return v8

    .line 668
    .restart local v0    # "cache":Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 689
    .end local v0    # "cache":Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    .restart local v4    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v3

    .line 690
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 694
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_3
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private setURLFilterList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)I
    .locals 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p2, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 773
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 774
    .local v1, "containerId":I
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 775
    .local v5, "uid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v6

    .line 777
    .local v6, "userId":I
    if-nez p2, :cond_0

    .line 778
    return v7

    .line 781
    :cond_0
    invoke-direct {p0, v1, v5, p2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->saveUrlBlackList(IILjava/util/List;)Z

    move-result v4

    .line 782
    .local v4, "ret":Z
    if-eqz v4, :cond_1

    .line 784
    invoke-direct {p0, v6}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getWebFilteringCache(I)Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    move-result-object v0

    .line 785
    .local v0, "cache":Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    iget-object v8, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    monitor-enter v8

    .line 786
    :try_start_0
    iget-object v9, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 787
    const/4 v9, 0x0

    iput-boolean v9, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlBlacklistUpdated:Z

    .line 788
    invoke-direct {p0, v0, v6}, Lcom/android/server/enterprise/browser/BrowserPolicy;->refreshWebFiltering(Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    .line 792
    iget-object v8, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    .line 793
    const-string/jumbo v9, "FirewallPolicy/getURLFilterList"

    .line 792
    invoke-static {v8, v9, v6}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    .line 796
    .end local v0    # "cache":Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    :cond_1
    if-eqz v4, :cond_2

    if-nez v6, :cond_2

    .line 797
    new-instance v3, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v8, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v3, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 799
    .local v3, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string/jumbo v8, "Firewall"

    const-string/jumbo v9, "setURLFilterList"

    invoke-virtual {v3, v8, v9, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringListTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I

    .line 800
    const-string/jumbo v8, "BrowserPolicy"

    const-string/jumbo v9, "setURLFilterList() calling gearPolicyManager "

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 805
    .end local v3    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_2
    :goto_0
    if-eqz v4, :cond_3

    const/4 v7, 0x1

    :cond_3
    return v7

    .line 785
    .restart local v0    # "cache":Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 801
    .end local v0    # "cache":Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    .restart local v3    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v2

    .line 802
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setURLFilterReportEnabled(Lcom/samsung/android/knox/ContextInfo;Z)I
    .locals 19
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 1018
    move-object/from16 v0, p1

    iget v5, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1019
    .local v5, "containerId":I
    move-object/from16 v0, p1

    iget v12, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1020
    .local v12, "uid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v14

    .line 1022
    .local v14, "userId":I
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1023
    .local v6, "cv":Landroid/content/ContentValues;
    const-string/jumbo v15, "logging"

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1025
    const-string/jumbo v16, "WebFilterSettingsTable"

    .line 1024
    move-object/from16 v0, v16

    invoke-virtual {v15, v12, v5, v0, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v9

    .line 1027
    .local v9, "ret":Z
    if-eqz v9, :cond_0

    .line 1028
    const-string/jumbo v15, "BrowserPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "setURLFilterReportEnabled - Added to database, refreshing cache userId= "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getWebFilteringCache(I)Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    move-result-object v4

    .line 1031
    .local v4, "cache":Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    const/4 v15, 0x0

    iput-boolean v15, v4, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlFilterReportUpdated:Z

    .line 1032
    const/4 v15, 0x0

    iput-boolean v15, v4, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlBlacklistUpdated:Z

    .line 1033
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14}, Lcom/android/server/enterprise/browser/BrowserPolicy;->refreshWebFiltering(Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;I)V

    .line 1037
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    .line 1038
    const-string/jumbo v16, "FirewallPolicy/getURLFilterReportEnabled"

    .line 1036
    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1043
    .end local v4    # "cache":Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    :cond_0
    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v15, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterReportEnabled(Lcom/samsung/android/knox/ContextInfo;ZZ)Z

    move-result v13

    .line 1044
    .local v13, "urlFilterReportEnabled":Z
    if-eqz p2, :cond_2

    if-eqz v13, :cond_2

    .line 1059
    :goto_0
    if-eqz v9, :cond_1

    if-nez v14, :cond_1

    .line 1060
    new-instance v8, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v8, v15}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1062
    .local v8, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string/jumbo v15, "Firewall"

    const-string/jumbo v16, "setURLFilterReportEnabled"

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterReportEnabled(Lcom/samsung/android/knox/ContextInfo;ZZ)Z

    move-result v17

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v8, v15, v0, v1}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1063
    const-string/jumbo v15, "BrowserPolicy"

    const-string/jumbo v16, "setURLFilterReportEnabled() calling gearPolicyManager "

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1069
    .end local v8    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_1
    :goto_1
    const-string/jumbo v15, "BrowserPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "setURLFilterReportEnabled - return = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    if-eqz v9, :cond_3

    const/4 v15, 0x1

    :goto_2
    return v15

    .line 1045
    :cond_2
    const-string/jumbo v15, "BrowserPolicy"

    const-string/jumbo v16, "setURLFilterReportEnabled - Clean url report"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    const/4 v15, 0x2

    new-array v10, v15, [Ljava/lang/String;

    .line 1049
    const-string/jumbo v15, "containerID"

    const/16 v16, 0x0

    aput-object v15, v10, v16

    .line 1050
    const-string/jumbo v15, "userID"

    const/16 v16, 0x1

    aput-object v15, v10, v16

    .line 1052
    .local v10, "sColumns":[Ljava/lang/String;
    const/4 v15, 0x2

    new-array v11, v15, [Ljava/lang/String;

    .line 1053
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v11, v16

    .line 1054
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    aput-object v15, v11, v16

    .line 1056
    .local v11, "sValues":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v16, "WebFilterLogTable"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 1064
    .end local v10    # "sColumns":[Ljava/lang/String;
    .end local v11    # "sValues":[Ljava/lang/String;
    .restart local v8    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v7

    .line 1065
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1070
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_3
    const/4 v15, 0x0

    goto :goto_2
.end method

.method private static validateProxyParameters(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "hostname"    # Ljava/lang/String;
    .param p1, "port"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 608
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 609
    :cond_0
    return v8

    .line 611
    :cond_1
    const/4 v5, -0x1

    .line 613
    .local v5, "portVal":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 617
    if-lez v5, :cond_2

    const v6, 0xffff

    if-le v5, v6, :cond_3

    .line 618
    :cond_2
    return v8

    .line 614
    :catch_0
    move-exception v3

    .line 615
    .local v3, "ex":Ljava/lang/NumberFormatException;
    return v8

    .line 621
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    :cond_3
    const-string/jumbo v0, "a-zA-Z0-9\\_"

    .line 624
    .local v0, "HC":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "^$|^["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]+(\\-["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]+)*(\\.["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]+(\\-["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]+)*)*$"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 627
    .local v2, "HOSTNAME_REGEXP":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 629
    .local v1, "HOSTNAME_PATTERN":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 631
    .local v4, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_4

    .line 632
    return v8

    .line 634
    :cond_4
    const/4 v6, 0x1

    return v6
.end method


# virtual methods
.method public clearHttpProxy(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 501
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserProxyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 502
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 503
    .local v0, "adminUid":I
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 504
    .local v1, "containerId":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 505
    .local v5, "userId":I
    const/4 v4, 0x0

    .line 507
    .local v4, "result":Z
    iget-object v6, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 508
    iget-object v6, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    invoke-virtual {v6, v0}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->isOwner(I)Z

    move-result v6

    .line 507
    if-eqz v6, :cond_1

    .line 509
    iget-object v6, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "BROWSER_PROXY"

    invoke-virtual {v6, v7, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdmin(Ljava/lang/String;II)Z

    move-result v4

    .line 511
    .local v4, "result":Z
    if-eqz v4, :cond_1

    .line 512
    iget-object v6, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    invoke-virtual {v6}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->clear()V

    .line 514
    iget-object v6, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    iget-object v6, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 517
    iget-object v6, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    :cond_0
    iget-object v6, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    .line 520
    const-string/jumbo v7, "BrowserPolicy/getHttpProxy"

    .line 519
    invoke-static {v6, v7, v5}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    .line 521
    const-string/jumbo v6, "BrowserPolicy"

    const-string/jumbo v7, "clearHttpProxy() : SecContentProvider updated."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    .end local v4    # "result":Z
    :cond_1
    if-eqz v4, :cond_2

    if-nez v5, :cond_2

    .line 525
    new-instance v3, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v6, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 528
    .local v3, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string/jumbo v6, "BrowserPolicy"

    const-string/jumbo v7, "clearHttpProxy"

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 529
    const-string/jumbo v6, "BrowserPolicy"

    const-string/jumbo v7, "clearHttpProxy() calling gearPolicyManager "

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    .end local v3    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_2
    :goto_0
    const-string/jumbo v6, "BrowserPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "clearHttpProxy() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    return v4

    .line 530
    .restart local v3    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v2

    .line 531
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;I)Z
    .locals 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "setting"    # I

    .prologue
    .line 374
    const/4 v1, 0x1

    .line 375
    .local v1, "lEnabled":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    .line 383
    .local v2, "userId":I
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "BROWSER"

    .line 384
    const-string/jumbo v8, "browserSettings"

    .line 383
    invoke-virtual {v6, v7, v8, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v5

    .line 386
    .local v5, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 387
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "value$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 388
    .local v3, "value":I
    if-ltz v3, :cond_0

    .line 400
    and-int v6, v3, p2

    if-eq p2, v6, :cond_0

    .line 401
    const/4 v1, 0x0

    .line 413
    .end local v3    # "value":I
    .end local v4    # "value$iterator":Ljava/util/Iterator;
    .end local v5    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    :goto_0
    const-string/jumbo v6, "BrowserPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getBrowserSettingStatus("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ") : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    return v1

    .line 408
    .restart local v5    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_2
    :try_start_1
    const-string/jumbo v6, "BrowserPolicy"

    const-string/jumbo v7, "getBrowserSettingStatus() : No Policy in BrowserPolicy."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 410
    .end local v5    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 411
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v6, "BrowserPolicy"

    const-string/jumbo v7, "getBrowserSettingStatus() : failed. "

    invoke-static {v6, v7, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getHttpProxy(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 544
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    .line 545
    .local v2, "userId":I
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 546
    .local v0, "containerId":I
    const/4 v1, 0x0

    .line 547
    .local v1, "ret":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 548
    iget-object v3, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    invoke-static {v3}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->-get0(Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;)Ljava/lang/String;

    move-result-object v1

    .line 550
    .end local v1    # "ret":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "BrowserPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getHttpProxy() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    return-object v1
.end method

.method public getURLFilterEnabledEnforcingBrowserPermission(Lcom/samsung/android/knox/ContextInfo;ZZ)Z
    .locals 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "allAdmins"    # Z
    .param p3, "isActiveAdmin"    # Z

    .prologue
    .line 724
    if-eqz p3, :cond_0

    .line 725
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 735
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterEnabled(Lcom/samsung/android/knox/ContextInfo;ZZ)Z

    move-result v1

    return v1

    .line 727
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserPermissionByContext(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p1

    goto :goto_0

    .line 729
    :catch_0
    move-exception v0

    .line 732
    .local v0, "ex":Ljava/lang/SecurityException;
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v1

    .line 733
    const-string/jumbo v2, "FirewallPolicy"

    const-string/jumbo v3, "getURLFilterEnabled"

    .line 732
    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getURLFilterEnabledEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;ZZ)Z
    .locals 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "allAdmins"    # Z
    .param p3, "isActiveAdmin"    # Z

    .prologue
    .line 703
    if-eqz p3, :cond_0

    .line 704
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 715
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterEnabled(Lcom/samsung/android/knox/ContextInfo;ZZ)Z

    move-result v1

    return v1

    .line 706
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceFirewallPermissionByContext(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p1

    goto :goto_0

    .line 708
    :catch_0
    move-exception v0

    .line 711
    .local v0, "ex":Ljava/lang/SecurityException;
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v1

    .line 712
    const-string/jumbo v2, "FirewallPolicy"

    const-string/jumbo v3, "getURLFilterEnabled"

    .line 711
    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getURLFilterListEnforcingBrowserPermission(Lcom/samsung/android/knox/ContextInfo;ZZ)Ljava/util/List;
    .locals 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "allAdmins"    # Z
    .param p3, "isActiveAdmin"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "ZZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 834
    if-eqz p3, :cond_0

    .line 835
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 845
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterList(Lcom/samsung/android/knox/ContextInfo;ZZ)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 837
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserPermissionByContext(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p1

    goto :goto_0

    .line 839
    :catch_0
    move-exception v0

    .line 842
    .local v0, "ex":Ljava/lang/SecurityException;
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v1

    .line 843
    const-string/jumbo v2, "FirewallPolicy"

    const-string/jumbo v3, "getURLFilterList"

    .line 842
    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getURLFilterListEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;ZZ)Ljava/util/List;
    .locals 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "allAdmins"    # Z
    .param p3, "isActiveAdmin"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "ZZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 814
    if-eqz p3, :cond_0

    .line 815
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 825
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterList(Lcom/samsung/android/knox/ContextInfo;ZZ)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 817
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceFirewallPermissionByContext(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p1

    goto :goto_0

    .line 819
    :catch_0
    move-exception v0

    .line 822
    .local v0, "ex":Ljava/lang/SecurityException;
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v1

    .line 823
    const-string/jumbo v2, "FirewallPolicy"

    const-string/jumbo v3, "getURLFilterList"

    .line 822
    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getURLFilterReportEnabledEnforcingBrowserPermission(Lcom/samsung/android/knox/ContextInfo;ZZ)Z
    .locals 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "allAdmins"    # Z
    .param p3, "isActiveAdmin"    # Z

    .prologue
    .line 1097
    if-eqz p3, :cond_0

    .line 1098
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 1109
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterReportEnabled(Lcom/samsung/android/knox/ContextInfo;ZZ)Z

    move-result v1

    return v1

    .line 1100
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserPermissionByContext(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p1

    goto :goto_0

    .line 1102
    :catch_0
    move-exception v0

    .line 1105
    .local v0, "ex":Ljava/lang/SecurityException;
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v1

    .line 1106
    const-string/jumbo v2, "FirewallPolicy"

    const-string/jumbo v3, "getURLFilterReportEnabled"

    .line 1105
    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getURLFilterReportEnabledEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;ZZ)Z
    .locals 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "allAdmins"    # Z
    .param p3, "isActiveAdmin"    # Z

    .prologue
    .line 1079
    if-eqz p3, :cond_0

    .line 1080
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 1091
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterReportEnabled(Lcom/samsung/android/knox/ContextInfo;ZZ)Z

    move-result v1

    return v1

    .line 1082
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceFirewallPermissionByContext(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p1

    goto :goto_0

    .line 1084
    :catch_0
    move-exception v0

    .line 1087
    .local v0, "ex":Ljava/lang/SecurityException;
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v1

    .line 1088
    const-string/jumbo v2, "FirewallPolicy"

    const-string/jumbo v3, "getURLFilterReportEnabled"

    .line 1087
    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getURLFilterReportEnforcingBrowserPermission(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 1
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
    .line 1138
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1139
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterReport(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getURLFilterReportEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 1
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
    .line 1133
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1134
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterReport(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isUrlBlocked(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 20
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 891
    const/4 v9, 0x0

    .line 892
    .local v9, "isBlocked":Z
    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterEnabled(Lcom/samsung/android/knox/ContextInfo;ZZ)Z

    move-result v7

    .line 894
    .local v7, "filterEnabled":Z
    if-nez v7, :cond_0

    .line 895
    const-string/jumbo v17, "BrowserPolicy"

    const-string/jumbo v18, "isUrlBlocked - Policy disabled"

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    const/16 v17, 0x0

    return v17

    .line 899
    :cond_0
    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterList(Lcom/samsung/android/knox/ContextInfo;ZZ)Ljava/util/List;

    move-result-object v15

    .line 900
    .local v15, "urlBlacklist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v17, "BrowserPolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "urlBlacklist: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    if-eqz v15, :cond_7

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_7

    .line 903
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 904
    .end local v9    # "isBlocked":Z
    .local v5, "blacklistIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 905
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 906
    .local v4, "adminRule":Ljava/lang/String;
    const-string/jumbo v17, "*"

    const-string/jumbo v18, ".*"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 907
    .local v14, "regex":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 908
    .local v12, "newUrl":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 909
    const-string/jumbo v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 910
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 912
    :cond_2
    const-string/jumbo v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 913
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 915
    :cond_3
    const-string/jumbo v17, "http://"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 916
    const/16 v17, 0x7

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 920
    :cond_4
    :goto_0
    const-string/jumbo v17, "https://"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 921
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 928
    :cond_5
    :goto_1
    :try_start_0
    invoke-static {v14}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    .line 929
    .local v13, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v13, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 930
    .local v11, "matchUrl":Ljava/util/regex/Matcher;
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    .line 931
    .local v9, "isBlocked":Z
    if-nez v9, :cond_6

    const-string/jumbo v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 932
    const/16 v17, 0x2f

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 933
    .local v8, "host":Ljava/lang/String;
    invoke-virtual {v13, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 934
    .local v10, "matchHost":Ljava/util/regex/Matcher;
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 940
    .end local v8    # "host":Ljava/lang/String;
    .end local v9    # "isBlocked":Z
    .end local v10    # "matchHost":Ljava/util/regex/Matcher;
    .end local v11    # "matchUrl":Ljava/util/regex/Matcher;
    .end local v13    # "pattern":Ljava/util/regex/Pattern;
    :cond_6
    :goto_2
    if-eqz v9, :cond_1

    .line 942
    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterReportEnabled(Lcom/samsung/android/knox/ContextInfo;ZZ)Z

    move-result v16

    .line 943
    .local v16, "urlFilterEnabled":Z
    if-eqz v16, :cond_7

    .line 944
    invoke-direct/range {p0 .. p2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->saveURLBlockedReport(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 950
    .end local v4    # "adminRule":Ljava/lang/String;
    .end local v5    # "blacklistIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v12    # "newUrl":Ljava/lang/String;
    .end local v14    # "regex":Ljava/lang/String;
    .end local v16    # "urlFilterEnabled":Z
    :cond_7
    const-string/jumbo v17, "BrowserPolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "isUrlBlocked: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    return v9

    .line 917
    .restart local v4    # "adminRule":Ljava/lang/String;
    .restart local v5    # "blacklistIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v12    # "newUrl":Ljava/lang/String;
    .restart local v14    # "regex":Ljava/lang/String;
    :cond_8
    const-string/jumbo v17, "https://"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 918
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 923
    :cond_9
    const-string/jumbo v17, "http://"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 924
    const/16 v17, 0x7

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1

    .line 936
    :catch_0
    move-exception v6

    .line 937
    .local v6, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string/jumbo v17, "BrowserPolicy"

    const-string/jumbo v18, "isUrlBlocked - Regex is not valid"

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public isUrlBlocked(Ljava/lang/String;)Z
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 884
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 885
    .local v1, "uid":I
    const-string/jumbo v2, "BrowserPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " isUrlBlocked "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 887
    .local v0, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->isUrlBlocked(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method loadProxySettings()V
    .locals 15

    .prologue
    const/4 v12, 0x0

    .line 212
    const/4 v11, 0x2

    new-array v3, v11, [Ljava/lang/String;

    const-string/jumbo v11, "adminUid"

    aput-object v11, v3, v12

    const-string/jumbo v11, "proxyServer"

    const/4 v12, 0x1

    aput-object v11, v3, v12

    .line 214
    .local v3, "columns":[Ljava/lang/String;
    :try_start_0
    iget-object v11, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 215
    const-string/jumbo v12, "BROWSER_PROXY"

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 214
    invoke-virtual {v11, v12, v13, v14, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 216
    .local v9, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "cv$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 217
    .local v5, "cv":Landroid/content/ContentValues;
    const-string/jumbo v11, "proxyServer"

    invoke-virtual {v5, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 218
    .local v8, "proxySetting":Ljava/lang/String;
    const-string/jumbo v11, "adminUid"

    invoke-virtual {v5, v11}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 220
    .local v0, "adminLUID":J
    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v4

    .line 221
    .local v4, "containerId":I
    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v2

    .line 222
    .local v2, "admindUid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 224
    .local v10, "userId":I
    iget-object v11, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 225
    iget-object v11, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_0
    iget-object v11, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 228
    iget-object v11, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-instance v13, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    invoke-direct {v13, p0, v10, v4}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;-><init>(Lcom/android/server/enterprise/browser/BrowserPolicy;II)V

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :cond_1
    iget-object v11, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    const/4 v12, 0x0

    invoke-virtual {v11, v2, v8, v12}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->setProxy(ILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 232
    .end local v0    # "adminLUID":J
    .end local v2    # "admindUid":I
    .end local v4    # "containerId":I
    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v6    # "cv$iterator":Ljava/util/Iterator;
    .end local v8    # "proxySetting":Ljava/lang/String;
    .end local v9    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v10    # "userId":I
    :catch_0
    move-exception v7

    .line 233
    .local v7, "ex":Ljava/lang/Exception;
    const-string/jumbo v11, "BrowserPolicy"

    const-string/jumbo v12, "loadProxySettings() : failed"

    invoke-static {v11, v12, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    .end local v7    # "ex":Ljava/lang/Exception;
    :cond_2
    return-void
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 1324
    return-void
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 555
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 4
    .param p1, "uid"    # I

    .prologue
    const/4 v3, 0x0

    .line 560
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 561
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 562
    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->isOwner(I)Z

    move-result v1

    .line 561
    if-eqz v1, :cond_0

    .line 563
    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    invoke-virtual {v1}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->clear()V

    .line 565
    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 568
    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    :cond_0
    return-void
.end method

.method public onContainerCreation(II)V
    .locals 0
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 583
    return-void
.end method

.method public onContainerRemoved(II)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 588
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 589
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 590
    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->isOwner(I)Z

    move-result v1

    .line 589
    if-eqz v1, :cond_0

    .line 591
    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    invoke-virtual {v1}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->clear()V

    .line 593
    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 596
    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    :cond_0
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 579
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/browser/BrowserPolicy;->removeAdmin(Lcom/samsung/android/knox/ContextInfo;)V

    .line 578
    return-void
.end method

.method public onPreContainerRemoval(II)V
    .locals 0
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 1321
    return-void
.end method

.method public saveURLBlockedReportEnforcingBrowserPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    .locals 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 974
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserPermissionByContext(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 980
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->saveURLBlockedReport(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 972
    return-void

    .line 975
    :catch_0
    move-exception v0

    .line 976
    .local v0, "ex":Ljava/lang/SecurityException;
    const-string/jumbo v1, "BrowserPolicy"

    const-string/jumbo v2, "Enforcing Chrome permission"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v1

    .line 978
    const-string/jumbo v2, "FirewallPolicy"

    const-string/jumbo v3, "saveURLBlockedReport"

    .line 977
    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public saveURLBlockedReportEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    .locals 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 960
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceFirewallPermissionByContext(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 966
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->saveURLBlockedReport(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 958
    return-void

    .line 961
    :catch_0
    move-exception v0

    .line 962
    .local v0, "ex":Ljava/lang/SecurityException;
    const-string/jumbo v1, "BrowserPolicy"

    const-string/jumbo v2, "Enforcing Chrome permission"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v1

    .line 964
    const-string/jumbo v2, "FirewallPolicy"

    const-string/jumbo v3, "saveURLBlockedReport"

    .line 963
    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;ZI)Z
    .locals 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "enable"    # Z
    .param p3, "setting"    # I

    .prologue
    .line 299
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 300
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 301
    .local v1, "callingUid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 302
    .local v8, "userId":I
    const/4 v5, 0x0

    .line 303
    .local v5, "success":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 308
    .local v6, "token":J
    :try_start_0
    iget-object v9, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v10, "BROWSER"

    .line 309
    const-string/jumbo v11, "browserSettings"

    .line 308
    invoke-virtual {v9, v1, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 315
    .local v4, "lValue":I
    :goto_0
    if-eqz p2, :cond_1

    or-int/2addr v4, p3

    .line 316
    :goto_1
    :try_start_1
    iget-object v9, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v10, "BROWSER"

    .line 317
    const-string/jumbo v11, "browserSettings"

    .line 316
    invoke-virtual {v9, v1, v10, v11, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    .line 322
    .local v5, "success":Z
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 323
    .local v0, "am":Landroid/app/IActivityManager;
    const-string/jumbo v9, "com.android.browser"

    invoke-interface {v0, v9, v8}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 324
    const-string/jumbo v9, "com.sec.android.app.sbrowser"

    invoke-interface {v0, v9, v8}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 325
    const-string/jumbo v9, "com.android.chrome"

    invoke-interface {v0, v9, v8}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 329
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 332
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v4    # "lValue":I
    .end local v5    # "success":Z
    :goto_2
    const-string/jumbo v9, "BrowserPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setBrowserSettingStatus() : = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", enable = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ",  setting = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    if-eqz v5, :cond_0

    .line 335
    sparse-switch p3, :sswitch_data_0

    .line 360
    :goto_3
    const-string/jumbo v9, "BrowserPolicy"

    const-string/jumbo v10, "setBrowserSettingStatus() : SecContentProvider updated."

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_0
    return v5

    .line 310
    .local v5, "success":Z
    :catch_0
    move-exception v2

    .line 311
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v9, "BrowserPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setBrowserSettingStatus("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ") : EdmStorageProvider failed to read Data. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 312
    const/16 v4, 0x1f

    .restart local v4    # "lValue":I
    goto/16 :goto_0

    .line 315
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    not-int v9, p3

    and-int/2addr v4, v9

    goto/16 :goto_1

    .line 326
    .end local v4    # "lValue":I
    .end local v5    # "success":Z
    :catch_1
    move-exception v3

    .line 327
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v9, "BrowserPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setBrowserSettingStatus("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ") : failed. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 329
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_2

    .line 328
    .end local v3    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 329
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 328
    throw v9

    .line 338
    :sswitch_0
    iget-object v9, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    .line 339
    const-string/jumbo v10, "BrowserPolicy/getPopupsSetting"

    .line 337
    invoke-static {v9, v10, v8}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_3

    .line 344
    :sswitch_1
    iget-object v9, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    .line 345
    const-string/jumbo v10, "BrowserPolicy/getCookiesSetting"

    .line 342
    invoke-static {v9, v10, v8}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_3

    .line 350
    :sswitch_2
    iget-object v9, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    .line 351
    const-string/jumbo v10, "BrowserPolicy/getAutoFillSetting"

    .line 348
    invoke-static {v9, v10, v8}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_3

    .line 356
    :sswitch_3
    iget-object v9, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    .line 357
    const-string/jumbo v10, "BrowserPolicy/getJavaScriptSetting"

    .line 354
    invoke-static {v9, v10, v8}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 335
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method public setHttpProxy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 18
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "proxySetting"    # Ljava/lang/String;

    .prologue
    .line 423
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserProxyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 424
    move-object/from16 v0, p1

    iget v2, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 425
    .local v2, "adminUid":I
    move-object/from16 v0, p1

    iget v4, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 426
    .local v4, "containerId":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    .line 427
    .local v14, "userId":I
    if-nez p2, :cond_0

    .line 428
    const/4 v15, 0x0

    return v15

    .line 430
    :cond_0
    const/4 v13, 0x0

    .line 433
    .local v13, "result":Z
    const-string/jumbo v15, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 434
    const-string/jumbo v15, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 435
    .local v11, "params":[Ljava/lang/String;
    const/4 v15, 0x0

    aget-object v9, v11, v15

    .line 436
    .local v9, "hostname":Ljava/lang/String;
    const/4 v15, 0x1

    aget-object v12, v11, v15

    .line 441
    .end local v11    # "params":[Ljava/lang/String;
    .local v12, "port":Ljava/lang/String;
    :goto_0
    invoke-static {v9, v12}, Lcom/android/server/enterprise/browser/BrowserPolicy;->validateProxyParameters(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 442
    const/4 v15, 0x0

    return v15

    .line 438
    .end local v9    # "hostname":Ljava/lang/String;
    .end local v12    # "port":Ljava/lang/String;
    :cond_1
    move-object/from16 v9, p2

    .line 439
    .restart local v9    # "hostname":Ljava/lang/String;
    const-string/jumbo v12, "80"

    .restart local v12    # "port":Ljava/lang/String;
    goto :goto_0

    .line 445
    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 446
    .local v10, "myProxySetting":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 447
    const/4 v15, 0x0

    return v15

    .line 449
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 450
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {v15 .. v17}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 453
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    new-instance v17, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14, v4}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;-><init>(Lcom/android/server/enterprise/browser/BrowserPolicy;II)V

    invoke-virtual/range {v15 .. v17}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    :cond_5
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    .line 457
    .local v3, "auxCache":Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;
    invoke-virtual {v3}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->isAlreadySet()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->isOwner(I)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 458
    :cond_6
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 459
    .local v5, "cv":Landroid/content/ContentValues;
    const-string/jumbo v15, "proxyServer"

    invoke-virtual {v5, v15, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 461
    const-string/jumbo v16, "BROWSER_PROXY"

    .line 460
    move-object/from16 v0, v16

    invoke-virtual {v15, v2, v4, v0, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v13

    .line 462
    .local v13, "result":Z
    if-eqz v13, :cond_7

    .line 463
    const/4 v15, 0x0

    invoke-virtual {v3, v2, v10, v15}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->setProxy(ILjava/lang/String;Z)V

    .line 469
    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v13    # "result":Z
    :cond_7
    :goto_1
    if-eqz v13, :cond_8

    .line 471
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    .line 472
    const-string/jumbo v16, "BrowserPolicy/getHttpProxy"

    .line 470
    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    .line 473
    const-string/jumbo v15, "BrowserPolicy"

    const-string/jumbo v16, "setHttpProxy() : SecContentProvider updated."

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    .end local v3    # "auxCache":Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;
    :cond_8
    :goto_2
    if-eqz v13, :cond_9

    if-nez v14, :cond_9

    .line 481
    new-instance v8, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v8, v15}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 484
    .local v8, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string/jumbo v15, "BrowserPolicy"

    const-string/jumbo v16, "setHttpProxy"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v8, v15, v0, v1}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const-string/jumbo v15, "BrowserPolicy"

    const-string/jumbo v16, "setHttpProxy()  calling gearPolicyManager "

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 490
    .end local v8    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_9
    :goto_3
    const-string/jumbo v15, "BrowserPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "setHttpProxy("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ") : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    return v13

    .line 466
    .restart local v3    # "auxCache":Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;
    .local v13, "result":Z
    :cond_a
    const/4 v13, 0x0

    goto :goto_1

    .line 476
    .end local v3    # "auxCache":Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;
    .end local v13    # "result":Z
    :catch_0
    move-exception v7

    .line 477
    .local v7, "ex":Ljava/lang/Exception;
    const-string/jumbo v15, "BrowserPolicy"

    const-string/jumbo v16, "setHttpProxy() : failed."

    move-object/from16 v0, v16

    invoke-static {v15, v0, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 478
    const/4 v13, 0x0

    .restart local v13    # "result":Z
    goto :goto_2

    .line 486
    .end local v7    # "ex":Ljava/lang/Exception;
    .end local v13    # "result":Z
    .restart local v8    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_1
    move-exception v6

    .line 487
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public setURLFilterEnabledEnforcingBrowserPermission(Lcom/samsung/android/knox/ContextInfo;Z)I
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 650
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 651
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->setURLFilterEnabled(Lcom/samsung/android/knox/ContextInfo;Z)I

    move-result v0

    return v0
.end method

.method public setURLFilterEnabledEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;Z)I
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 642
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 643
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->setURLFilterEnabled(Lcom/samsung/android/knox/ContextInfo;Z)I

    move-result v0

    return v0
.end method

.method public setURLFilterListEnforcingBrowserPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)I
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 768
    .local p2, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 769
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->setURLFilterList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public setURLFilterListEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)I
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 763
    .local p2, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 764
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->setURLFilterList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public setURLFilterReportEnabledEnforcingBrowserPermission(Lcom/samsung/android/knox/ContextInfo;Z)I
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 1013
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1014
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->setURLFilterReportEnabled(Lcom/samsung/android/knox/ContextInfo;Z)I

    move-result v0

    return v0
.end method

.method public setURLFilterReportEnabledEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;Z)I
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 1007
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1008
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->setURLFilterReportEnabled(Lcom/samsung/android/knox/ContextInfo;Z)I

    move-result v0

    return v0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 574
    return-void
.end method
