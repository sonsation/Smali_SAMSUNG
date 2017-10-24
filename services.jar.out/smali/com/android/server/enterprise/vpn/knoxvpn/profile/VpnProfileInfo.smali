.class public Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
.super Ljava/lang/Object;
.source "VpnProfileInfo.java"


# instance fields
.field private volatile activateState:I

.field private volatile admin_id:I

.field private volatile chainingEnabled:I

.field private volatile credentialsPredefined:Z

.field private volatile mDefaultInterface:Ljava/lang/String;

.field private mDnsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mInterfaceAddress:Ljava/lang/String;

.field private volatile mInterfaceName:Ljava/lang/String;

.field private volatile mInterfaceV6Address:Ljava/lang/String;

.field private volatile mInterface_type:I

.field private volatile mIsRetry:Z

.field private volatile mNetId:I

.field private mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageUidSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mPacurl:Ljava/lang/String;

.field private volatile mProfileName:Ljava/lang/String;

.field private mProxyInfo:Landroid/net/ProxyInfo;

.field private volatile mProxyPassword:Ljava/lang/String;

.field private volatile mProxyPort:I

.field private volatile mProxyServer:Ljava/lang/String;

.field private volatile mProxyusername:Ljava/lang/String;

.field private mSearchDomainList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mState:I

.field private volatile mVendorPkgName:Ljava/lang/String;

.field private volatile mVendorUid:I

.field private volatile mVpnClientType:I

.field private volatile markProfileForDeletion:Z

.field private volatile personaId:I

.field private volatile protocolType:Ljava/lang/String;

.field private volatile proxyAuthRequried:I

.field private volatile routeType:I

.field private volatile uidPidSearchEnabled:I

.field private volatile vpnConnectionType:I

.field private volatile vpnType:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-boolean v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mIsRetry:Z

    .line 85
    iput v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mVendorUid:I

    .line 87
    iput v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mNetId:I

    .line 89
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProxyServer:Ljava/lang/String;

    .line 91
    iput v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProxyPort:I

    .line 93
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProxyInfo:Landroid/net/ProxyInfo;

    .line 95
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProxyusername:Ljava/lang/String;

    .line 97
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProxyPassword:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPacurl:Ljava/lang/String;

    .line 101
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mInterfaceAddress:Ljava/lang/String;

    .line 103
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mDefaultInterface:Ljava/lang/String;

    .line 105
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mInterfaceV6Address:Ljava/lang/String;

    .line 108
    iput-boolean v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->credentialsPredefined:Z

    .line 111
    iput v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->proxyAuthRequried:I

    .line 114
    iput v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mVpnClientType:I

    .line 117
    iput v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mInterface_type:I

    .line 120
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 119
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 122
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageUidSet:Ljava/util/HashSet;

    .line 49
    return-void
.end method


# virtual methods
.method public addPackageEntry(Ljava/lang/String;II)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "cid"    # I

    .prologue
    .line 308
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;-><init>(Ljava/lang/String;II)V

    .line 309
    .local v0, "pkgInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageUidSet:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 307
    return-void
.end method

.method public getActivateState()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->activateState:I

    return v0
.end method

.method public getAdminId()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->admin_id:I

    return v0
.end method

.method public getChainingEnabled()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->chainingEnabled:I

    return v0
.end method

.method public getDefaultInterface()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mDefaultInterface:Ljava/lang/String;

    return-object v0
.end method

.method public getDnsList()Ljava/util/List;
    .locals 1
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
    .line 254
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mDnsList:Ljava/util/List;

    return-object v0
.end method

.method public getInterfaceAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mInterfaceAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getInterfaceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public getInterfaceType()I
    .locals 1

    .prologue
    .line 428
    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mInterface_type:I

    return v0
.end method

.method public getIsRetry()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mIsRetry:Z

    return v0
.end method

.method public getMarkProfileForDeletion()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->markProfileForDeletion:Z

    return v0
.end method

.method public getNetId()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mNetId:I

    return v0
.end method

.method public getPackage(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    const/4 v0, 0x0

    return-object v0

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    return-object v0
.end method

.method public getPackageCount()I
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public getPackageEntryForUid(I)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 290
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "p$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 291
    .local v0, "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 292
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getUid()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 293
    return-object v0

    .line 296
    .end local v0    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public getPackageList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getPackageMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public getPacurl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPacurl:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonaId()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->personaId:I

    return v0
.end method

.method public getProfileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProfileName:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->protocolType:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getProxyInfo()Landroid/net/ProxyInfo;
    .locals 1

    .prologue
    monitor-enter p0

    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProxyInfo:Landroid/net/ProxyInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProxyPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProxyPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyPort()I
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProxyPort:I

    return v0
.end method

.method public getProxyServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProxyServer:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProxyusername:Ljava/lang/String;

    return-object v0
.end method

.method public getRouteType()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->routeType:I

    return v0
.end method

.method public getSearchDomainList()Ljava/util/List;
    .locals 1
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
    .line 262
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mSearchDomainList:Ljava/util/List;

    return-object v0
.end method

.method public getUidPidSearchEnabled()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->uidPidSearchEnabled:I

    return v0
.end method

.method public getV6InterfaceAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mInterfaceV6Address:Ljava/lang/String;

    return-object v0
.end method

.method public getVendorPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mVendorPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getVendorUid()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mVendorUid:I

    return v0
.end method

.method public getVpnConnectionType()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->vpnConnectionType:I

    return v0
.end method

.method public getVpnServiceType()I
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->vpnType:I

    return v0
.end method

.method public getVpnType()I
    .locals 1

    .prologue
    .line 420
    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mVpnClientType:I

    return v0
.end method

.method public isPackageAddedToProfile(I)Z
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageUidSet:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isProxyAuthRequired()I
    .locals 1

    .prologue
    .line 411
    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->proxyAuthRequried:I

    return v0
.end method

.method public isproxyCredentialsPreDefined()Z
    .locals 1

    .prologue
    .line 403
    iget-boolean v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->credentialsPredefined:Z

    return v0
.end method

.method public proxyCredentialsPreDefined(Z)V
    .locals 0
    .param p1, "predefined"    # Z

    .prologue
    .line 399
    iput-boolean p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->credentialsPredefined:Z

    .line 398
    return-void
.end method

.method public removePackageEntry(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 318
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 319
    return-void

    .line 321
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getUid()I

    move-result v0

    .line 322
    .local v0, "uidToRemove":I
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageUidSet:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 323
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    return-void
.end method

.method public setActivateState(I)V
    .locals 0
    .param p1, "activateState"    # I

    .prologue
    .line 201
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->activateState:I

    .line 200
    return-void
.end method

.method public setAdminId(I)V
    .locals 0
    .param p1, "adminid"    # I

    .prologue
    .line 169
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->admin_id:I

    .line 168
    return-void
.end method

.method public setChainingEnabled(I)V
    .locals 0
    .param p1, "chainingEnabled"    # I

    .prologue
    .line 213
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->chainingEnabled:I

    .line 212
    return-void
.end method

.method public setDefaultInterface(Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultInterface"    # Ljava/lang/String;

    .prologue
    .line 383
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mDefaultInterface:Ljava/lang/String;

    .line 382
    return-void
.end method

.method public setDnsList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p1, "dnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mDnsList:Ljava/util/List;

    .line 249
    return-void
.end method

.method public setInterfaceAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 375
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mInterfaceAddress:Ljava/lang/String;

    .line 374
    return-void
.end method

.method public setInterfaceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mInterfaceName:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setInterfaceType(I)V
    .locals 0
    .param p1, "interfaceType"    # I

    .prologue
    .line 424
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mInterface_type:I

    .line 423
    return-void
.end method

.method public setIsRetry(Z)V
    .locals 0
    .param p1, "set"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mIsRetry:Z

    .line 128
    return-void
.end method

.method public setMarkProfileForDeletion(Z)V
    .locals 0
    .param p1, "markProfileForDeletion"    # Z

    .prologue
    .line 246
    iput-boolean p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->markProfileForDeletion:Z

    .line 245
    return-void
.end method

.method public setNetId(I)V
    .locals 0
    .param p1, "netId"    # I

    .prologue
    .line 161
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mNetId:I

    .line 160
    return-void
.end method

.method public setPacAuthRequired(I)V
    .locals 0
    .param p1, "authRequired"    # I

    .prologue
    .line 407
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->proxyAuthRequried:I

    .line 406
    return-void
.end method

.method public setPacurl(Ljava/lang/String;)V
    .locals 0
    .param p1, "pacUrl"    # Ljava/lang/String;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPacurl:Ljava/lang/String;

    .line 370
    return-void
.end method

.method public setPersonaId(I)V
    .locals 0
    .param p1, "personaId"    # I

    .prologue
    .line 177
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->personaId:I

    .line 176
    return-void
.end method

.method public setProfileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProfileName:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setProtocolType(Ljava/lang/String;)V
    .locals 0
    .param p1, "protocolType"    # Ljava/lang/String;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->protocolType:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public declared-synchronized setProxyInfo(Landroid/net/ProxyInfo;)V
    .locals 1
    .param p1, "proxyinfo"    # Landroid/net/ProxyInfo;

    .prologue
    monitor-enter p0

    .line 343
    :try_start_0
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProxyInfo:Landroid/net/ProxyInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 342
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProxyPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProxyPassword:Ljava/lang/String;

    .line 362
    return-void
.end method

.method public setProxyPort(I)V
    .locals 0
    .param p1, "proxyPort"    # I

    .prologue
    .line 335
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProxyPort:I

    .line 334
    return-void
.end method

.method public setProxyServer(Ljava/lang/String;)V
    .locals 0
    .param p1, "proxyServer"    # Ljava/lang/String;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProxyServer:Ljava/lang/String;

    .line 326
    return-void
.end method

.method public setProxyUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProxyusername:Ljava/lang/String;

    .line 354
    return-void
.end method

.method public setRouteType(I)V
    .locals 0
    .param p1, "routeType"    # I

    .prologue
    .line 185
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->routeType:I

    .line 184
    return-void
.end method

.method public setSearchDomainList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 258
    .local p1, "searchDomainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mSearchDomainList:Ljava/util/List;

    .line 257
    return-void
.end method

.method public setUidPidSearchEnabled(I)V
    .locals 0
    .param p1, "uidPidSearchEnabled"    # I

    .prologue
    .line 224
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->uidPidSearchEnabled:I

    .line 223
    return-void
.end method

.method public setV6InterfaceAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mInterfaceV6Address:Ljava/lang/String;

    .line 390
    return-void
.end method

.method public setVendorPkgName(Ljava/lang/String;)V
    .locals 0
    .param p1, "vendorPkgName"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mVendorPkgName:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setVendorUid(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 233
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mVendorUid:I

    .line 232
    return-void
.end method

.method public setVpnConnectionType(I)V
    .locals 0
    .param p1, "vpnConnectionType"    # I

    .prologue
    .line 242
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->vpnConnectionType:I

    .line 241
    return-void
.end method

.method public setVpnServiceType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 274
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->vpnType:I

    .line 273
    return-void
.end method

.method public setVpnType(I)V
    .locals 0
    .param p1, "clientType"    # I

    .prologue
    .line 416
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mVpnClientType:I

    .line 415
    return-void
.end method
