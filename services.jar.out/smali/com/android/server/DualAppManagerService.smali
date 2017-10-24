.class public Lcom/android/server/DualAppManagerService;
.super Lcom/samsung/android/app/ISemDualAppManager$Stub;
.source "DualAppManagerService.java"


# static fields
.field private static final COMMAND_ADD_WHITELISTE_PKG:Ljava/lang/String; = "addInstalledWhitelistedPkg"

.field private static final COMMAND_PRINT_WHITELISTE_PKG:Ljava/lang/String; = "printInstalledWhitelistedPkg"

.field private static final COMMAND_REMOVE_WHITELISTE_PKG:Ljava/lang/String; = "removeInstalledWhitelistedPkg"

.field private static final COMMAND_RENEW_WHITELISTE_PKG:Ljava/lang/String; = "renewInstalledWhitelistedPkgs"

.field private static final COMMAND_STRING:Ljava/lang/String; = "command"

.field private static final KEY_ALL_INSTALLED_WHITELISTED_PKGS:Ljava/lang/String; = "allInstalledWhitelistedPkgs"

.field private static final KEY_PKG_NAME:Ljava/lang/String; = "pkgName"

.field private static final RESULT_CODE:Ljava/lang/String; = "result_code"

.field private static final RESULT_CODE_FAIL:I = 0x0

.field private static final RESULT_CODE_SUCCESS:I = 0x1

.field private static final RESULT_DESC:Ljava/lang/String; = "result_desc"

.field private static final RESULT_DESC_FAIL:Ljava/lang/String; = "fail"

.field private static final RESULT_DESC_SUCCESS:Ljava/lang/String; = "success"

.field private static final TAG:Ljava/lang/String; = "DualAppManagerService"

.field static mInstalledWhitelistedPkgs:Ljava/util/List;
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
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgs:Ljava/util/List;

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Lcom/samsung/android/app/ISemDualAppManager$Stub;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    .line 40
    iget-object v0, p0, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 41
    iput-object p1, p0, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    .line 39
    :cond_0
    return-void
.end method

.method private addWhitelistedPkg(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 117
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 119
    .local v2, "ret":Landroid/os/Bundle;
    const-string/jumbo v3, "pkgName"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "pkgName":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 121
    const-string/jumbo v3, "result_code"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 122
    const-string/jumbo v3, "result_desc"

    const-string/jumbo v4, "package name is null"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_0
    :goto_0
    return-object v2

    .line 123
    :cond_1
    sget-object v3, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgs:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 124
    const-string/jumbo v3, "result_code"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 125
    const-string/jumbo v3, "result_desc"

    const-string/jumbo v4, "package is already added"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_2
    :try_start_0
    sget-object v3, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgs:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    const-string/jumbo v3, "result_code"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 130
    const-string/jumbo v3, "result_desc"

    const-string/jumbo v4, "success"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "result_code"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 134
    const-string/jumbo v3, "result_desc"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private printInstalledWhitelistedPkg()V
    .locals 5

    .prologue
    .line 167
    const-string/jumbo v2, "DualAppManagerService"

    const-string/jumbo v3, "printInstalledWhitelistedPkg called!"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    sget-object v2, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgs:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "pkg$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 169
    .local v0, "pkg":Ljava/lang/String;
    const-string/jumbo v2, "DualAppManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "installed whitelisted dual app ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 166
    .end local v0    # "pkg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private removeWhitelistedPkg(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 142
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 144
    .local v2, "ret":Landroid/os/Bundle;
    const-string/jumbo v3, "pkgName"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "pkgName":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 146
    const-string/jumbo v3, "result_code"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 147
    const-string/jumbo v3, "result_desc"

    const-string/jumbo v4, "package name is null"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_0
    :goto_0
    return-object v2

    .line 148
    :cond_1
    sget-object v3, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgs:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 149
    const-string/jumbo v3, "result_code"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 150
    const-string/jumbo v3, "result_desc"

    const-string/jumbo v4, "package doesn\'t exist"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_2
    :try_start_0
    sget-object v3, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgs:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    const-string/jumbo v3, "result_code"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 155
    const-string/jumbo v3, "result_desc"

    const-string/jumbo v4, "success"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "result_code"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 159
    const-string/jumbo v3, "result_desc"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private renewWhitelistedPkg(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 104
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 106
    .local v1, "ret":Landroid/os/Bundle;
    sget-object v2, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 107
    const-string/jumbo v2, "allInstalledWhitelistedPkgs"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 108
    .local v0, "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v2, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 110
    const-string/jumbo v2, "result_code"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 111
    const-string/jumbo v2, "result_desc"

    const-string/jumbo v3, "success"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-object v1
.end method


# virtual methods
.method public getAllInstalledWhitelistedPackages()Ljava/util/List;
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
    .line 84
    sget-object v0, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgs:Ljava/util/List;

    return-object v0
.end method

.method public isInstalledWhitelistedPackage(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 91
    .local v0, "installed":Z
    const-string/jumbo v3, "DualAppManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isInstalledWhitelistedPackage. package Name = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sget-object v3, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgs:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "pkg$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 94
    .local v1, "pkg":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    const-string/jumbo v3, "DualAppManagerService"

    const-string/jumbo v4, "Found!"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v3, 0x1

    return v3

    .line 100
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public systemReady()V
    .locals 2

    .prologue
    .line 47
    const-string/jumbo v0, "DualAppManagerService"

    const-string/jumbo v1, "DualAppManagerService ready"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const-string/jumbo v0, "DualAppManagerService"

    const-string/jumbo v1, "systemReady done."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method

.method public declared-synchronized updateDualAppData(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    monitor-enter p0

    .line 54
    const/4 v2, 0x0

    .line 56
    .local v2, "ret":Landroid/os/Bundle;
    :try_start_0
    const-string/jumbo v3, "DualAppManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateDualAppData "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    if-nez p3, :cond_0

    .line 59
    const-string/jumbo v3, "DualAppManagerService"

    const-string/jumbo v4, "updateDualAppData. Bundle is null"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 60
    return-object v6

    .line 63
    :cond_0
    :try_start_1
    const-string/jumbo v3, "command"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 66
    .local v0, "cmd":Ljava/lang/String;
    :try_start_2
    const-string/jumbo v3, "renewInstalledWhitelistedPkgs"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 67
    invoke-direct {p0, p3}, Lcom/android/server/DualAppManagerService;->renewWhitelistedPkg(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .end local v2    # "ret":Landroid/os/Bundle;
    :cond_1
    :goto_0
    monitor-exit p0

    .line 79
    return-object v2

    .line 68
    .restart local v2    # "ret":Landroid/os/Bundle;
    :cond_2
    :try_start_3
    const-string/jumbo v3, "addInstalledWhitelistedPkg"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 69
    invoke-direct {p0, p3}, Lcom/android/server/DualAppManagerService;->addWhitelistedPkg(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .local v2, "ret":Landroid/os/Bundle;
    goto :goto_0

    .line 70
    .local v2, "ret":Landroid/os/Bundle;
    :cond_3
    const-string/jumbo v3, "removeInstalledWhitelistedPkg"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 71
    invoke-direct {p0, p3}, Lcom/android/server/DualAppManagerService;->removeWhitelistedPkg(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .local v2, "ret":Landroid/os/Bundle;
    goto :goto_0

    .line 72
    .local v2, "ret":Landroid/os/Bundle;
    :cond_4
    const-string/jumbo v3, "printInstalledWhitelistedPkg"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    invoke-direct {p0}, Lcom/android/server/DualAppManagerService;->printInstalledWhitelistedPkg()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .end local v0    # "cmd":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
