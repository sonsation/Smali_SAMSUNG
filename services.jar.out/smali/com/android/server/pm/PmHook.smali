.class final Lcom/android/server/pm/PmHook;
.super Ljava/lang/Object;
.source "PmHook.java"


# static fields
.field private static final ACTION_INSTALL_FAILED:Ljava/lang/String; = "android.intent.action.PACKAGE_INSTALL_FAILED"

.field private static final TAG:Ljava/lang/String; = "PM_HOOK"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final auditLogInstallFail(Ljava/lang/String;I)V
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userIdentifier"    # I

    .prologue
    .line 115
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 116
    const-string/jumbo v4, "PackageManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Install Application "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 115
    const/4 v0, 0x3

    const/4 v1, 0x5

    const/4 v2, 0x0

    move v6, p1

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 113
    return-void
.end method

.method static final beginInstallLog(Landroid/content/pm/PackageParser$Package;I)V
    .locals 8
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x5

    const/4 v2, 0x1

    .line 41
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string/jumbo v4, "PackageManagerService"

    .line 42
    const-string/jumbo v1, "Starting to install Application %s version %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move v1, v0

    move v6, p1

    .line 39
    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 37
    return-void
.end method

.method static final checkZippedPackage(Landroid/content/pm/PackageParser$Package;)Z
    .locals 11
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 136
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->isSystemApp()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->isUpdatedSystemApp()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 149
    :cond_0
    return v4

    .line 137
    :cond_1
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/io/File;

    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/oat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "arm"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v4

    .line 138
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/oat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "arm64"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v10

    .line 139
    .local v1, "armPaths":[Ljava/io/File;
    array-length v6, v1

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v0, v1, v5

    .line 140
    .local v0, "armPath":Ljava/io/File;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 141
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move v3, v4

    :goto_1
    if-ge v3, v8, :cond_3

    aget-object v2, v7, v3

    .line 142
    .local v2, "path":Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string/jumbo v9, ".xz"

    invoke-virtual {v2, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 143
    return v10

    .line 141
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 139
    .end local v2    # "path":Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_0
.end method

.method static final installFailLog(Landroid/content/Context;Landroid/content/pm/PackageInfoLite;Ljava/lang/String;I)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pkg"    # Landroid/content/pm/PackageInfoLite;
    .param p2, "installer"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 70
    iget-object v0, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-static {v0, p3}, Lcom/android/server/pm/PmHook;->auditLogInstallFail(Ljava/lang/String;I)V

    .line 71
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PmHook;->sendInstallFailLogToContextware(Landroid/content/Context;Landroid/content/pm/PackageInfoLite;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method static final installFailLog(Landroid/content/Context;Landroid/content/pm/PackageParser$Package;Ljava/lang/String;I)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "installer"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 75
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v0, p3}, Lcom/android/server/pm/PmHook;->auditLogInstallFail(Ljava/lang/String;I)V

    .line 76
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PmHook;->sendInstallFailLogToContextware(Landroid/content/Context;Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method static final installSuccesLog(Ljava/lang/String;I)V
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x5

    .line 62
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 63
    const-string/jumbo v4, "PackageManagerService"

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Install Application "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " succeeded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 61
    const/4 v2, 0x1

    move v1, v0

    move v6, p1

    .line 60
    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 58
    return-void
.end method

.method static final performBootDexoptForce(Ljava/util/ArrayList;Landroid/util/ArraySet;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "sortedPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Package;>;"
    .local p1, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/PackageParser$Package;>;"
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v4, "com.eg.android.AlipayGphone"

    const/4 v5, 0x0

    aput-object v4, v0, v5

    .line 124
    .local v0, "forceDexoptPkgNames":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 125
    .local v1, "forcePkgNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageParser$Package;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 126
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    .line 127
    .local v3, "pkg":Landroid/content/pm/PackageParser$Package;
    iget-object v4, v3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 128
    const-string/jumbo v4, "PM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Adding forceDexopt app "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 122
    .end local v3    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_1
    return-void
.end method

.method static final sendInstallFailLogToContextware(Landroid/content/Context;Landroid/content/pm/PackageInfoLite;Ljava/lang/String;)V
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pkg"    # Landroid/content/pm/PackageInfoLite;
    .param p2, "installer"    # Ljava/lang/String;

    .prologue
    .line 80
    const-string/jumbo v1, "android.intent.action.PACKAGE_INSTALL_FAILED"

    .line 81
    iget-object v2, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    iget v3, p1, Landroid/content/pm/PackageInfoLite;->versionCode:I

    .line 82
    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p2

    .line 80
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/PmHook;->sendLogToContextware(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method static final sendInstallFailLogToContextware(Landroid/content/Context;Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)V
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "installer"    # Ljava/lang/String;

    .prologue
    .line 86
    const-string/jumbo v1, "android.intent.action.PACKAGE_INSTALL_FAILED"

    .line 87
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget v3, p1, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    .line 88
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    move-object v0, p0

    move-object v5, p2

    .line 86
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/PmHook;->sendLogToContextware(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method static final sendLogToContextware(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "versionCode"    # I
    .param p4, "versionName"    # Ljava/lang/String;
    .param p5, "installer"    # Ljava/lang/String;

    .prologue
    .line 91
    return-void
.end method

.method static final signatureVerificationFailure(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 30
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string/jumbo v4, "PackageManagerService"

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Application "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 32
    const-string/jumbo v1, " failed"

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 32
    const-string/jumbo v1, " because of signature verification failure"

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 28
    const/4 v0, 0x3

    .line 29
    const/4 v1, 0x5

    const/4 v2, 0x0

    move v6, p2

    .line 28
    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 26
    return-void
.end method

.method static final uninstallLog(Ljava/lang/String;ZI)V
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "success"    # Z
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x5

    .line 51
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 52
    const-string/jumbo v4, "PackageManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Uninstall Application "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 53
    if-eqz p1, :cond_0

    const-string/jumbo v1, " succeeded"

    .line 52
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 50
    const/4 v2, 0x1

    move v1, v0

    move v6, p2

    .line 49
    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 47
    return-void

    .line 53
    :cond_0
    const-string/jumbo v1, " failed"

    goto :goto_0
.end method
