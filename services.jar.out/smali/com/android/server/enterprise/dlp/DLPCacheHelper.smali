.class Lcom/android/server/enterprise/dlp/DLPCacheHelper;
.super Ljava/lang/Object;
.source "DLPCacheHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DLPCacheHelper"

.field private static mUserCacheMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/dlp/DLPCache;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDlpStorageHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/dlp/DLPCacheHelper;->mUserCacheMap:Ljava/util/HashMap;

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;)V
    .locals 1
    .param p1, "dlpStorageHelper"    # Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/dlp/DLPCacheHelper;->mDlpStorageHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    .line 25
    iput-object p1, p0, Lcom/android/server/enterprise/dlp/DLPCacheHelper;->mDlpStorageHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    .line 24
    return-void
.end method


# virtual methods
.method public getDLPCache(I)Lcom/android/server/enterprise/dlp/DLPCache;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 97
    sget-object v0, Lcom/android/server/enterprise/dlp/DLPCacheHelper;->mUserCacheMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    sget-object v0, Lcom/android/server/enterprise/dlp/DLPCacheHelper;->mUserCacheMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/dlp/DLPCache;

    return-object v0

    .line 100
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized updateUserDLPCacheFromDB(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 14
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    monitor-enter p0

    .line 29
    const/4 v2, 0x0

    .line 30
    .local v2, "dlpCache":Lcom/android/server/enterprise/dlp/DLPCache;
    :try_start_0
    iget v10, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 32
    .local v10, "userId":I
    iget-object v11, p0, Lcom/android/server/enterprise/dlp/DLPCacheHelper;->mDlpStorageHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    invoke-virtual {v11, p1}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getDLPConfig(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;

    move-result-object v1

    .line 33
    .local v1, "config":Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 34
    const-string/jumbo v11, "DLPCacheHelper"

    const-string/jumbo v12, "config is null"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 35
    const/4 v11, 0x0

    monitor-exit p0

    return v11

    .line 37
    :cond_0
    const/4 v6, 0x0

    .line 39
    .local v6, "isActivated":Z
    :try_start_1
    const-string/jumbo v11, "Activate"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 40
    const-string/jumbo v11, "Activate"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 43
    .end local v6    # "isActivated":Z
    :cond_1
    if-nez v6, :cond_2

    .line 44
    const-string/jumbo v11, "DLPCacheHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "DLP is not activated for user: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", removing cache!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    sget-object v11, Lcom/android/server/enterprise/dlp/DLPCacheHelper;->mUserCacheMap:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 46
    const/4 v11, 0x1

    monitor-exit p0

    return v11

    .line 48
    :cond_2
    :try_start_2
    new-instance v3, Lcom/android/server/enterprise/dlp/DLPCache;

    invoke-direct {v3}, Lcom/android/server/enterprise/dlp/DLPCache;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 50
    .end local v2    # "dlpCache":Lcom/android/server/enterprise/dlp/DLPCache;
    .local v3, "dlpCache":Lcom/android/server/enterprise/dlp/DLPCache;
    :try_start_3
    iput-boolean v6, v3, Lcom/android/server/enterprise/dlp/DLPCache;->isActivated:Z

    .line 51
    const-string/jumbo v11, "CREATE"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 52
    const-string/jumbo v11, "CREATE"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v3, Lcom/android/server/enterprise/dlp/DLPCache;->auditCreate:Z

    .line 53
    const-string/jumbo v11, "DLPCacheHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "DLP cache audit log create updated with: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, v3, Lcom/android/server/enterprise/dlp/DLPCache;->auditCreate:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_3
    const-string/jumbo v11, "OPEN"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 56
    const-string/jumbo v11, "OPEN"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v3, Lcom/android/server/enterprise/dlp/DLPCache;->auditOpen:Z

    .line 57
    const-string/jumbo v11, "DLPCacheHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "DLP cache audit log open updated with: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, v3, Lcom/android/server/enterprise/dlp/DLPCache;->auditOpen:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_4
    const-string/jumbo v11, "RENAME"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 60
    const-string/jumbo v11, "RENAME"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v3, Lcom/android/server/enterprise/dlp/DLPCache;->auditRename:Z

    .line 61
    const-string/jumbo v11, "DLPCacheHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "DLP cache audit log rename updated with: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, v3, Lcom/android/server/enterprise/dlp/DLPCache;->auditRename:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_5
    const-string/jumbo v11, "EXPIRED"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 64
    const-string/jumbo v11, "EXPIRED"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v3, Lcom/android/server/enterprise/dlp/DLPCache;->auditExpired:Z

    .line 65
    const-string/jumbo v11, "DLPCacheHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "DLP cache audit log expired being updated with: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, v3, Lcom/android/server/enterprise/dlp/DLPCache;->auditExpired:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_6
    const-string/jumbo v11, "UNAUTHORIZED"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 68
    const-string/jumbo v11, "UNAUTHORIZED"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v3, Lcom/android/server/enterprise/dlp/DLPCache;->auditUnauthorized:Z

    .line 69
    const-string/jumbo v11, "DLPCacheHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "DLP cache audit log unauthorized updated with: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, v3, Lcom/android/server/enterprise/dlp/DLPCache;->auditUnauthorized:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_7
    iget-object v11, p0, Lcom/android/server/enterprise/dlp/DLPCacheHelper;->mDlpStorageHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    invoke-virtual {v11, p1}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getWhitelistApps(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v7

    .line 73
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/dlp/DLPPackageInfo;>;"
    if-eqz v7, :cond_a

    .line 74
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "dpi$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/dlp/DLPPackageInfo;

    .line 75
    .local v4, "dpi":Lcom/samsung/android/knox/dlp/DLPPackageInfo;
    if-eqz v4, :cond_8

    .line 78
    iget-object v0, v4, Lcom/samsung/android/knox/dlp/DLPPackageInfo;->appIdentity:Lcom/samsung/android/knox/AppIdentity;

    .line 79
    .local v0, "ai":Lcom/samsung/android/knox/AppIdentity;
    if-eqz v0, :cond_8

    .line 80
    invoke-virtual {v0}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 81
    .local v8, "packageName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 82
    .local v9, "type":I
    iget-object v11, v4, Lcom/samsung/android/knox/dlp/DLPPackageInfo;->extras:Landroid/os/Bundle;

    if-eqz v11, :cond_9

    iget-object v11, v4, Lcom/samsung/android/knox/dlp/DLPPackageInfo;->extras:Landroid/os/Bundle;

    const-string/jumbo v12, "Type"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_9

    .line 83
    const/4 v9, 0x1

    .line 85
    :cond_9
    const-string/jumbo v11, "DLPCacheHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Adding/Updating DLP cache with whitelisted package: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " Type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v11, v3, Lcom/android/server/enterprise/dlp/DLPCache;->mWhitelistedPkgs:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0    # "ai":Lcom/samsung/android/knox/AppIdentity;
    .end local v4    # "dpi":Lcom/samsung/android/knox/dlp/DLPPackageInfo;
    .end local v5    # "dpi$iterator":Ljava/util/Iterator;
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/dlp/DLPPackageInfo;>;"
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "type":I
    :catchall_0
    move-exception v11

    move-object v2, v3

    .end local v1    # "config":Landroid/os/Bundle;
    .end local v3    # "dlpCache":Lcom/android/server/enterprise/dlp/DLPCache;
    .end local v10    # "userId":I
    :goto_1
    monitor-exit p0

    throw v11

    .line 91
    .restart local v1    # "config":Landroid/os/Bundle;
    .restart local v3    # "dlpCache":Lcom/android/server/enterprise/dlp/DLPCache;
    .restart local v7    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/dlp/DLPPackageInfo;>;"
    .restart local v10    # "userId":I
    :cond_a
    :try_start_4
    const-string/jumbo v11, "DLPCacheHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Updating DLP cache for userId: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    sget-object v11, Lcom/android/server/enterprise/dlp/DLPCacheHelper;->mUserCacheMap:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 93
    const/4 v11, 0x1

    monitor-exit p0

    return v11

    .end local v1    # "config":Landroid/os/Bundle;
    .end local v3    # "dlpCache":Lcom/android/server/enterprise/dlp/DLPCache;
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/dlp/DLPPackageInfo;>;"
    .end local v10    # "userId":I
    .restart local v2    # "dlpCache":Lcom/android/server/enterprise/dlp/DLPCache;
    :catchall_1
    move-exception v11

    goto :goto_1
.end method
