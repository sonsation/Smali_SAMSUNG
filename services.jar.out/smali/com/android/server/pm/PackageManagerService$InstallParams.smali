.class Lcom/android/server/pm/PackageManagerService$InstallParams;
.super Lcom/android/server/pm/PackageManagerService$HandlerParams;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InstallParams"
.end annotation


# instance fields
.field final certificates:[[Ljava/security/cert/Certificate;

.field final grantedRuntimePermissions:[Ljava/lang/String;

.field installFlags:I

.field final installerPackageName:Ljava/lang/String;

.field private mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field private mRet:I

.field final move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

.field final observer:Landroid/content/pm/IPackageInstallObserver2;

.field final origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

.field final packageAbiOverride:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

.field final volumeUuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$VerificationInfo;Landroid/os/UserHandle;Ljava/lang/String;[Ljava/lang/String;[[Ljava/security/cert/Certificate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "origin"    # Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .param p3, "move"    # Lcom/android/server/pm/PackageManagerService$MoveInfo;
    .param p4, "observer"    # Landroid/content/pm/IPackageInstallObserver2;
    .param p5, "installFlags"    # I
    .param p6, "installerPackageName"    # Ljava/lang/String;
    .param p7, "volumeUuid"    # Ljava/lang/String;
    .param p8, "verificationInfo"    # Lcom/android/server/pm/PackageManagerService$VerificationInfo;
    .param p9, "user"    # Landroid/os/UserHandle;
    .param p10, "packageAbiOverride"    # Ljava/lang/String;
    .param p11, "grantedPermissions"    # [Ljava/lang/String;
    .param p12, "certificates"    # [[Ljava/security/cert/Certificate;

    .prologue
    .line 16689
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 16693
    invoke-direct {p0, p1, p9}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    .line 16694
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    .line 16695
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    .line 16696
    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    .line 16697
    iput p5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 16698
    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    .line 16699
    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->volumeUuid:Ljava/lang/String;

    .line 16700
    iput-object p8, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    .line 16701
    iput-object p10, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    .line 16702
    iput-object p11, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->grantedRuntimePermissions:[Ljava/lang/String;

    .line 16703
    iput-object p12, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->certificates:[[Ljava/security/cert/Certificate;

    .line 16692
    return-void
.end method

.method private installLocationPolicy(Landroid/content/pm/PackageInfoLite;)I
    .locals 14
    .param p1, "pkgLite"    # Landroid/content/pm/PackageInfoLite;

    .prologue
    const/4 v13, 0x2

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 16713
    iget-object v8, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 16714
    .local v8, "packageName":Ljava/lang/String;
    iget v4, p1, Landroid/content/pm/PackageInfoLite;->installLocation:I

    .line 16715
    .local v4, "installLocation":I
    iget v11, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v11, v11, 0x8

    if-eqz v11, :cond_3

    const/4 v6, 0x1

    .line 16717
    .local v6, "onSd":Z
    :goto_0
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v11

    .line 16720
    :try_start_0
    iget-object v12, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v12, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Package;

    .line 16725
    .local v5, "installedPkg":Landroid/content/pm/PackageParser$Package;
    move-object v0, v5

    .line 16726
    .local v0, "dataOwnerPkg":Landroid/content/pm/PackageParser$Package;
    if-nez v5, :cond_0

    .line 16727
    iget-object v12, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v12, v12, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v12, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/PackageSetting;

    .line 16728
    .local v9, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v9, :cond_0

    .line 16729
    iget-object v0, v9, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 16733
    .end local v9    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_0
    if-eqz v0, :cond_2

    .line 16748
    iget v12, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit16 v12, v12, 0x80

    if-eqz v12, :cond_4

    const/4 v2, 0x1

    .line 16750
    .local v2, "downgradeRequested":Z
    :goto_1
    iget-object v12, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v12, v12, 0x2

    if-eqz v12, :cond_5

    const/4 v7, 0x1

    .line 16753
    .local v7, "packageDebuggable":Z
    :goto_2
    if-eqz v2, :cond_1

    sget-boolean v12, Landroid/os/Build;->IS_DEBUGGABLE:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v12, :cond_6

    move v1, v7

    .line 16754
    .local v1, "downgradePermitted":Z
    :cond_1
    :goto_3
    if-nez v1, :cond_2

    .line 16756
    :try_start_1
    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerService;->-wrap26(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageInfoLite;)V
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16764
    .end local v1    # "downgradePermitted":Z
    .end local v2    # "downgradeRequested":Z
    .end local v7    # "packageDebuggable":Z
    :cond_2
    if-eqz v5, :cond_b

    .line 16765
    :try_start_2
    iget v12, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v12, v12, 0x2

    if-eqz v12, :cond_e

    .line 16767
    iget-object v12, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_8

    .line 16768
    if-eqz v6, :cond_7

    .line 16769
    const-string/jumbo v10, "PackageManager"

    const-string/jumbo v12, "Cannot install update to system app on sdcard"

    invoke-static {v10, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16770
    const/4 v10, -0x3

    monitor-exit v11

    return v10

    .line 16715
    .end local v0    # "dataOwnerPkg":Landroid/content/pm/PackageParser$Package;
    .end local v5    # "installedPkg":Landroid/content/pm/PackageParser$Package;
    .end local v6    # "onSd":Z
    :cond_3
    const/4 v6, 0x0

    .restart local v6    # "onSd":Z
    goto :goto_0

    .line 16748
    .restart local v0    # "dataOwnerPkg":Landroid/content/pm/PackageParser$Package;
    .restart local v5    # "installedPkg":Landroid/content/pm/PackageParser$Package;
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "downgradeRequested":Z
    goto :goto_1

    .line 16750
    :cond_5
    const/4 v7, 0x0

    .restart local v7    # "packageDebuggable":Z
    goto :goto_2

    :cond_6
    move v1, v10

    .line 16753
    goto :goto_3

    .line 16757
    .restart local v1    # "downgradePermitted":Z
    :catch_0
    move-exception v3

    .line 16758
    .local v3, "e":Lcom/android/server/pm/PackageManagerException;
    :try_start_3
    const-string/jumbo v10, "PackageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Downgrade detected: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 16759
    const/4 v10, -0x7

    monitor-exit v11

    return v10

    .end local v1    # "downgradePermitted":Z
    .end local v2    # "downgradeRequested":Z
    .end local v3    # "e":Lcom/android/server/pm/PackageManagerException;
    .end local v7    # "packageDebuggable":Z
    :cond_7
    monitor-exit v11

    .line 16772
    return v10

    .line 16774
    :cond_8
    if-eqz v6, :cond_9

    monitor-exit v11

    .line 16776
    return v13

    .line 16779
    :cond_9
    if-ne v4, v10, :cond_a

    monitor-exit v11

    .line 16781
    return v10

    .line 16782
    :cond_a
    if-ne v4, v13, :cond_c

    :cond_b
    monitor-exit v11

    .line 16800
    if-eqz v6, :cond_f

    .line 16801
    return v13

    .line 16786
    :cond_c
    :try_start_4
    invoke-static {v5}, Lcom/android/server/pm/PackageManagerService;->-wrap7(Landroid/content/pm/PackageParser$Package;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v12

    if-eqz v12, :cond_d

    monitor-exit v11

    .line 16787
    return v13

    :cond_d
    monitor-exit v11

    .line 16789
    return v10

    .line 16794
    :cond_e
    const/4 v10, -0x4

    monitor-exit v11

    return v10

    .line 16717
    .end local v0    # "dataOwnerPkg":Landroid/content/pm/PackageParser$Package;
    .end local v5    # "installedPkg":Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    .line 16803
    .restart local v0    # "dataOwnerPkg":Landroid/content/pm/PackageParser$Package;
    .restart local v5    # "installedPkg":Landroid/content/pm/PackageParser$Package;
    :cond_f
    iget v10, p1, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    return v10
.end method


# virtual methods
.method handleReturnCode()V
    .locals 3

    .prologue
    .line 17183
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    if-eqz v0, :cond_0

    .line 17184
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->-wrap38(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    .line 17179
    :cond_0
    return-void
.end method

.method handleServiceError()V
    .locals 1

    .prologue
    .line 17190
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, p0}, Lcom/android/server/pm/PackageManagerService;->-wrap13(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 17191
    const/16 v0, -0x6e

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    .line 17189
    return-void
.end method

.method public handleStartCopy()V
    .locals 39
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 16813
    const/16 v28, 0x1

    .line 16816
    .local v28, "ret":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    if-eqz v4, :cond_0

    .line 16817
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    if-eqz v4, :cond_b

    .line 16818
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v4, v4, 0x10

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 16819
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, -0x9

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 16828
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_d

    const/16 v21, 0x1

    .line 16829
    .local v21, "onSd":Z
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_e

    const/16 v20, 0x1

    .line 16830
    .local v20, "onInt":Z
    :goto_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit16 v4, v4, 0x800

    if-eqz v4, :cond_f

    const/4 v13, 0x1

    .line 16831
    .local v13, "ephemeral":Z
    :goto_3
    const/16 v22, 0x0

    .line 16834
    .local v22, "pkgLite":Landroid/content/pm/PackageInfoLite;
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16835
    .local v5, "packageFileTemp":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get1(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    invoke-interface {v4, v6, v7, v8}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v23

    .line 16841
    .local v23, "pkgLiteTemp":Landroid/content/pm/PackageInfoLite;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v23

    iget-object v6, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/android/server/pm/PackageManagerService;->-wrap8(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 16842
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v23

    iget-object v6, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 16843
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_10

    const/4 v7, 0x1

    .line 16844
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    .line 16842
    invoke-static/range {v4 .. v9}, Lcom/android/server/pm/PackageManagerService;->-wrap6(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;Ljava/lang/String;ZILjava/lang/String;)Z

    move-result v4

    .line 16841
    if-eqz v4, :cond_11

    .line 16845
    const/16 v28, -0x75

    .line 16904
    .end local v22    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    :cond_1
    :goto_5
    const/4 v4, 0x1

    move/from16 v0, v28

    if-ne v0, v4, :cond_2

    .line 16905
    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    move/from16 v17, v0

    .line 16906
    .local v17, "loc":I
    const/4 v4, -0x3

    move/from16 v0, v17

    if-ne v0, v4, :cond_14

    .line 16907
    const/16 v28, -0x13

    .line 16946
    .end local v17    # "loc":I
    :cond_2
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerService;->-wrap13(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v11

    .line 16947
    .local v11, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 16949
    const/4 v4, 0x1

    move/from16 v0, v28

    if-ne v0, v4, :cond_8

    .line 16952
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v38

    .line 16953
    .local v38, "verifierUser":Landroid/os/UserHandle;
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v38

    if-ne v0, v4, :cond_3

    .line 16954
    sget-object v38, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 16961
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-static {v4, v6}, Lcom/android/server/pm/PackageManagerService;->-wrap21(Lcom/android/server/pm/PackageManagerService;I)Ljava/util/ArrayList;

    move-result-object v26

    .line 16968
    .local v26, "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageManagerService$VerifierPackage;>;"
    const/16 v27, 0x1

    .line 16972
    .local v27, "requiresVerificationForPersona":Z
    sget-object v4, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-eqz v4, :cond_4

    .line 16973
    sget-object v4, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 16974
    move-object/from16 v0, v22

    iget-object v7, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 16973
    invoke-virtual {v4, v6, v7}, Lcom/android/server/pm/PersonaManagerService;->needVerificationForPackage(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 16982
    :cond_4
    :goto_7
    iget v4, v11, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    const/high16 v6, 0x1000000

    and-int/2addr v4, v6

    if-eqz v4, :cond_1e

    const/4 v15, 0x1

    .line 16987
    .local v15, "isOpenThemePackage":Z
    :goto_8
    const/16 v16, 0x0

    .line 16988
    .local v16, "isSPRInstallerPackages":Z
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v6, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v4, v6}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 16989
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    const-string/jumbo v6, "com.sprint.w.installer"

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 16990
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    const-string/jumbo v6, "com.sprint.ce.updater"

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v16

    .line 16991
    .end local v16    # "isSPRInstallerPackages":Z
    :goto_9
    const-string/jumbo v4, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isSPRInstallerPackages = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", installerPackageName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16995
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->existing:Z

    if-nez v4, :cond_6

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 16996
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual/range {v38 .. v38}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    invoke-static {v4, v6, v7}, Lcom/android/server/pm/PackageManagerService;->-wrap9(Lcom/android/server/pm/PackageManagerService;II)Z

    move-result v4

    .line 16995
    if-eqz v4, :cond_6

    if-eqz v27, :cond_6

    .line 16998
    if-eqz v15, :cond_20

    .line 17122
    :cond_6
    if-eqz v15, :cond_7

    .line 17123
    const-string/jumbo v4, "PackageManager"

    const-string/jumbo v6, "Themes INSTALL_SKIP_VERIFICATION"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17127
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get1(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v11, v4, v6}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I

    move-result v28

    .line 17132
    .end local v15    # "isOpenThemePackage":Z
    .end local v26    # "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageManagerService$VerifierPackage;>;"
    .end local v27    # "requiresVerificationForPersona":Z
    .end local v38    # "verifierUser":Landroid/os/UserHandle;
    :cond_8
    :goto_a
    const/4 v4, 0x1

    move/from16 v0, v28

    if-ne v0, v4, :cond_29

    .line 17134
    :try_start_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_9

    .line 17135
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-wrap0(Lcom/android/server/pm/PackageManagerService;)Landroid/content/IHarmonyEAS;

    .line 17138
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->-get5()Landroid/content/IHarmonyEAS;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 17139
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->-get5()Landroid/content/IHarmonyEAS;

    move-result-object v4

    move-object/from16 v0, v23

    iget-object v6, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    const/4 v7, 0x1

    const/4 v8, -0x1

    invoke-interface {v4, v6, v7, v8}, Landroid/content/IHarmonyEAS;->setInstallationPackageUnknown(Ljava/lang/String;II)V

    .line 17143
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    if-eqz v4, :cond_a

    .line 17159
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    const-string/jumbo v6, "packageinstaller"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 17160
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-wrap0(Lcom/android/server/pm/PackageManagerService;)Landroid/content/IHarmonyEAS;

    .line 17161
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->-get5()Landroid/content/IHarmonyEAS;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 17162
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->-get5()Landroid/content/IHarmonyEAS;

    move-result-object v4

    move-object/from16 v0, v23

    iget-object v6, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 17163
    const/4 v7, 0x1

    const/4 v8, -0x1

    .line 17162
    invoke-interface {v4, v6, v7, v8}, Landroid/content/IHarmonyEAS;->setInstallationPackageUnknown(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 17175
    :cond_a
    :goto_b
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    .line 16812
    return-void

    .line 16820
    .end local v5    # "packageFileTemp":Ljava/io/File;
    .end local v11    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v13    # "ephemeral":Z
    .end local v20    # "onInt":Z
    .end local v21    # "onSd":Z
    .end local v23    # "pkgLiteTemp":Landroid/content/pm/PackageInfoLite;
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->cid:Ljava/lang/String;

    if-eqz v4, :cond_c

    .line 16821
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v4, v4, 0x8

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 16822
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, -0x11

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto/16 :goto_0

    .line 16824
    :cond_c
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Invalid stage location"

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 16828
    :cond_d
    const/16 v21, 0x0

    .restart local v21    # "onSd":Z
    goto/16 :goto_1

    .line 16829
    :cond_e
    const/16 v20, 0x0

    .restart local v20    # "onInt":Z
    goto/16 :goto_2

    .line 16830
    :cond_f
    const/4 v13, 0x0

    .restart local v13    # "ephemeral":Z
    goto/16 :goto_3

    .line 16843
    .restart local v5    # "packageFileTemp":Ljava/io/File;
    .restart local v22    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .restart local v23    # "pkgLiteTemp":Landroid/content/pm/PackageInfoLite;
    :cond_10
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 16852
    :cond_11
    if-eqz v20, :cond_12

    if-eqz v21, :cond_12

    .line 16854
    const-string/jumbo v4, "PackageManager"

    const-string/jumbo v6, "Conflicting flags specified for installing on both internal and external"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16855
    const/16 v28, -0x13

    goto/16 :goto_5

    .line 16856
    :cond_12
    if-eqz v21, :cond_13

    if-eqz v13, :cond_13

    .line 16857
    const-string/jumbo v4, "PackageManager"

    const-string/jumbo v6, "Conflicting flags specified for installing ephemeral on external"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16858
    const/16 v28, -0x13

    goto/16 :goto_5

    .line 16860
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get1(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 16861
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    .line 16860
    invoke-interface {v4, v6, v7, v8}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v22

    .line 16871
    .local v22, "pkgLite":Landroid/content/pm/PackageInfoLite;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    if-nez v4, :cond_1

    move-object/from16 v0, v22

    iget v4, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 16872
    const/4 v6, -0x1

    .line 16871
    if-ne v4, v6, :cond_1

    .line 16874
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v29

    .line 16876
    .local v29, "storage":Landroid/os/storage/StorageManager;
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    .line 16875
    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v18

    .line 16878
    .local v18, "lowThreshold":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get1(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    .line 16879
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->isForwardLocked()Z

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    .line 16878
    invoke-interface {v4, v6, v7, v8}, Lcom/android/internal/app/IMediaContainerService;->calculateInstalledSize(Ljava/lang/String;ZLjava/lang/String;)J

    move-result-wide v30

    .line 16882
    .local v30, "sizeBytes":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    add-long v6, v30, v18

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v6, v7}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;J)V

    .line 16883
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get1(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    .line 16884
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    .line 16883
    invoke-interface {v4, v6, v7, v8}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;
    :try_end_1
    .catch Lcom/android/internal/os/InstallerConnection$InstallerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v22

    .line 16896
    :goto_c
    move-object/from16 v0, v22

    iget v4, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 16897
    const/4 v6, -0x6

    .line 16896
    if-ne v4, v6, :cond_1

    .line 16899
    const/4 v4, -0x1

    .line 16898
    move-object/from16 v0, v22

    iput v4, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    goto/16 :goto_5

    .line 16885
    :catch_0
    move-exception v12

    .line 16886
    .local v12, "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    const-string/jumbo v4, "PackageManager"

    const-string/jumbo v6, "Failed to free cache"

    invoke-static {v4, v6, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 16908
    .end local v12    # "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    .end local v18    # "lowThreshold":J
    .end local v22    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .end local v29    # "storage":Landroid/os/storage/StorageManager;
    .end local v30    # "sizeBytes":J
    .restart local v17    # "loc":I
    :cond_14
    const/4 v4, -0x4

    move/from16 v0, v17

    if-ne v0, v4, :cond_15

    .line 16909
    const/16 v28, -0x1

    goto/16 :goto_6

    .line 16910
    :cond_15
    const/4 v4, -0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_16

    .line 16911
    const/16 v28, -0x4

    goto/16 :goto_6

    .line 16912
    :cond_16
    const/4 v4, -0x2

    move/from16 v0, v17

    if-ne v0, v4, :cond_17

    .line 16913
    const/16 v28, -0x2

    goto/16 :goto_6

    .line 16914
    :cond_17
    const/4 v4, -0x6

    move/from16 v0, v17

    if-ne v0, v4, :cond_18

    .line 16915
    const/16 v28, -0x3

    goto/16 :goto_6

    .line 16916
    :cond_18
    const/4 v4, -0x5

    move/from16 v0, v17

    if-ne v0, v4, :cond_19

    .line 16917
    const/16 v28, -0x14

    goto/16 :goto_6

    .line 16920
    :cond_19
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerService$InstallParams;->installLocationPolicy(Landroid/content/pm/PackageInfoLite;)I

    move-result v17

    .line 16921
    const/4 v4, -0x7

    move/from16 v0, v17

    if-ne v0, v4, :cond_1a

    .line 16922
    const/16 v28, -0x19

    goto/16 :goto_6

    .line 16923
    :cond_1a
    if-nez v21, :cond_2

    if-nez v20, :cond_2

    .line 16925
    const/4 v4, 0x2

    move/from16 v0, v17

    if-ne v0, v4, :cond_1b

    .line 16927
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v4, v4, 0x8

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 16928
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, -0x11

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto/16 :goto_6

    .line 16929
    :cond_1b
    const/4 v4, 0x3

    move/from16 v0, v17

    if-ne v0, v4, :cond_1c

    .line 16933
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit16 v4, v4, 0x800

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 16934
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, -0x19

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto/16 :goto_6

    .line 16939
    :cond_1c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v4, v4, 0x10

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 16940
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, -0x9

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto/16 :goto_6

    .line 16975
    .end local v17    # "loc":I
    .restart local v11    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .restart local v26    # "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageManagerService$VerifierPackage;>;"
    .restart local v27    # "requiresVerificationForPersona":Z
    .restart local v38    # "verifierUser":Landroid/os/UserHandle;
    :cond_1d
    const-string/jumbo v4, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Skipping verification for Persona "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 16976
    const-string/jumbo v7, " for package "

    .line 16975
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 16976
    move-object/from16 v0, v22

    iget-object v7, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 16975
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16977
    const/16 v27, 0x0

    goto/16 :goto_7

    .line 16982
    :cond_1e
    const/4 v15, 0x0

    .restart local v15    # "isOpenThemePackage":Z
    goto/16 :goto_8

    .line 16989
    .restart local v16    # "isSPRInstallerPackages":Z
    :cond_1f
    const/16 v16, 0x1

    goto/16 :goto_9

    .line 16999
    .end local v16    # "isSPRInstallerPackages":Z
    :cond_20
    if-nez v16, :cond_6

    .line 17000
    new-instance v34, Landroid/content/Intent;

    .line 17001
    const-string/jumbo v4, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    .line 17000
    move-object/from16 v0, v34

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17002
    .local v34, "verification":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 17003
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 17004
    const-string/jumbo v6, "application/vnd.android.package-archive"

    .line 17003
    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 17005
    const/4 v4, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 17010
    invoke-virtual/range {v38 .. v38}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 17011
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 17012
    const-string/jumbo v6, "application/vnd.android.package-archive"

    invoke-virtual/range {v38 .. v38}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    const/4 v8, 0x0

    .line 17011
    move-object/from16 v0, v34

    invoke-static {v4, v0, v6, v8, v7}, Lcom/android/server/pm/PackageManagerService;->-wrap23(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v25

    .line 17025
    .local v25, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get9(Lcom/android/server/pm/PackageManagerService;)I

    move-result v35

    add-int/lit8 v6, v35, 0x1

    invoke-static {v4, v6}, Lcom/android/server/pm/PackageManagerService;->-set2(Lcom/android/server/pm/PackageManagerService;I)I

    .line 17027
    .local v35, "verificationId":I
    const-string/jumbo v4, "android.content.pm.extra.VERIFICATION_ID"

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 17029
    const-string/jumbo v4, "android.content.pm.extra.VERIFICATION_INSTALLER_PACKAGE"

    .line 17030
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    .line 17029
    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17032
    const-string/jumbo v4, "android.content.pm.extra.VERIFICATION_INSTALL_FLAGS"

    .line 17033
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 17032
    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 17035
    const-string/jumbo v4, "android.content.pm.extra.VERIFICATION_PACKAGE_NAME"

    .line 17036
    move-object/from16 v0, v22

    iget-object v6, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 17035
    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17038
    const-string/jumbo v4, "android.content.pm.extra.VERIFICATION_VERSION_CODE"

    .line 17039
    move-object/from16 v0, v22

    iget v6, v0, Landroid/content/pm/PackageInfoLite;->versionCode:I

    .line 17038
    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 17042
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    if-eqz v4, :cond_27

    .line 17043
    const-string/jumbo v4, "KNOXVerificationInstallerUid"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v6, v6, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->installerUid:I

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 17047
    :goto_e
    const-string/jumbo v4, "KNOXVerificationPackagePath"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17050
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    if-eqz v4, :cond_24

    .line 17051
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUri:Landroid/net/Uri;

    if-eqz v4, :cond_21

    .line 17052
    const-string/jumbo v4, "android.intent.extra.ORIGINATING_URI"

    .line 17053
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUri:Landroid/net/Uri;

    .line 17052
    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 17055
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->referrer:Landroid/net/Uri;

    if-eqz v4, :cond_22

    .line 17056
    const-string/jumbo v4, "android.intent.extra.REFERRER"

    .line 17057
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->referrer:Landroid/net/Uri;

    .line 17056
    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 17059
    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v4, v4, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUid:I

    if-ltz v4, :cond_23

    .line 17060
    const-string/jumbo v4, "android.intent.extra.ORIGINATING_UID"

    .line 17061
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v6, v6, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUid:I

    .line 17060
    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 17063
    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v4, v4, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->installerUid:I

    if-ltz v4, :cond_24

    .line 17064
    const-string/jumbo v4, "android.content.pm.extra.VERIFICATION_INSTALLER_UID"

    .line 17065
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v6, v6, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->installerUid:I

    .line 17064
    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 17069
    :cond_24
    new-instance v36, Lcom/android/server/pm/PackageVerificationState;

    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-direct {v0, v1, v11}, Lcom/android/server/pm/PackageVerificationState;-><init>(ILcom/android/server/pm/PackageManagerService$InstallArgs;)V

    .line 17071
    .local v36, "verificationState":Lcom/android/server/pm/PackageVerificationState;
    move-object/from16 v0, v36

    move-object/from16 v1, v26

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageVerificationState;->initialize(Ljava/util/ArrayList;Landroid/content/Intent;)V

    .line 17073
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 17075
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, v36

    invoke-static {v4, v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->-wrap22(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageInfoLite;Ljava/util/List;Lcom/android/server/pm/PackageVerificationState;)Ljava/util/List;

    move-result-object v33

    .line 17082
    .local v33, "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v33, :cond_25

    .line 17083
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v10

    .line 17084
    .local v10, "N":I
    if-nez v10, :cond_28

    .line 17085
    const-string/jumbo v4, "PackageManager"

    const-string/jumbo v6, "Additional verifiers required, but none installed."

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17086
    const/16 v28, -0x16

    .line 17098
    .end local v10    # "N":I
    :cond_25
    const/4 v4, 0x1

    move/from16 v0, v28

    if-ne v0, v4, :cond_8

    .line 17099
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_8

    .line 17101
    const-string/jumbo v4, "verification"

    const-wide/32 v6, 0x40000

    .line 17100
    move/from16 v0, v35

    invoke-static {v6, v7, v4, v0}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 17107
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v6, 0x1

    move-object/from16 v0, v36

    invoke-static {v4, v0, v6}, Lcom/android/server/pm/PackageManagerService;->-wrap11(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageVerificationState;Z)Z

    .line 17113
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    goto/16 :goto_a

    .line 17014
    .end local v25    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v33    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v35    # "verificationId":I
    .end local v36    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    :cond_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 17015
    const-string/jumbo v6, "application/vnd.android.package-archive"

    invoke-virtual/range {v38 .. v38}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    const/16 v8, 0x200

    .line 17014
    move-object/from16 v0, v34

    invoke-static {v4, v0, v6, v8, v7}, Lcom/android/server/pm/PackageManagerService;->-wrap23(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v25

    .restart local v25    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    goto/16 :goto_d

    .line 17045
    .restart local v35    # "verificationId":I
    :cond_27
    const-string/jumbo v4, "KNOXVerificationInstallerUid"

    const/4 v6, -0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_e

    .line 17088
    .restart local v10    # "N":I
    .restart local v33    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v36    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    :cond_28
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_f
    if-ge v14, v10, :cond_25

    .line 17089
    move-object/from16 v0, v33

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/content/ComponentName;

    .line 17091
    .local v37, "verifierComponent":Landroid/content/ComponentName;
    new-instance v32, Landroid/content/Intent;

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 17092
    .local v32, "sufficientIntent":Landroid/content/Intent;
    move-object/from16 v0, v32

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 17093
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v32

    move-object/from16 v1, v38

    invoke-virtual {v4, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 17088
    add-int/lit8 v14, v14, 0x1

    goto :goto_f

    .line 17167
    .end local v10    # "N":I
    .end local v14    # "i":I
    .end local v15    # "isOpenThemePackage":Z
    .end local v25    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v26    # "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageManagerService$VerifierPackage;>;"
    .end local v27    # "requiresVerificationForPersona":Z
    .end local v32    # "sufficientIntent":Landroid/content/Intent;
    .end local v33    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v34    # "verification":Landroid/content/Intent;
    .end local v35    # "verificationId":I
    .end local v36    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    .end local v37    # "verifierComponent":Landroid/content/ComponentName;
    .end local v38    # "verifierUser":Landroid/os/UserHandle;
    :catch_1
    move-exception v24

    .line 17168
    .local v24, "rE":Landroid/os/RemoteException;
    invoke-virtual/range {v24 .. v24}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_b

    .line 17171
    .end local v24    # "rE":Landroid/os/RemoteException;
    :cond_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    move-object/from16 v0, v23

    invoke-static {v4, v0, v6, v7}, Lcom/android/server/pm/PmHook;->installFailLog(Landroid/content/Context;Landroid/content/pm/PackageInfoLite;Ljava/lang/String;I)V

    goto/16 :goto_b
.end method

.method public isForwardLocked()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 17195
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 16708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "InstallParams{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 16709
    const-string/jumbo v1, " file="

    .line 16708
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 16709
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    .line 16708
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 16709
    const-string/jumbo v1, " cid="

    .line 16708
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 16709
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$OriginInfo;->cid:Ljava/lang/String;

    .line 16708
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 16709
    const-string/jumbo v1, "}"

    .line 16708
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
