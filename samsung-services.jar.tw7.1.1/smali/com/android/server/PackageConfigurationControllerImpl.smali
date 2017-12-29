.class public Lcom/android/server/PackageConfigurationControllerImpl;
.super Ljava/lang/Object;
.source "PackageConfigurationControllerImpl.java"

# interfaces
.implements Lcom/android/server/PackageConfigurationController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PackageConfigurationControllerImpl$1;,
        Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.sm.policy"

.field private static final AUTHORITY_URI:Landroid/net/Uri;

.field private static final CATEGORY_IDX:I = 0x2

.field private static final CATEGORY_PROCESS_KILL:Ljava/lang/String; = "category = \'processKill\'"

.field private static final CATEGORY_PROCESS_KILL_POLICY:Ljava/lang/String; = "category = \'killPolicy\'"

.field private static final CATEGORY_SCREEN_RATIO:Ljava/lang/String; = "category = \'screenRatio\'"

.field private static final DATA1_IDX:I = 0x3

.field private static final ITEM_TABLE:Ljava/lang/String; = "policy_item"

.field private static final ITEM_URI:Landroid/net/Uri;

.field private static final PACKAGE_IDX:I = 0x1

.field private static final POLICY_NAME:Ljava/lang/String; = "AppCore"

.field static final TAG:Ljava/lang/String; = "PackageConfigurationController"

.field private static final UPDATE_APPCORE_POLICY:Ljava/lang/String; = "sec.app.policy.UPDATE.AppCore"


# instance fields
.field private final mConfigutations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mForceKillProcess:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRunningPackageNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunningPids:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final mToBeKillProcessList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    const-string v0, "content://com.samsung.android.sm.policy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/PackageConfigurationControllerImpl;->AUTHORITY_URI:Landroid/net/Uri;

    .line 58
    sget-object v0, Lcom/android/server/PackageConfigurationControllerImpl;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "policy_item"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/PackageConfigurationControllerImpl;->ITEM_URI:Landroid/net/Uri;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPids:Ljava/util/HashMap;

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPackageNames:Ljava/util/HashMap;

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mToBeKillProcessList:Ljava/util/HashMap;

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mForceKillProcess:Z

    .line 156
    new-instance v0, Lcom/android/server/PackageConfigurationControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/PackageConfigurationControllerImpl$1;-><init>(Lcom/android/server/PackageConfigurationControllerImpl;)V

    iput-object v0, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 153
    return-void
.end method

.method private enableConventionalModeServer(Ljava/lang/String;F)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ratio"    # F

    .prologue
    .line 520
    iget-object v2, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    monitor-enter v2

    .line 521
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    .line 522
    .local v0, "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    if-nez v0, :cond_0

    .line 523
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    .end local v0    # "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    invoke-direct {v0, p0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;-><init>(Lcom/android/server/PackageConfigurationControllerImpl;)V

    .restart local v0    # "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->setConventionalServerRatio(F)V

    .line 526
    invoke-virtual {v0, p2}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->setConventionalRatio(F)V

    .line 527
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_1

    .line 528
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->setConventionalMode(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    .line 519
    return-void

    .line 530
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->setConventionalMode(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 520
    .end local v0    # "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private setProcessKillPolicy(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "toBeKill"    # Z

    .prologue
    .line 536
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mToBeKillProcessList:Ljava/util/HashMap;

    monitor-enter v1

    .line 537
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mToBeKillProcessList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 535
    return-void

    .line 536
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public disableConventionalModeInternal(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 507
    iget-object v3, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    monitor-enter v3

    .line 508
    :try_start_0
    iget-object v4, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    .local v0, "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    if-nez v0, :cond_0

    monitor-exit v3

    .line 510
    return v2

    .line 512
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->isConventionalMode()Z

    move-result v1

    .line 513
    .local v1, "curConventionalMode":Z
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->setConventionalRatio(F)V

    .line 514
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->setConventionalMode(Z)V

    .line 515
    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->isConventionalMode()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eq v1, v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    monitor-exit v3

    return v2

    .line 507
    .end local v0    # "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    .end local v1    # "curConventionalMode":Z
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public disableFixedAspectRatioForPackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 382
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    .line 383
    .local v0, "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    if-nez v0, :cond_0

    .line 384
    return-void

    .line 386
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->setAspectRatio(F)V

    .line 387
    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 388
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    :cond_1
    return-void
.end method

.method public disableNavbarIsAlwaysEnabled(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 430
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    .line 431
    .local v0, "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    if-nez v0, :cond_0

    .line 432
    return-void

    .line 434
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->setNavbarIsAlwaysEnabled(Z)V

    .line 435
    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 436
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    :cond_1
    return-void
.end method

.method public disableReducedSideTouchAreaForPackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 343
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    .line 344
    .local v0, "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    if-nez v0, :cond_0

    .line 345
    return-void

    .line 347
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->setReducedSideTouchAreaSize(I)V

    .line 348
    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 349
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    :cond_1
    return-void
.end method

.method public disableScreenAreaForPackage(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 304
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    .line 305
    .local v0, "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    if-nez v0, :cond_0

    .line 306
    return-void

    .line 308
    :cond_0
    invoke-virtual {v0, v2}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->setReducedScreenParams(Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;)V

    .line 309
    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 310
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    :cond_1
    return-void
.end method

.method public declared-synchronized dumpPackageConfiguration(Ljava/io/PrintWriter;)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    monitor-enter p0

    .line 560
    :try_start_0
    iget-object v8, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPackageNames:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "elem$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 561
    .local v1, "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    .line 562
    .local v0, "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    const-string v8, "PackageConfigurationController"

    const-string v9, "Package Configuration: "

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const/4 v7, 0x0

    .line 564
    .local v7, "scale":F
    const/4 v3, 0x0

    .line 565
    .local v3, "offsetxPct":F
    const/4 v4, 0x0

    .line 567
    .local v4, "offsetyPct":F
    if-eqz v0, :cond_0

    .line 568
    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->getReducedAppScreenParams()Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;

    move-result-object v5

    .line 569
    .local v5, "params":Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;
    if-eqz v5, :cond_1

    .line 570
    iget v7, v5, Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;->scale:F

    .line 571
    iget v3, v5, Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;->offsetxPct:F

    .line 572
    iget v4, v5, Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;->offsetyPct:F

    .line 575
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Pkg Name - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Aspect Ratio : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->getAspectRatio()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 576
    const-string v9, ", NavbarIsAlwaysEnabled :"

    .line 575
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 576
    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->isNavbarIsAlwaysEnabled()Z

    move-result v9

    .line 575
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 577
    const-string v9, ", Reduced Touch Area Size :"

    .line 575
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 577
    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->getReducedSideTouchAreaSize()I

    move-result v9

    .line 575
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 578
    const-string v9, ", Reduced App Screen Params : (xoffsetPct ="

    .line 575
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 579
    const-string v9, ", yoffsetPct ="

    .line 575
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 579
    const-string v9, ", scale ="

    .line 575
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 580
    const-string v9, "), Conventional Mode :"

    .line 575
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 580
    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->isConventionalMode()Z

    move-result v9

    .line 575
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 582
    .local v6, "printlog":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 583
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 585
    :cond_2
    const-string v8, "PackageConfigurationController"

    invoke-static {v8, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .end local v0    # "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    .end local v1    # "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;>;"
    .end local v2    # "elem$iterator":Ljava/util/Iterator;
    .end local v3    # "offsetxPct":F
    .end local v4    # "offsetyPct":F
    .end local v5    # "params":Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;
    .end local v6    # "printlog":Ljava/lang/String;
    .end local v7    # "scale":F
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .restart local v2    # "elem$iterator":Ljava/util/Iterator;
    :cond_3
    monitor-exit p0

    .line 559
    return-void
.end method

.method public enableBackgroundSurfaceForPackage(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 467
    iget-object v2, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    monitor-enter v2

    .line 468
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    .line 469
    .local v0, "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    if-nez p2, :cond_1

    .line 470
    if-eqz v0, :cond_0

    .line 471
    invoke-virtual {v0, p2}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->setBackgroundSurfaceNeeded(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 473
    return-void

    .line 475
    :cond_1
    if-nez v0, :cond_2

    .line 476
    :try_start_1
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    .end local v0    # "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    invoke-direct {v0, p0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;-><init>(Lcom/android/server/PackageConfigurationControllerImpl;)V

    .restart local v0    # "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    :cond_2
    invoke-virtual {v0, p2}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->setBackgroundSurfaceNeeded(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 466
    return-void

    .line 467
    .end local v0    # "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public enableConventionalModeInternal(Ljava/lang/String;F)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ratio"    # F

    .prologue
    const/4 v2, 0x1

    .line 492
    iget-object v3, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    monitor-enter v3

    .line 493
    :try_start_0
    iget-object v4, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    .line 494
    .local v0, "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    if-nez v0, :cond_0

    .line 495
    iget-object v4, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    .end local v0    # "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    invoke-direct {v0, p0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;-><init>(Lcom/android/server/PackageConfigurationControllerImpl;)V

    .restart local v0    # "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    invoke-virtual {v4, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->isConventionalMode()Z

    move-result v1

    .line 498
    .local v1, "curConventionalMode":Z
    invoke-virtual {v0, p2}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->setConventionalRatio(F)V

    .line 499
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->setConventionalMode(Z)V

    .line 501
    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->isConventionalMode()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eq v1, v4, :cond_1

    :goto_0
    monitor-exit v3

    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 492
    .end local v0    # "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    .end local v1    # "curConventionalMode":Z
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public enableFixedAspectRatioForPackage(Ljava/lang/String;F)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "aspectRatio"    # F

    .prologue
    .line 369
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-nez v1, :cond_0

    .line 370
    invoke-virtual {p0, p1}, Lcom/android/server/PackageConfigurationControllerImpl;->disableFixedAspectRatioForPackage(Ljava/lang/String;)V

    .line 371
    return-void

    .line 373
    :cond_0
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    .line 374
    .local v0, "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    if-nez v0, :cond_1

    .line 375
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    .end local v0    # "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    invoke-direct {v0, p0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;-><init>(Lcom/android/server/PackageConfigurationControllerImpl;)V

    .restart local v0    # "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->setAspectRatio(F)V

    .line 368
    return-void
.end method

.method public enableNavbarIsAlwaysEnabled(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 417
    if-nez p2, :cond_0

    .line 418
    invoke-virtual {p0, p1}, Lcom/android/server/PackageConfigurationControllerImpl;->disableNavbarIsAlwaysEnabled(Ljava/lang/String;)V

    .line 419
    return-void

    .line 421
    :cond_0
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    .line 422
    .local v0, "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    if-nez v0, :cond_1

    .line 423
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    .end local v0    # "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    invoke-direct {v0, p0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;-><init>(Lcom/android/server/PackageConfigurationControllerImpl;)V

    .restart local v0    # "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->setNavbarIsAlwaysEnabled(Z)V

    .line 416
    return-void
.end method

.method public declared-synchronized enableReducedScreenAreaForPackage(Ljava/lang/String;FFF)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "scale"    # F
    .param p3, "offsetxPct"    # F
    .param p4, "offsetyPct"    # F

    .prologue
    monitor-enter p0

    .line 290
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p2, v2

    if-nez v2, :cond_0

    .line 291
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/PackageConfigurationControllerImpl;->disableScreenAreaForPackage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 292
    return-void

    .line 294
    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;

    invoke-direct {v1, p2, p3, p4}, Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;-><init>(FFF)V

    .line 295
    .local v1, "reducedAppScreenParams":Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;
    iget-object v2, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    .line 296
    .local v0, "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    if-nez v0, :cond_1

    .line 297
    iget-object v2, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    .end local v0    # "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    invoke-direct {v0, p0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;-><init>(Lcom/android/server/PackageConfigurationControllerImpl;)V

    .restart local v0    # "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->setReducedScreenParams(Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 289
    return-void

    .end local v0    # "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    .end local v1    # "reducedAppScreenParams":Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public enableReducedSideTouchAreaForPackage(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "size"    # I

    .prologue
    .line 330
    if-nez p2, :cond_0

    .line 331
    invoke-virtual {p0, p1}, Lcom/android/server/PackageConfigurationControllerImpl;->disableReducedSideTouchAreaForPackage(Ljava/lang/String;)V

    .line 332
    return-void

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    .line 335
    .local v0, "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    if-nez v0, :cond_1

    .line 336
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    .end local v0    # "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    invoke-direct {v0, p0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;-><init>(Lcom/android/server/PackageConfigurationControllerImpl;)V

    .restart local v0    # "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->setReducedSideTouchAreaSize(I)V

    .line 329
    return-void
.end method

.method public finishBooting(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 236
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.sm.policy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 237
    return-void

    .line 239
    :cond_0
    iput-object p1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mContext:Landroid/content/Context;

    .line 241
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 242
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "sec.app.policy.UPDATE.AppCore"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 244
    invoke-virtual {p0}, Lcom/android/server/PackageConfigurationControllerImpl;->updateConventionalModePackage()V

    .line 235
    return-void
.end method

.method public getAspectRatio(I)F
    .locals 3
    .param p1, "pid"    # I

    .prologue
    .line 394
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPids:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    .line 395
    .local v0, "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->isConventionalMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->getConventionalRatio()F

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->getAspectRatio()F

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAspectRatio(Ljava/lang/String;)F
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 400
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/PackageConfigurationControllerImpl;->getAspectRatio(Ljava/lang/String;Z)F

    move-result v0

    return v0
.end method

.method public getAspectRatio(Ljava/lang/String;Z)F
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "useNotRunningList"    # Z

    .prologue
    .line 405
    const/4 v0, 0x0

    .line 406
    .local v0, "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    if-eqz p2, :cond_0

    .line 407
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    .line 411
    .local v0, "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->isConventionalMode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->getConventionalRatio()F

    move-result v1

    :goto_1
    return v1

    .line 409
    .local v0, "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    :cond_0
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPackageNames:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    .local v0, "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    goto :goto_0

    .line 411
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->getAspectRatio()F

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public declared-synchronized getReducedAppScreenParams(I)Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;
    .locals 4
    .param p1, "pid"    # I

    .prologue
    const/4 v1, 0x0

    monitor-enter p0

    .line 316
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPids:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    .line 317
    .local v0, "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->getReducedAppScreenParams()Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :cond_0
    monitor-exit p0

    return-object v1

    .end local v0    # "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getReducedAppScreenParams(Ljava/lang/String;)Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    monitor-enter p0

    .line 322
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPackageNames:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    .line 323
    .local v0, "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->getReducedAppScreenParams()Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :cond_0
    monitor-exit p0

    return-object v1

    .end local v0    # "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getReducedSideTouchArea(I)I
    .locals 3
    .param p1, "pid"    # I

    .prologue
    .line 355
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPids:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    .line 356
    .local v0, "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->getReducedSideTouchAreaSize()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getReducedSideTouchArea(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 361
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPackageNames:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    .line 362
    .local v0, "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->getReducedSideTouchAreaSize()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getServerAspectRatio(Ljava/lang/String;)F
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 543
    iget-object v2, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    monitor-enter v2

    .line 544
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    .line 545
    .local v0, "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->getConventionalServerRatio()F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 543
    .end local v0    # "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public isApplicationStarted(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 272
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    .line 273
    .local v0, "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    if-eqz v0, :cond_0

    .line 274
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPackageNames:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    const/4 v1, 0x1

    return v1

    .line 278
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isBackgroundSurfaceNeeded(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 484
    iget-object v2, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    monitor-enter v2

    .line 485
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    .local v0, "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->isBackgroundSurfaceNeed()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 484
    .end local v0    # "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public isConventionalMode(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 551
    iget-object v2, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    monitor-enter v2

    .line 552
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    .local v0, "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->isConventionalMode()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 551
    .end local v0    # "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public isNavbarIsAlwaysEnabled(I)Z
    .locals 3
    .param p1, "pid"    # I

    .prologue
    .line 442
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPids:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    .line 443
    .local v0, "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->isNavbarIsAlwaysEnabled()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNavbarIsAlwaysEnabled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 448
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPackageNames:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    .line 449
    .local v0, "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->isNavbarIsAlwaysEnabled()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNaviBarNoneImmersivePackage(I)Z
    .locals 1
    .param p1, "pid"    # I

    .prologue
    .line 455
    sget-boolean v0, Lcom/samsung/android/config/SamsungCoreConfig;->FEATURE_HIDE_NAVIBAR:Z

    if-eqz v0, :cond_0

    .line 456
    invoke-static {}, Lcom/android/server/wm/NaviBarHidePolicyManager;->getInstance()Lcom/android/server/wm/NaviBarHidePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/NaviBarHidePolicyManager;->isNaviBarFixedPackage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    const/4 v0, 0x1

    return v0

    .line 460
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isProcessKillPolicy()Z
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mForceKillProcess:Z

    return v0
.end method

.method public needProcessKill(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 230
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mToBeKillProcessList:Ljava/util/HashMap;

    monitor-enter v1

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mToBeKillProcessList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public declared-synchronized onApplicationStarted(Ljava/lang/String;II)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "pid"    # I

    .prologue
    monitor-enter p0

    .line 250
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    .line 251
    .local v0, "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    if-eqz v0, :cond_0

    .line 252
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPids:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPackageNames:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    :cond_0
    sget-boolean v1, Lcom/samsung/android/config/SamsungCoreConfig;->FEATURE_HIDE_NAVIBAR:Z

    if-eqz v1, :cond_1

    .line 257
    invoke-static {}, Lcom/android/server/wm/NaviBarHidePolicyManager;->getInstance()Lcom/android/server/wm/NaviBarHidePolicyManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wm/NaviBarHidePolicyManager;->onApplicationStarted(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 249
    return-void

    .end local v0    # "config":Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onApplicationStopped(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .prologue
    monitor-enter p0

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPids:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v0, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPackageNames:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-boolean v0, Lcom/samsung/android/config/SamsungCoreConfig;->FEATURE_HIDE_NAVIBAR:Z

    if-eqz v0, :cond_0

    .line 267
    invoke-static {}, Lcom/android/server/wm/NaviBarHidePolicyManager;->getInstance()Lcom/android/server/wm/NaviBarHidePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/wm/NaviBarHidePolicyManager;->onApplicationStopped(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 262
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resetPackageConfiguration(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 282
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateConventionalModePackage()V
    .locals 11

    .prologue
    .line 169
    const/4 v6, 0x0

    .line 170
    .local v6, "cur":Landroid/database/Cursor;
    sget-object v2, Lcom/android/server/PackageConfigurationControllerImpl;->ITEM_URI:Landroid/net/Uri;

    const-string v3, "AppCore"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 171
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 174
    .local v0, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    const-string v3, "category = \'screenRatio\'"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 175
    .local v6, "cur":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_4

    .line 176
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 177
    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 178
    .local v8, "packageName":Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    .line 179
    .local v9, "scale":F
    invoke-direct {p0, v8, v9}, Lcom/android/server/PackageConfigurationControllerImpl;->enableConventionalModeServer(Ljava/lang/String;F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 182
    .end local v6    # "cur":Landroid/database/Cursor;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "scale":F
    :catch_0
    move-exception v7

    .line 184
    .local v7, "e":Ljava/lang/Exception;
    if-eqz v6, :cond_0

    .line 185
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 190
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mToBeKillProcessList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 191
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mForceKillProcess:Z

    .line 192
    const-string v3, "category = \'processKill\'"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 193
    .restart local v6    # "cur":Landroid/database/Cursor;
    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_6

    .line 194
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 195
    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 196
    .restart local v8    # "packageName":Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 197
    .local v10, "shouldBeKilled":Z
    invoke-direct {p0, v8, v10}, Lcom/android/server/PackageConfigurationControllerImpl;->setProcessKillPolicy(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 200
    .end local v6    # "cur":Landroid/database/Cursor;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v10    # "shouldBeKilled":Z
    :catch_1
    move-exception v7

    .line 202
    .restart local v7    # "e":Ljava/lang/Exception;
    if-eqz v6, :cond_1

    .line 203
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 208
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_3
    :try_start_2
    const-string v3, "category = \'killPolicy\'"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 209
    .restart local v6    # "cur":Landroid/database/Cursor;
    if-eqz v6, :cond_8

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_8

    .line 210
    :cond_2
    :goto_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 211
    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 212
    .restart local v8    # "packageName":Ljava/lang/String;
    const-string v2, "android"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 213
    const/4 v2, 0x3

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mForceKillProcess:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    .line 217
    .end local v6    # "cur":Landroid/database/Cursor;
    .end local v8    # "packageName":Ljava/lang/String;
    :catch_2
    move-exception v7

    .line 219
    .restart local v7    # "e":Ljava/lang/Exception;
    if-eqz v6, :cond_3

    .line 220
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 165
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_5
    return-void

    .line 184
    .restart local v6    # "cur":Landroid/database/Cursor;
    :cond_4
    if-eqz v6, :cond_0

    .line 185
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 183
    .end local v6    # "cur":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    .line 184
    if-eqz v6, :cond_5

    .line 185
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 183
    :cond_5
    throw v2

    .line 202
    .restart local v6    # "cur":Landroid/database/Cursor;
    :cond_6
    if-eqz v6, :cond_1

    .line 203
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 201
    .end local v6    # "cur":Landroid/database/Cursor;
    :catchall_1
    move-exception v2

    .line 202
    if-eqz v6, :cond_7

    .line 203
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 201
    :cond_7
    throw v2

    .line 219
    .restart local v6    # "cur":Landroid/database/Cursor;
    :cond_8
    if-eqz v6, :cond_3

    .line 220
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 218
    .end local v6    # "cur":Landroid/database/Cursor;
    :catchall_2
    move-exception v2

    .line 219
    if-eqz v6, :cond_9

    .line 220
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 218
    :cond_9
    throw v2
.end method
