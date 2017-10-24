.class Lcom/android/server/SdpManagerService$SecureFileSystemManager;
.super Ljava/lang/Object;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecureFileSystemManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;
    }
.end annotation


# static fields
.field private static final FS_TYPE:I = 0x2

.field private static final SECURE_FS_CURRENT_VERSION:I = 0x1

.field private static final SECURE_FS_VERSION_1:I = 0x1

.field private static final STATE_ACTIVATED:I = 0x1

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_NOT_READY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SecureFileSystem"


# instance fields
.field defaultApps:[Ljava/lang/String;

.field private mDB:Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;

.field private mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;

.field private mKeyMgnt:Lcom/sec/knox/container/util/KeyManagementUtil;

.field private mStatus:I

.field private mTimaHelper:Lcom/android/server/pm/TimaHelper;

.field private sContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/server/SdpManagerService;

.field timaVersion20:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/server/SdpManagerService$SecureFileSystemManager;ILjava/lang/String;)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->createPkgDir(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/SdpManagerService$SecureFileSystemManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->isActivated()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/SdpManagerService$SecureFileSystemManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mount()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/SdpManagerService$SecureFileSystemManager;ILjava/lang/String;)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->removePkgDir(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/SdpManagerService$SecureFileSystemManager;I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->setBaseDataUserDir(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/SdpManagerService$SecureFileSystemManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->systemReady()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/server/SdpManagerService$SecureFileSystemManager;I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->systemReady(I)Z

    move-result v0

    return v0
.end method

.method private constructor <init>(Lcom/android/server/SdpManagerService;Landroid/content/Context;Lcom/android/server/pm/TimaHelper;Lcom/sec/knox/container/util/KeyManagementUtil;Lcom/sec/knox/container/util/EnterprisePartitionManager;)V
    .locals 5
    .param p1, "this$0"    # Lcom/android/server/SdpManagerService;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "timaHelper"    # Lcom/android/server/pm/TimaHelper;
    .param p4, "keyMgnt"    # Lcom/sec/knox/container/util/KeyManagementUtil;
    .param p5, "epm"    # Lcom/sec/knox/container/util/EnterprisePartitionManager;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3635
    iput-object p1, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->this$0:Lcom/android/server/SdpManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3611
    iput-object v3, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    .line 3612
    iput-object v3, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mKeyMgnt:Lcom/sec/knox/container/util/KeyManagementUtil;

    .line 3613
    iput-object v3, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;

    .line 3614
    new-instance v2, Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;

    invoke-direct {v2, p0, v3}, Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;-><init>(Lcom/android/server/SdpManagerService$SecureFileSystemManager;Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;)V

    iput-object v2, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mDB:Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;

    .line 3616
    iput-boolean v4, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->timaVersion20:Z

    .line 3621
    iput v4, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mStatus:I

    .line 3789
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 3790
    const-string/jumbo v3, "com.android.bluetooth"

    aput-object v3, v2, v4

    .line 3789
    iput-object v2, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->defaultApps:[Ljava/lang/String;

    .line 3637
    iput-object p2, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->sContext:Landroid/content/Context;

    .line 3638
    iput-object p3, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    .line 3639
    iput-object p4, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mKeyMgnt:Lcom/sec/knox/container/util/KeyManagementUtil;

    .line 3640
    iput-object p5, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;

    .line 3643
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3644
    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v2

    invoke-interface {v2}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "2.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->timaVersion20:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3636
    :cond_0
    :goto_0
    return-void

    .line 3647
    :catch_0
    move-exception v0

    .line 3648
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3649
    const-string/jumbo v2, "SecureFileSystem"

    const-string/jumbo v3, "failed to get TIMA version."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3645
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 3646
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "SecureFileSystem"

    const-string/jumbo v3, "failed to talk with TIMA service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/android/server/SdpManagerService;Landroid/content/Context;Lcom/android/server/pm/TimaHelper;Lcom/sec/knox/container/util/KeyManagementUtil;Lcom/sec/knox/container/util/EnterprisePartitionManager;Lcom/android/server/SdpManagerService$SecureFileSystemManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/SdpManagerService;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "timaHelper"    # Lcom/android/server/pm/TimaHelper;
    .param p4, "keyMgnt"    # Lcom/sec/knox/container/util/KeyManagementUtil;
    .param p5, "epm"    # Lcom/sec/knox/container/util/EnterprisePartitionManager;

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;-><init>(Lcom/android/server/SdpManagerService;Landroid/content/Context;Lcom/android/server/pm/TimaHelper;Lcom/sec/knox/container/util/KeyManagementUtil;Lcom/sec/knox/container/util/EnterprisePartitionManager;)V

    return-void
.end method

.method private createPartition()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3662
    iget-boolean v2, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->timaVersion20:Z

    if-eqz v2, :cond_0

    .line 3663
    const-string/jumbo v2, "SecureFileSystem"

    const-string/jumbo v3, "TIMA 2.0 not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3664
    return v4

    .line 3667
    :cond_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mKeyMgnt:Lcom/sec/knox/container/util/KeyManagementUtil;

    const-string/jumbo v3, "test"

    invoke-virtual {v2, v3}, Lcom/sec/knox/container/util/KeyManagementUtil;->generateEcryptfsKey(Ljava/lang/String;)[B

    move-result-object v0

    .line 3668
    .local v0, "eCryptfsKey":[B
    iget-object v2, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->getTimaAlias()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3, v0}, Lcom/android/server/pm/TimaHelper;->setEntry(ILjava/lang/String;[B)Z

    move-result v1

    .line 3670
    .local v1, "ret":Z
    if-eqz v1, :cond_1

    .line 3671
    iget-object v2, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mDB:Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;

    iget-object v3, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-virtual {v3}, Lcom/android/server/pm/TimaHelper;->getTimaVersion()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v4, v3}, Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;->-wrap0(Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;ILjava/lang/String;)I

    .line 3672
    :cond_1
    const-string/jumbo v2, "SecureFileSystem"

    const-string/jumbo v3, "createPartition"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3674
    return v1
.end method

.method private createPkgDir(ILjava/lang/String;)Z
    .locals 4
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3738
    const/4 v0, 0x0

    .line 3739
    .local v0, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3741
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->createEncPkgDir(ILjava/lang/String;)Z

    move-result v0

    .line 3742
    .local v0, "ret":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3744
    return v0
.end method

.method private getTimaAlias()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3654
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "eCryptfsKeySecFS"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getTimaService()Landroid/service/tima/ITimaService;
    .locals 2

    .prologue
    .line 3631
    const-string/jumbo v1, "tima"

    .line 3630
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v0

    .line 3632
    .local v0, "timaService":Landroid/service/tima/ITimaService;
    return-object v0
.end method

.method private isActivated()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3783
    iget v0, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mStatus:I

    if-ne v0, v1, :cond_0

    .line 3784
    return v1

    .line 3786
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isCreated()Z
    .locals 3

    .prologue
    .line 3658
    iget-object v0, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->getTimaAlias()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/pm/TimaHelper;->checkEntry(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private mount()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 3689
    iget-boolean v3, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->timaVersion20:Z

    if-eqz v3, :cond_0

    .line 3690
    const-string/jumbo v3, "SecureFileSystem"

    const-string/jumbo v4, "TIMA 2.0 not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3691
    return v5

    .line 3696
    :cond_0
    iget-object v3, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->getTimaAlias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lcom/android/server/pm/TimaHelper;->getEntry(ILjava/lang/String;)[B

    move-result-object v1

    .line 3697
    .local v1, "eCryptfsKey":[B
    if-nez v1, :cond_2

    .line 3698
    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->createPartition()Z

    move-result v2

    .line 3700
    .local v2, "ret":Z
    if-nez v2, :cond_1

    .line 3701
    const-string/jumbo v3, "SecureFileSystem"

    const-string/jumbo v4, "Failed to create partition"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3702
    iput v6, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mStatus:I

    .line 3703
    return v5

    .line 3706
    :cond_1
    iget-object v3, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->getTimaAlias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lcom/android/server/pm/TimaHelper;->getEntry(ILjava/lang/String;)[B

    move-result-object v1

    .line 3707
    if-nez v1, :cond_2

    .line 3708
    const-string/jumbo v3, "SecureFileSystem"

    const-string/jumbo v4, "Failed to get eCryptfsKey"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3709
    iput v6, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mStatus:I

    .line 3710
    return v5

    .line 3715
    .end local v2    # "ret":Z
    :cond_2
    invoke-static {v1, v5}, Lcom/sec/knox/container/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 3717
    .local v0, "b64eCryptfsKey":Ljava/lang/String;
    const-string/jumbo v3, "SecureFileSystem"

    const-string/jumbo v4, "mount"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3718
    iget-object v3, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;

    const/4 v4, 0x2

    invoke-virtual {v3, v5, v0, v7, v4}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->mount(ILjava/lang/String;ZI)Z

    move-result v2

    .line 3719
    .restart local v2    # "ret":Z
    if-eqz v2, :cond_3

    .line 3720
    iput v7, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mStatus:I

    .line 3724
    :goto_0
    return v2

    .line 3722
    :cond_3
    iput v6, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mStatus:I

    goto :goto_0
.end method

.method private removePartition()V
    .locals 3

    .prologue
    .line 3678
    iget-boolean v0, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->timaVersion20:Z

    if-eqz v0, :cond_0

    .line 3679
    const-string/jumbo v0, "SecureFileSystem"

    const-string/jumbo v1, "TIMA 2.0 not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3682
    :cond_0
    iget-object v0, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->getTimaAlias()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/pm/TimaHelper;->deleteEntry(ILjava/lang/String;)V

    .line 3684
    const-string/jumbo v0, "SecureFileSystem"

    const-string/jumbo v1, "removePartition"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3677
    return-void
.end method

.method private removePkgDir(ILjava/lang/String;)Z
    .locals 4
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3748
    const/4 v0, 0x0

    .line 3749
    .local v0, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3751
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->removeEncPkgDir(ILjava/lang/String;)Z

    move-result v0

    .line 3752
    .local v0, "ret":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3754
    return v0
.end method

.method private setBaseDataUserDir(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v4, -0x1

    .line 3794
    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->isActivated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3795
    const-string/jumbo v2, "SecureFileSystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBaseDataUserDir :: Error - SecureFileSysstem not activated... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3796
    const/4 v2, 0x0

    return v2

    .line 3798
    :cond_0
    const/4 v1, 0x1

    .line 3800
    .local v1, "ret":Z
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "/data/enc_user"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3801
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3802
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    .line 3803
    .local v1, "ret":Z
    if-nez v1, :cond_2

    .line 3804
    const-string/jumbo v2, "SecureFileSystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBaseDataUserDir :: Error - user dir creation failed... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3805
    const/4 v1, 0x0

    .line 3813
    .end local v1    # "ret":Z
    :cond_1
    :goto_0
    const-string/jumbo v2, "SecureFileSystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBaseDataUserDir :: User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3814
    return v1

    .line 3808
    .restart local v1    # "ret":Z
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 3809
    const/16 v3, 0x1f9

    .line 3807
    invoke-static {v2, v3, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    goto :goto_0
.end method

.method private systemReady()Z
    .locals 4

    .prologue
    .line 3852
    iget-object v3, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->sContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    .line 3854
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "user$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 3855
    .local v0, "user":Landroid/content/pm/UserInfo;
    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v3}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->systemReady(I)Z

    goto :goto_0

    .line 3858
    .end local v0    # "user":Landroid/content/pm/UserInfo;
    :cond_0
    const/4 v3, 0x1

    return v3
.end method

.method private systemReady(I)Z
    .locals 9
    .param p1, "userId"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 3818
    invoke-static {p1}, Lcom/samsung/android/knox/sdp/SdpUtil;->isKnoxWorkspace(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3820
    return v8

    .line 3823
    :cond_0
    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->isActivated()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3824
    const-string/jumbo v3, "SecureFileSystem"

    const-string/jumbo v4, "systemReady error :: SdpFileSystem not activated "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3825
    return v2

    .line 3828
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->setBaseDataUserDir(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3829
    const-string/jumbo v3, "SecureFileSystem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "systemReady :: Error - Failed to set up base directory for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3832
    :cond_2
    iget-object v3, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->defaultApps:[Ljava/lang/String;

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_6

    aget-object v0, v3, v2

    .line 3833
    .local v0, "app":Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->getUserDataDir(ILjava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 3835
    .local v1, "userDataDir":Ljava/io/File;
    if-nez v1, :cond_4

    .line 3836
    const-string/jumbo v5, "SecureFileSystem"

    const-string/jumbo v6, "systemReady : userDataDir is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3832
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3840
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5

    .line 3841
    const-string/jumbo v5, "SecureFileSystem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "systemReady : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " creating"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3842
    invoke-direct {p0, p1, v0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->createPkgDir(ILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 3843
    const-string/jumbo v5, "SecureFileSystem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "failed to create "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3845
    :cond_5
    const-string/jumbo v5, "SecureFileSystem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "systemReady : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " already exists"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3848
    .end local v0    # "app":Ljava/lang/String;
    .end local v1    # "userDataDir":Ljava/io/File;
    :cond_6
    return v8
.end method

.method private unmount()V
    .locals 3

    .prologue
    .line 3728
    iget-boolean v0, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->timaVersion20:Z

    if-eqz v0, :cond_0

    .line 3729
    const-string/jumbo v0, "SecureFileSystem"

    const-string/jumbo v1, "TIMA 2.0 not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3732
    :cond_0
    const-string/jumbo v0, "SecureFileSystem"

    const-string/jumbo v1, "unmount"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3733
    iget-object v0, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->unmount(II)Z

    .line 3727
    return-void
.end method
