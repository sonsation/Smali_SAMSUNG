.class public Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;
.super Ljava/lang/Object;
.source "RemoteConfigurationManager.java"


# static fields
.field private static final GRANT_PERMISSION:Ljava/lang/String; = "com.samsung.android.launcher.permission.WRITE_SETTINGS"

.field private static final MAX_WAIT_DURATION_FOR_WORK_THREAD:J = 0x3e8L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAppstate:Lcom/android/launcher3/LauncherAppState;

.field private mCompleteRunnableOnWorkThread:Ljava/lang/Runnable;

.field private final mConfigurationLock:Ljava/lang/Object;

.field private final mContext:Landroid/content/Context;

.field private mListener:Lcom/android/launcher3/LauncherProviderChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mConfigurationLock:Ljava/lang/Object;

    .line 51
    iput-object p1, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    .line 52
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mConfigurationLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mCompleteRunnableOnWorkThread:Ljava/lang/Runnable;

    return-object p1
.end method

.method private addHotseatItem(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10
    .param p1, "param"    # Landroid/os/Bundle;

    .prologue
    .line 325
    sget-object v7, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v8, "addHotseatItem"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 327
    .local v4, "result":Landroid/os/Bundle;
    const/4 v5, 0x0

    .line 329
    .local v5, "resultValue":I
    const/4 v0, 0x0

    .line 330
    .local v0, "cn":Landroid/content/ComponentName;
    const/4 v1, -0x1

    .line 331
    .local v1, "index":I
    if-nez p1, :cond_2

    .line 332
    sget-object v7, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v8, "addHotseatItem - param is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/4 v5, -0x4

    .line 344
    :cond_0
    :goto_0
    if-nez v5, :cond_1

    .line 345
    new-instance v2, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;

    const-string v7, "add_hotseat_item"

    const-wide/16 v8, -0x1

    invoke-direct {v2, v7, p1, v8, v9}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;-><init>(Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 346
    .local v2, "info":Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;
    iget-object v7, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v7}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodQueue;->queueExternalMethodInfo(Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 347
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v6

    .line 348
    .local v6, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    iget-object v7, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v7}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v7

    invoke-virtual {v7, v0, v1, v6}, Lcom/android/launcher3/home/HomeLoader;->addHotseatItemByComponentName(Landroid/content/ComponentName;ILcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 352
    .end local v2    # "info":Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;
    .end local v6    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_1
    const-string v7, "invocation_result"

    invoke-virtual {v4, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 353
    return-object v4

    .line 335
    :cond_2
    const-string v7, "component"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .end local v0    # "cn":Landroid/content/ComponentName;
    check-cast v0, Landroid/content/ComponentName;

    .line 336
    .restart local v0    # "cn":Landroid/content/ComponentName;
    const-string v7, "index"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 337
    iget-object v7, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v7}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->getMaxHotseatCount()I

    move-result v3

    .line 338
    .local v3, "maxCount":I
    if-eqz v0, :cond_3

    if-ltz v1, :cond_3

    if-lt v1, v3, :cond_0

    .line 339
    :cond_3
    sget-object v7, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addHotseatItem - componentName is null, index is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const/4 v5, -0x4

    goto :goto_0
.end method

.method private addWorkspaceItem(Landroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 22
    .param p1, "param"    # Landroid/os/Bundle;
    .param p2, "isWidget"    # Z

    .prologue
    .line 450
    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v11, "addWorkspaceItem"

    invoke-static {v4, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .line 454
    .local v16, "result":Landroid/os/Bundle;
    const/4 v10, 0x0

    .line 456
    .local v10, "cn":Landroid/content/ComponentName;
    const/16 v9, -0x3e7

    .local v9, "spanY":I
    move v8, v9

    .local v8, "spanX":I
    move v7, v9

    .local v7, "cellY":I
    move v6, v9

    .local v6, "cellX":I
    move v5, v9

    .line 458
    .local v5, "page":I
    const/4 v14, 0x1

    .line 459
    .local v14, "paramError":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v12

    .line 460
    .local v12, "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    if-nez p1, :cond_0

    .line 461
    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v11, "addWorkspaceItem : param is null"

    invoke-static {v4, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :goto_0
    if-eqz v14, :cond_e

    .line 508
    const/16 v17, -0x4

    .line 524
    .local v17, "resultValue":I
    :goto_1
    const-string v4, "invocation_result"

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 525
    return-object v16

    .line 463
    .end local v17    # "resultValue":I
    :cond_0
    const-string v4, "component"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    .end local v10    # "cn":Landroid/content/ComponentName;
    check-cast v10, Landroid/content/ComponentName;

    .line 464
    .restart local v10    # "cn":Landroid/content/ComponentName;
    if-nez v10, :cond_1

    .line 465
    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v11, "addWorkspaceItem : componentName is null"

    invoke-static {v4, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 467
    :cond_1
    const-string v4, "page"

    const/16 v11, -0x3e7

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 468
    const/16 v4, -0x3e7

    if-ne v5, v4, :cond_2

    .line 469
    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v11, "addWorkspaceItem : page index is INVALID"

    invoke-static {v4, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 471
    :cond_2
    const-string v4, "coordination_position"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Landroid/graphics/Point;

    .line 472
    .local v15, "pos":Landroid/graphics/Point;
    if-nez v15, :cond_3

    .line 473
    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v11, "addWorkspaceItem : position is null"

    invoke-static {v4, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 475
    :cond_3
    iget v6, v15, Landroid/graphics/Point;->x:I

    .line 476
    iget v7, v15, Landroid/graphics/Point;->y:I

    .line 477
    iget-object v4, v12, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v4

    if-ge v6, v4, :cond_4

    if-gez v6, :cond_5

    .line 478
    :cond_4
    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "addWorkspaceItem : cellX is "

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 479
    :cond_5
    iget-object v4, v12, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v4

    if-ge v7, v4, :cond_6

    if-gez v7, :cond_7

    .line 480
    :cond_6
    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "addWorkspaceItem : cellY is "

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 481
    :cond_7
    if-eqz p2, :cond_d

    .line 482
    const-string v4, "coordination_size"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v18

    check-cast v18, Landroid/graphics/Point;

    .line 483
    .local v18, "size":Landroid/graphics/Point;
    if-nez v18, :cond_8

    .line 484
    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v11, "addWorkspaceItem : size is null"

    invoke-static {v4, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 486
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v10, v1}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->makeAdjustedWidgetSize(Landroid/content/ComponentName;Landroid/graphics/Point;)V

    .line 487
    move-object/from16 v0, v18

    iget v8, v0, Landroid/graphics/Point;->x:I

    .line 488
    move-object/from16 v0, v18

    iget v9, v0, Landroid/graphics/Point;->y:I

    .line 489
    add-int v4, v6, v8

    iget-object v11, v12, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v11}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v11

    if-gt v4, v11, :cond_9

    const/4 v4, 0x1

    if-ge v8, v4, :cond_a

    .line 490
    :cond_9
    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "addWorkspaceItem : cellX is "

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v19, ", spanX is "

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v19, ". and it\'s out of a cell."

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 492
    :cond_a
    add-int v4, v7, v9

    iget-object v11, v12, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v11}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v11

    if-gt v4, v11, :cond_b

    const/4 v4, 0x1

    if-ge v9, v4, :cond_c

    .line 493
    :cond_b
    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "addWorkspaceItem : cellY is "

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v19, ", spanY is "

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v19, ". and it\'s out of a cell."

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 496
    :cond_c
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 500
    .end local v18    # "size":Landroid/graphics/Point;
    :cond_d
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 510
    .end local v15    # "pos":Landroid/graphics/Point;
    :cond_e
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v10, v4, v1}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->isItemExist(Landroid/content/ComponentName;ZZ)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 511
    new-instance v13, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;

    if-eqz p2, :cond_10

    const-string v4, "add_widget"

    :goto_2
    const-wide/16 v20, -0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    invoke-direct {v13, v4, v0, v1, v2}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;-><init>(Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 513
    .local v13, "info":Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    invoke-static {v13, v4}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodQueue;->queueExternalMethodInfo(Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 514
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v4

    move/from16 v11, p2

    invoke-virtual/range {v4 .. v11}, Lcom/android/launcher3/home/HomeLoader;->addOrMoveItem(IIIIILandroid/content/ComponentName;Z)V

    .line 517
    :cond_f
    const/16 v17, 0x0

    .line 518
    .restart local v17    # "resultValue":I
    goto/16 :goto_1

    .line 511
    .end local v13    # "info":Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;
    .end local v17    # "resultValue":I
    :cond_10
    const-string v4, "add_shortcut"

    goto :goto_2

    .line 519
    :cond_11
    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "addWorkspaceItem : "

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v19, " is not exist a on Device"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const/16 v17, -0x3

    .restart local v17    # "resultValue":I
    goto/16 :goto_1
.end method

.method private checkPermission()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 61
    iget-object v4, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "callingPackageName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 75
    .end local v0    # "callingPackageName":Ljava/lang/String;
    :goto_0
    return v2

    .line 66
    .restart local v0    # "callingPackageName":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    const-string v5, "com.samsung.android.launcher.permission.WRITE_SETTINGS"

    .line 67
    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    move v1, v3

    .line 69
    .local v1, "hasGrantPermission":Z
    :goto_1
    if-nez v1, :cond_2

    .line 70
    sget-object v3, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not allowed package name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "hasGrantPermission":Z
    :cond_1
    move v1, v2

    .line 67
    goto :goto_1

    .end local v0    # "callingPackageName":Ljava/lang/String;
    :cond_2
    move v2, v3

    .line 75
    goto :goto_0
.end method

.method private findItemByIntent(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 7
    .param p1, "cnFromParam"    # Landroid/content/ComponentName;
    .param p2, "intentString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 857
    if-eqz p2, :cond_0

    .line 859
    const/4 v4, 0x0

    :try_start_0
    invoke-static {p2, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 860
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 861
    .local v0, "cnFromIntent":Landroid/content/ComponentName;
    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 862
    const/4 v3, 0x1

    .line 869
    .end local v0    # "cnFromIntent":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return v3

    .line 864
    :catch_0
    move-exception v1

    .line 865
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getAppsButtonState()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 746
    sget-object v2, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v3, "getAppsButtonState"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 748
    .local v0, "result":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 750
    .local v1, "resultValue":I
    iget-object v2, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 751
    const/4 v1, -0x2

    .line 756
    :goto_0
    const-string v2, "invocation_result"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 757
    return-object v0

    .line 753
    :cond_0
    const-string v2, "state"

    iget-object v3, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getAppsButtonEnabled()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private getAppsCellDimension()Landroid/os/Bundle;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 289
    sget-object v3, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v4, "getAppsCellDimension"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 291
    .local v1, "result":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 293
    .local v2, "resultValue":I
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 294
    .local v0, "grid":[I
    iget-object v3, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/android/launcher3/util/ScreenGridUtilities;->loadCurrentAppsGridSize(Landroid/content/Context;[I)V

    .line 295
    aget v3, v0, v6

    if-eq v3, v5, :cond_0

    aget v3, v0, v7

    if-ne v3, v5, :cond_1

    .line 297
    :cond_0
    const/4 v2, -0x2

    .line 302
    :goto_0
    const-string v3, "invocation_result"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 303
    return-object v1

    .line 299
    :cond_1
    const-string v3, "cols"

    aget v4, v0, v6

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 300
    const-string v3, "rows"

    aget v4, v0, v7

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private getHomeCellDimension()Landroid/os/Bundle;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 271
    sget-object v3, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v4, "getHomeCellDimension"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 273
    .local v1, "result":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 275
    .local v2, "resultValue":I
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 276
    .local v0, "grid":[I
    iget-object v3, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v4

    invoke-static {v3, v0, v4}, Lcom/android/launcher3/util/ScreenGridUtilities;->loadCurrentGridSize(Landroid/content/Context;[IZ)V

    .line 277
    aget v3, v0, v6

    if-eq v3, v5, :cond_0

    aget v3, v0, v7

    if-ne v3, v5, :cond_1

    .line 279
    :cond_0
    const/4 v2, -0x2

    .line 284
    :goto_0
    const-string v3, "invocation_result"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 285
    return-object v1

    .line 281
    :cond_1
    const-string v3, "cols"

    aget v4, v0, v6

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 282
    const-string v3, "rows"

    aget v4, v0, v7

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private getHomeMode(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .param p1, "arg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 220
    const-string v1, "DexHomeConverter"

    const-string v2, "get_home_mode Called."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v1, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isDeskTopMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "persist.service.dex.homesync"

    .line 224
    invoke-static {v1, v4}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    .line 227
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 226
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 228
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "dex_need_to_sync"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 231
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 232
    .local v0, "result":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    const-string v1, "easy_mode"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :goto_0
    return-object v0

    .line 234
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 235
    const-string v1, "home_only_mode"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :cond_2
    const-string v1, "home_apps_mode"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getHotseatItem(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 19
    .param p1, "param"    # Landroid/os/Bundle;

    .prologue
    .line 357
    sget-object v2, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v3, "getHotseatItem"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 359
    .local v15, "result":Landroid/os/Bundle;
    const/16 v18, 0x0

    .line 361
    .local v18, "resultValue":I
    const/4 v11, -0x1

    .line 362
    .local v11, "index":I
    if-nez p1, :cond_3

    .line 363
    sget-object v2, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v3, "getHotseatItem - param is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const/16 v18, -0x4

    .line 374
    :cond_0
    :goto_0
    if-nez v18, :cond_2

    .line 375
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "intent"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "profileId"

    aput-object v3, v4, v2

    .line 378
    .local v4, "projection":[Ljava/lang/String;
    const-string v5, "screen=? AND container=?"

    .line 380
    .local v5, "selection":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 381
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x1

    const/16 v3, -0x65

    .line 382
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 384
    .local v6, "selectionArg":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 387
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_7

    .line 389
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 390
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 391
    .local v13, "intentString":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 392
    .local v16, "profileId":J
    const/4 v8, 0x0

    .line 393
    .local v8, "cn":Landroid/content/ComponentName;
    if-eqz v13, :cond_1

    .line 394
    const/4 v2, 0x0

    invoke-static {v13, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v12

    .line 395
    .local v12, "intent":Landroid/content/Intent;
    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    .line 397
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v2, "component"

    invoke-virtual {v15, v2, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 398
    const-string v2, "user_id"

    move-wide/from16 v0, v16

    invoke-virtual {v15, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    .end local v8    # "cn":Landroid/content/ComponentName;
    .end local v13    # "intentString":Ljava/lang/String;
    .end local v16    # "profileId":J
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 407
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 415
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v5    # "selection":Ljava/lang/String;
    .end local v6    # "selectionArg":[Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_2
    const-string v2, "invocation_result"

    move/from16 v0, v18

    invoke-virtual {v15, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 416
    return-object v15

    .line 366
    :cond_3
    const-string v2, "index"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->getMaxHotseatCount()I

    move-result v14

    .line 368
    .local v14, "maxCount":I
    if-ltz v11, :cond_4

    if-lt v11, v14, :cond_0

    .line 369
    :cond_4
    sget-object v2, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getHotseatItem - index is "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const/16 v18, -0x4

    goto/16 :goto_0

    .line 400
    .end local v14    # "maxCount":I
    .restart local v4    # "projection":[Ljava/lang/String;
    .restart local v5    # "selection":Ljava/lang/String;
    .restart local v6    # "selectionArg":[Ljava/lang/String;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_5
    const/16 v18, -0x3

    goto :goto_1

    .line 402
    :catch_0
    move-exception v10

    .line 403
    .local v10, "e":Ljava/lang/Exception;
    const/16 v18, -0x3

    .line 404
    :try_start_1
    sget-object v2, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 406
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 407
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 406
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_6

    .line 407
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2

    .line 411
    :cond_7
    const/16 v18, -0x3

    goto :goto_2
.end method

.method private getHotseatItemCount()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 307
    sget-object v2, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v3, "getHotseatItemCount"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 309
    .local v1, "result":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeLoader;->getHotseatItemCount()I

    move-result v0

    .line 310
    .local v0, "hotseatCount":I
    const-string v2, "itemcount"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 311
    const-string v2, "invocation_result"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 312
    return-object v1
.end method

.method private getHotseatMaxItemCount()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 316
    sget-object v2, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v3, "getHotseatMaxItemCount"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 318
    .local v1, "result":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->getMaxHotseatCount()I

    move-result v0

    .line 319
    .local v0, "maxCount":I
    const-string v2, "itemcount"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 320
    const-string v2, "invocation_result"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 321
    return-object v1
.end method

.method private getSupplementServicePageVisibility()Landroid/os/Bundle;
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 680
    sget-object v5, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v6, "getSupplementServicePageVisibility"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 683
    .local v2, "result":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    .line 684
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v6

    .line 683
    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 685
    .local v1, "prefs":Landroid/content/SharedPreferences;
    iget-object v5, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherModel;->isSupportVirtualScreen()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    .line 686
    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getEnableZeroPage()Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v0

    .line 687
    .local v3, "zeroPageEnable":Z
    :goto_0
    if-eqz v3, :cond_1

    const-string v5, "com.sec.android.app.launcher.zeropage.state.prefs"

    .line 688
    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 690
    .local v0, "active":Z
    :goto_1
    const-string v5, "visibility"

    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 691
    const-string v5, "invocation_result"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 692
    return-object v2

    .end local v0    # "active":Z
    .end local v3    # "zeroPageEnable":Z
    :cond_0
    move v3, v4

    .line 686
    goto :goto_0

    .restart local v3    # "zeroPageEnable":Z
    :cond_1
    move v0, v4

    .line 688
    goto :goto_1
.end method

.method private handleGetMethods(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 168
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 184
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 168
    :sswitch_0
    const-string v1, "get_home_cell_dimension"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "get_apps_cell_dimension"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "get_hotseat_item"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "get_hotseat_item_count"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, " get_hotseat_maxitem_count"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "get_supplement_service_page_visibility"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v1, "get_apps_button_state"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    .line 170
    :pswitch_0
    invoke-direct {p0}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->getHomeCellDimension()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 172
    :pswitch_1
    invoke-direct {p0}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->getAppsCellDimension()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 174
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->getHotseatItem(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 176
    :pswitch_3
    invoke-direct {p0}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->getHotseatItemCount()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 178
    :pswitch_4
    invoke-direct {p0}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->getHotseatMaxItemCount()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 180
    :pswitch_5
    invoke-direct {p0}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->getSupplementServicePageVisibility()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 182
    :pswitch_6
    invoke-direct {p0}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->getAppsButtonState()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 168
    :sswitch_data_0
    .sparse-switch
        -0x736ea507 -> :sswitch_3
        -0x51d6cac5 -> :sswitch_5
        -0x21d4b657 -> :sswitch_2
        -0x9458c40 -> :sswitch_0
        0xf712b51 -> :sswitch_4
        0x639b65cd -> :sswitch_1
        0x6e30d948 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private handleSetMethods(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 188
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 216
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 188
    :sswitch_0
    const-string v3, "switch_home_mode"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v3, "add_hotseat_item"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string v3, "remove_hotseat_item"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "add_widget"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v3, "remove_widget"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v3, "add_shortcut"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v3, "make_empty_position"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string v3, "remove_shortcut"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string v3, "remove_page_from_home"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_9
    const-string v3, "set_supplement_service_page_visibility"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :sswitch_a
    const-string v3, "enable_apps_button"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :sswitch_b
    const-string v3, "disable_apps_button"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0xb

    goto :goto_0

    .line 190
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->switchHomeMode(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_1

    .line 192
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->addHotseatItem(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_1

    .line 194
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->removeHotseatItem(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_1

    .line 196
    :pswitch_3
    invoke-direct {p0, p2, v2}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->addWorkspaceItem(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_1

    .line 198
    :pswitch_4
    invoke-direct {p0, p2, v2}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->removeWorkspaceItem(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_1

    .line 200
    :pswitch_5
    invoke-direct {p0, p2, v1}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->addWorkspaceItem(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_1

    .line 202
    :pswitch_6
    invoke-direct {p0, p2}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->makeEmptyPosition(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_1

    .line 204
    :pswitch_7
    invoke-direct {p0, p2, v1}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->removeWorkspaceItem(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_1

    .line 206
    :pswitch_8
    invoke-direct {p0, p2}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->removePageFromHome(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_1

    .line 208
    :pswitch_9
    invoke-direct {p0, p2}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->setSupplementServicePageVisibility(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_1

    .line 210
    :pswitch_a
    invoke-direct {p0, v2, p1}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->setAppsButton(ZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_1

    .line 212
    :pswitch_b
    invoke-direct {p0, v1, p1}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->setAppsButton(ZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_1

    .line 188
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f03e85e -> :sswitch_3
        -0x89a965f -> :sswitch_7
        0x47563bf -> :sswitch_8
        0x1d08123e -> :sswitch_1
        0x220ebb3b -> :sswitch_2
        0x3e088caf -> :sswitch_9
        0x431cfa4c -> :sswitch_6
        0x5680825f -> :sswitch_4
        0x6cf671b8 -> :sswitch_0
        0x7150ba24 -> :sswitch_5
        0x71587ac8 -> :sswitch_b
        0x75316ce3 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private isCompleteOnWorkThread()Z
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mCompleteRunnableOnWorkThread:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEmptyPage(I)Z
    .locals 18
    .param p1, "pageIndex"    # I

    .prologue
    .line 873
    const-wide/16 v16, -0x1

    .line 874
    .local v16, "pageId":J
    const/4 v15, 0x0

    .line 875
    .local v15, "isEmpty":Z
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    .line 876
    .local v4, "projection":[Ljava/lang/String;
    const-string v5, "screenRank=?"

    .line 877
    .local v5, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 878
    .local v6, "selectionArg":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/common/model/LauncherSettings$WorkspaceScreens;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 880
    .local v13, "cursor":Landroid/database/Cursor;
    if-eqz v13, :cond_1

    .line 882
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 883
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v16

    .line 888
    :cond_0
    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 889
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 894
    :cond_1
    :goto_0
    const-wide/16 v2, -0x1

    cmp-long v2, v16, v2

    if-nez v2, :cond_4

    .line 895
    sget-object v2, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isEmptyPage : pageId = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    :cond_2
    :goto_1
    return v15

    .line 885
    :catch_0
    move-exception v14

    .line 886
    .local v14, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v2, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 888
    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 889
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 888
    .end local v14    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 889
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2

    .line 897
    :cond_4
    const-string v5, "container=? AND screen=?"

    .line 899
    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    .end local v6    # "selectionArg":[Ljava/lang/String;
    const/4 v2, 0x0

    const/16 v3, -0x64

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x1

    .line 900
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 901
    .restart local v6    # "selectionArg":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object v10, v5

    move-object v11, v6

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 903
    if-eqz v13, :cond_2

    .line 905
    :try_start_2
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    if-nez v2, :cond_5

    const/4 v15, 0x1

    .line 909
    :goto_2
    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 910
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 905
    :cond_5
    const/4 v15, 0x0

    goto :goto_2

    .line 906
    :catch_1
    move-exception v14

    .line 907
    .restart local v14    # "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v2, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 909
    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 910
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 909
    .end local v14    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_6

    .line 910
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2
.end method

.method private isItemExist(Landroid/content/ComponentName;ZZ)Z
    .locals 25
    .param p1, "cnFromParam"    # Landroid/content/ComponentName;
    .param p2, "onWorkspace"    # Z
    .param p3, "isWidget"    # Z

    .prologue
    .line 761
    if-eqz p3, :cond_6

    .line 762
    if-eqz p2, :cond_5

    .line 763
    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "appWidgetProvider"

    aput-object v5, v6, v4

    .line 764
    .local v6, "projection":[Ljava/lang/String;
    const-string v7, "appWidgetProvider!=?"

    .line 765
    .local v7, "selection":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "null"

    aput-object v5, v8, v4

    .line 766
    .local v8, "selectionArg":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 768
    .local v16, "cursor":Landroid/database/Cursor;
    if-eqz v16, :cond_3

    .line 770
    :cond_0
    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 771
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 772
    .local v23, "providerString":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 773
    const/4 v4, 0x1

    .line 779
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_1

    .line 780
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 844
    .end local v6    # "projection":[Ljava/lang/String;
    .end local v7    # "selection":Ljava/lang/String;
    .end local v8    # "selectionArg":[Ljava/lang/String;
    .end local v16    # "cursor":Landroid/database/Cursor;
    .end local v23    # "providerString":Ljava/lang/String;
    :cond_1
    :goto_0
    return v4

    .line 779
    .restart local v6    # "projection":[Ljava/lang/String;
    .restart local v7    # "selection":Ljava/lang/String;
    .restart local v8    # "selectionArg":[Ljava/lang/String;
    .restart local v16    # "cursor":Landroid/database/Cursor;
    :cond_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_3

    .line 780
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 844
    .end local v6    # "projection":[Ljava/lang/String;
    .end local v7    # "selection":Ljava/lang/String;
    .end local v8    # "selectionArg":[Ljava/lang/String;
    .end local v16    # "cursor":Landroid/database/Cursor;
    :cond_3
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 776
    .restart local v6    # "projection":[Ljava/lang/String;
    .restart local v7    # "selection":Ljava/lang/String;
    .restart local v8    # "selectionArg":[Ljava/lang/String;
    .restart local v16    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v17

    .line 777
    .local v17, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 779
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_3

    .line 780
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 779
    .end local v17    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_4

    .line 780
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v4

    .line 785
    .end local v6    # "projection":[Ljava/lang/String;
    .end local v7    # "selection":Ljava/lang/String;
    .end local v8    # "selectionArg":[Ljava/lang/String;
    .end local v16    # "cursor":Landroid/database/Cursor;
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    .line 786
    invoke-static {v4}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-result-object v4

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->findProvider(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    move-result-object v22

    .line 787
    .local v22, "providerInfo":Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    if-eqz v22, :cond_3

    .line 788
    const/4 v4, 0x1

    goto :goto_0

    .line 792
    .end local v22    # "providerInfo":Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    :cond_6
    const/4 v4, 0x4

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v6, v4

    const/4 v4, 0x1

    const-string v5, "itemType"

    aput-object v5, v6, v4

    const/4 v4, 0x2

    const-string v5, "container"

    aput-object v5, v6, v4

    const/4 v4, 0x3

    const-string v5, "intent"

    aput-object v5, v6, v4

    .line 795
    .restart local v6    # "projection":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v11, v6

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 797
    .restart local v16    # "cursor":Landroid/database/Cursor;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 798
    .local v18, "homeFolderIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v16, :cond_3

    .line 800
    :cond_7
    :goto_2
    :try_start_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 801
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 802
    .local v20, "id":J
    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 803
    .local v24, "type":I
    const/4 v4, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 804
    .local v15, "container":I
    if-eqz p2, :cond_9

    .line 805
    const/16 v4, -0x64

    if-ne v15, v4, :cond_7

    .line 806
    const/4 v4, 0x2

    move/from16 v0, v24

    if-ne v0, v4, :cond_8

    .line 807
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 835
    .end local v15    # "container":I
    .end local v20    # "id":J
    .end local v24    # "type":I
    :catch_1
    move-exception v17

    .line 836
    .restart local v17    # "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 838
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_3

    .line 839
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 809
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v15    # "container":I
    .restart local v20    # "id":J
    .restart local v24    # "type":I
    :cond_8
    const/4 v4, 0x3

    :try_start_4
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 810
    .local v19, "intentString":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->findItemByIntent(Landroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v4

    if-eqz v4, :cond_7

    .line 811
    const/4 v4, 0x1

    .line 838
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_1

    .line 839
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 816
    .end local v19    # "intentString":Ljava/lang/String;
    :cond_9
    const/4 v4, 0x3

    :try_start_5
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 817
    .restart local v19    # "intentString":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->findItemByIntent(Landroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v4

    if-eqz v4, :cond_7

    .line 818
    const/4 v4, 0x1

    .line 838
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_1

    .line 839
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 823
    .end local v15    # "container":I
    .end local v19    # "intentString":Ljava/lang/String;
    .end local v20    # "id":J
    .end local v24    # "type":I
    :cond_a
    :try_start_6
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d

    .line 824
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 826
    :cond_b
    const/4 v4, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 827
    .restart local v15    # "container":I
    int-to-long v4, v15

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 828
    const/4 v4, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 829
    .restart local v19    # "intentString":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->findItemByIntent(Landroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v4

    if-eqz v4, :cond_c

    .line 830
    const/4 v4, 0x1

    .line 838
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_1

    .line 839
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 833
    .end local v19    # "intentString":Ljava/lang/String;
    :cond_c
    :try_start_7
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v4

    if-nez v4, :cond_b

    .line 838
    .end local v15    # "container":I
    :cond_d
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_3

    .line 839
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 838
    :catchall_1
    move-exception v4

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_e

    .line 839
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v4
.end method

.method private makeAdjustedWidgetSize(Landroid/content/ComponentName;Landroid/graphics/Point;)V
    .locals 3
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "size"    # Landroid/graphics/Point;

    .prologue
    .line 848
    iget-object v1, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    .line 849
    invoke-static {v1}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->findProvider(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    move-result-object v0

    .line 850
    .local v0, "providerInfo":Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    if-eqz v0, :cond_0

    .line 851
    iget v1, p2, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getNearestWidth(I)I

    move-result v1

    iput v1, p2, Landroid/graphics/Point;->x:I

    .line 852
    iget v1, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getNearestHeight(I)I

    move-result v1

    iput v1, p2, Landroid/graphics/Point;->y:I

    .line 854
    :cond_0
    return-void
.end method

.method private makeEmptyPosition(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 20
    .param p1, "param"    # Landroid/os/Bundle;

    .prologue
    .line 570
    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v18, "makeEmptyPosition"

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 575
    .local v15, "result":Landroid/os/Bundle;
    const/16 v9, -0x3e7

    .local v9, "spanY":I
    move v8, v9

    .local v8, "spanX":I
    move v7, v9

    .local v7, "cellY":I
    move v6, v9

    .local v6, "cellX":I
    move v5, v9

    .line 577
    .local v5, "page":I
    const/4 v13, 0x1

    .line 578
    .local v13, "paramError":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v10

    .line 579
    .local v10, "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    if-nez p1, :cond_0

    .line 580
    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v18, "makeEmptyPosition : param is null"

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :goto_0
    if-eqz v13, :cond_c

    .line 617
    const/16 v16, -0x4

    .line 635
    .local v16, "resultValue":I
    :goto_1
    const-string v4, "invocation_result"

    move/from16 v0, v16

    invoke-virtual {v15, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 636
    return-object v15

    .line 582
    .end local v16    # "resultValue":I
    :cond_0
    const-string v4, "page"

    const/16 v18, -0x3e7

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 583
    const/16 v4, -0x3e7

    if-ne v5, v4, :cond_1

    .line 584
    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v18, "makeEmptyPosition : page index is INVALID"

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 586
    :cond_1
    const-string v4, "coordination_position"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Landroid/graphics/Point;

    .line 587
    .local v14, "pos":Landroid/graphics/Point;
    if-nez v14, :cond_2

    .line 588
    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v18, "makeEmptyPosition : position is null"

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 590
    :cond_2
    iget v6, v14, Landroid/graphics/Point;->x:I

    .line 591
    iget v7, v14, Landroid/graphics/Point;->y:I

    .line 592
    iget-object v4, v10, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v4

    if-ge v6, v4, :cond_3

    if-gez v6, :cond_4

    .line 593
    :cond_3
    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "makeEmptyPosition : cellX is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 594
    :cond_4
    iget-object v4, v10, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v4

    if-ge v7, v4, :cond_5

    if-gez v7, :cond_6

    .line 595
    :cond_5
    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "makeEmptyPosition : cellY is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 597
    :cond_6
    const-string v4, "coordination_size"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Landroid/graphics/Point;

    .line 598
    .local v17, "size":Landroid/graphics/Point;
    if-nez v17, :cond_7

    .line 599
    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v18, "makeEmptyPosition : size is null"

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 601
    :cond_7
    move-object/from16 v0, v17

    iget v8, v0, Landroid/graphics/Point;->x:I

    .line 602
    move-object/from16 v0, v17

    iget v9, v0, Landroid/graphics/Point;->y:I

    .line 603
    iget-object v4, v10, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v4

    if-gt v8, v4, :cond_8

    const/4 v4, 0x1

    if-ge v8, v4, :cond_9

    .line 604
    :cond_8
    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "makeEmptyPosition : spanX is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 605
    :cond_9
    iget-object v4, v10, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v4

    if-gt v9, v4, :cond_a

    const/4 v4, 0x1

    if-ge v9, v4, :cond_b

    .line 606
    :cond_a
    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "makeEmptyPosition : spanY is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 608
    :cond_b
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 619
    .end local v14    # "pos":Landroid/graphics/Point;
    .end local v17    # "size":Landroid/graphics/Point;
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v4

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/android/launcher3/home/HomeLoader;->getWorkspaceScreenCount(Z)I

    move-result v12

    .line 620
    .local v12, "pageCount":I
    if-lt v5, v12, :cond_d

    .line 621
    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "makeEmptyPosition : param value is more than page count removeIndex = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " pageCount = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const/16 v16, -0x3

    .restart local v16    # "resultValue":I
    goto/16 :goto_1

    .line 625
    .end local v16    # "resultValue":I
    :cond_d
    new-instance v11, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;

    const-string v4, "make_empty_position"

    const-wide/16 v18, -0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-direct {v11, v4, v0, v1, v2}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;-><init>(Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 627
    .local v11, "info":Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    invoke-static {v11, v4}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodQueue;->queueExternalMethodInfo(Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 628
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v4

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/home/HomeLoader;->removeItemsByPosition(IIIII)V

    .line 631
    :cond_e
    const/16 v16, 0x0

    .restart local v16    # "resultValue":I
    goto/16 :goto_1
.end method

.method private removeHotseatItem(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8
    .param p1, "param"    # Landroid/os/Bundle;

    .prologue
    .line 420
    sget-object v5, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v6, "removeHotseatItem"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 422
    .local v3, "result":Landroid/os/Bundle;
    const/4 v4, 0x0

    .line 424
    .local v4, "resultValue":I
    const/16 v1, -0x3e7

    .line 425
    .local v1, "index":I
    if-nez p1, :cond_2

    .line 426
    sget-object v5, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v6, "removeHotseatItem - param is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const/4 v4, -0x4

    .line 437
    :cond_0
    :goto_0
    if-nez v4, :cond_1

    .line 438
    new-instance v2, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;

    const-string v5, "remove_hotseat_item"

    const-wide/16 v6, -0x1

    invoke-direct {v2, v5, p1, v6, v7}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;-><init>(Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 440
    .local v2, "info":Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;
    iget-object v5, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodQueue;->queueExternalMethodInfo(Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 441
    iget-object v5, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/launcher3/home/HomeLoader;->removeHotseatItemByIndex(I)V

    .line 445
    .end local v2    # "info":Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;
    :cond_1
    const-string v5, "invocation_result"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 446
    return-object v3

    .line 429
    :cond_2
    const-string v5, "index"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 430
    iget-object v5, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/home/HomeLoader;->getHotseatItemCount()I

    move-result v0

    .line 431
    .local v0, "hotseatCount":I
    if-ltz v1, :cond_3

    if-lt v1, v0, :cond_0

    .line 432
    :cond_3
    sget-object v5, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeHotseatItem - index is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const/4 v4, -0x3

    goto :goto_0
.end method

.method private removePageFromHome(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9
    .param p1, "param"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/16 v7, -0x3e7

    .line 640
    sget-object v5, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v6, "removePageFromHome"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 642
    .local v3, "result":Landroid/os/Bundle;
    const/4 v4, -0x4

    .line 644
    .local v4, "resultValue":I
    if-nez p1, :cond_0

    .line 645
    sget-object v5, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v6, "removePageFromHome : param is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :goto_0
    const-string v5, "invocation_result"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 676
    return-object v3

    .line 647
    :cond_0
    const-string v5, "page"

    invoke-virtual {p1, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 648
    .local v2, "removeIndex":I
    if-ne v2, v7, :cond_1

    .line 649
    sget-object v5, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v6, "removePageFromHome : param value is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 650
    :cond_1
    if-gez v2, :cond_2

    .line 651
    sget-object v5, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v6, "removePageFromHome : param value is a negative num"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 653
    :cond_2
    iget-object v5, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/launcher3/home/HomeLoader;->getWorkspaceScreenCount(Z)I

    move-result v1

    .line 654
    .local v1, "pageCount":I
    if-lt v2, v1, :cond_3

    .line 655
    sget-object v5, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removePageFromHome : param value is more than page count removeIndex = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pageCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    const/4 v4, -0x3

    goto :goto_0

    .line 658
    :cond_3
    if-ne v1, v8, :cond_4

    if-nez v2, :cond_4

    .line 659
    sget-object v5, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v6, "removePageFromHome : total page count is 1"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    const/4 v4, -0x2

    goto :goto_0

    .line 661
    :cond_4
    iget-object v5, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-direct {p0, v2}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->isEmptyPage(I)Z

    move-result v5

    if-nez v5, :cond_5

    .line 662
    sget-object v5, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removePageFromHome : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " page is not empty"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    const/4 v4, -0x2

    goto/16 :goto_0

    .line 665
    :cond_5
    new-instance v0, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;

    const-string v5, "remove_page_from_home"

    const-wide/16 v6, -0x1

    invoke-direct {v0, v5, p1, v6, v7}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;-><init>(Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 667
    .local v0, "info":Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;
    iget-object v5, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodQueue;->queueExternalMethodInfo(Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 668
    iget-object v5, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/launcher3/home/HomeLoader;->removeScreen(I)V

    .line 670
    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method private removeWorkspaceItem(Landroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 8
    .param p1, "param"    # Landroid/os/Bundle;
    .param p2, "isWidget"    # Z

    .prologue
    .line 529
    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeWorkspaceItem : isWidget ? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 533
    .local v2, "result":Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 534
    .local v0, "cn":Landroid/content/ComponentName;
    if-nez p1, :cond_1

    .line 535
    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v5, "removeWorkspaceItem : param is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 544
    const/4 v3, -0x4

    .line 565
    .local v3, "resultValue":I
    :goto_1
    const-string v4, "invocation_result"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 566
    return-object v2

    .line 537
    .end local v3    # "resultValue":I
    :cond_1
    const-string v4, "component"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .end local v0    # "cn":Landroid/content/ComponentName;
    check-cast v0, Landroid/content/ComponentName;

    .line 538
    .restart local v0    # "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 539
    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v5, "removeWorkspaceItem : componentName is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 546
    :cond_2
    iget-object v4, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez p2, :cond_3

    .line 547
    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v5, "removeWorkspaceItem : HomeOnlyMode do not support to remove shortcut"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    const/4 v3, -0x2

    .restart local v3    # "resultValue":I
    goto :goto_1

    .line 550
    .end local v3    # "resultValue":I
    :cond_3
    const/4 v4, 0x1

    invoke-direct {p0, v0, v4, p2}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->isItemExist(Landroid/content/ComponentName;ZZ)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 551
    new-instance v1, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;

    if-eqz p2, :cond_5

    const-string v4, "remove_widget"

    :goto_2
    const-wide/16 v6, -0x1

    invoke-direct {v1, v4, p1, v6, v7}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;-><init>(Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 554
    .local v1, "info":Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;
    iget-object v4, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodQueue;->queueExternalMethodInfo(Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 555
    iget-object v4, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v4

    invoke-virtual {v4, v0, p2}, Lcom/android/launcher3/home/HomeLoader;->removeItem(Landroid/content/ComponentName;Z)V

    .line 557
    :cond_4
    const/4 v3, 0x0

    .line 558
    .restart local v3    # "resultValue":I
    goto :goto_1

    .line 551
    .end local v1    # "info":Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;
    .end local v3    # "resultValue":I
    :cond_5
    const-string v4, "remove_shortcut"

    goto :goto_2

    .line 559
    :cond_6
    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeWorkspaceItem : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not exist on Workspace"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const/4 v3, -0x3

    .restart local v3    # "resultValue":I
    goto :goto_1
.end method

.method private setAppsButton(ZLjava/lang/String;)Landroid/os/Bundle;
    .locals 6
    .param p1, "enable"    # Z
    .param p2, "method"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 727
    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    invoke-static {v4, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 729
    .local v1, "result":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 731
    .local v2, "resultValue":I
    iget-object v4, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 732
    const/4 v2, -0x2

    .line 741
    :cond_0
    :goto_0
    const-string v3, "invocation_result"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 742
    return-object v1

    .line 734
    :cond_1
    new-instance v0, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;

    const-wide/16 v4, -0x1

    invoke-direct {v0, p2, v3, v4, v5}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;-><init>(Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 735
    .local v0, "info":Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;
    iget-object v4, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodQueue;->queueExternalMethodInfo(Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 736
    iget-object v4, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    .line 737
    invoke-static {v3}, Lcom/android/launcher3/Utilities;->createAppsButton(Landroid/content/Context;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v3

    .line 736
    :cond_2
    invoke-virtual {v4, v5, p1, v3}, Lcom/android/launcher3/LauncherModel;->updateAppsButton(Landroid/content/Context;ZLcom/android/launcher3/common/base/item/IconInfo;)V

    goto :goto_0
.end method

.method private setCompleteRunnableForWait()V
    .locals 1

    .prologue
    .line 134
    new-instance v0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager$1;-><init>(Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;)V

    iput-object v0, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mCompleteRunnableOnWorkThread:Ljava/lang/Runnable;

    .line 143
    iget-object v0, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mCompleteRunnableOnWorkThread:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 144
    return-void
.end method

.method private setSupplementServicePageVisibility(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8
    .param p1, "param"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 696
    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v6, "setSupplementServicePageVisibility"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 699
    .local v2, "result":Landroid/os/Bundle;
    if-nez p1, :cond_0

    .line 700
    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v5, "setSupplementServicePageVisibility : param is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    const-string v4, "invocation_result"

    const/4 v5, -0x4

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 723
    :goto_0
    return-object v2

    .line 703
    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherModel;->isSupportVirtualScreen()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    .line 704
    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getEnableZeroPage()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 705
    .local v3, "zeroPageEnable":Z
    :goto_1
    if-eqz v3, :cond_4

    .line 706
    const-string v4, "visibility"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 707
    .local v0, "active":Z
    iget-object v4, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mListener:Lcom/android/launcher3/LauncherProviderChangeListener;

    if-eqz v4, :cond_2

    .line 708
    iget-object v4, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mListener:Lcom/android/launcher3/LauncherProviderChangeListener;

    invoke-interface {v4, v0}, Lcom/android/launcher3/LauncherProviderChangeListener;->onZeroPageActiveChanged(Z)V

    .line 718
    :goto_2
    const-string v4, "invocation_result"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .end local v0    # "active":Z
    .end local v3    # "zeroPageEnable":Z
    :cond_1
    move v3, v5

    .line 704
    goto :goto_1

    .line 710
    .restart local v0    # "active":Z
    .restart local v3    # "zeroPageEnable":Z
    :cond_2
    iget-object v4, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    .line 711
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v6

    .line 710
    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 711
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 712
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "com.sec.android.app.launcher.zeropage.state.prefs"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 713
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 714
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v6

    iget-object v4, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    .line 715
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0901ea

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v0, :cond_3

    const-string v4, "1"

    .line 714
    :goto_3
    invoke-virtual {v6, v7, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 715
    :cond_3
    const-string v4, "0"

    goto :goto_3

    .line 720
    .end local v0    # "active":Z
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_4
    const-string v4, "invocation_result"

    const/4 v5, -0x2

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private switchHomeMode(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8
    .param p1, "param"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 243
    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v7, "switchHomeMode"

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 245
    .local v1, "result":Landroid/os/Bundle;
    const/4 v2, -0x4

    .line 247
    .local v2, "resultValue":I
    if-nez p1, :cond_0

    .line 248
    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v5, "switchHomeMode : param is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :goto_0
    const-string v4, "invocation_result"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 267
    return-object v1

    .line 250
    :cond_0
    const-string v4, "home_mode"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "requestMode":Ljava/lang/String;
    const/4 v4, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 254
    :pswitch_0
    const-string v4, "home_only_mode"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 255
    .local v3, "value":Z
    iget-object v4, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    .line 256
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v7

    .line 255
    invoke-virtual {v4, v7, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 257
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "pref_home_screen_mode"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 258
    iget-object v4, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mListener:Lcom/android/launcher3/LauncherProviderChangeListener;

    if-eqz v4, :cond_2

    .line 259
    iget-object v4, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mListener:Lcom/android/launcher3/LauncherProviderChangeListener;

    const-string v5, "pref_home_screen_mode"

    invoke-interface {v4, v5, v6}, Lcom/android/launcher3/LauncherProviderChangeListener;->onSettingsChanged(Ljava/lang/String;Z)V

    .line 261
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 251
    .end local v3    # "value":Z
    :sswitch_0
    const-string v7, "home_only_mode"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v4, v5

    goto :goto_1

    :sswitch_1
    const-string v7, "home_apps_mode"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v4, v6

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x15809d0a -> :sswitch_0
        0x67df83f0 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private waitForWorkThread()Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v1, 0x0

    .line 147
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 148
    .local v2, "waitStartTime":J
    const-wide/16 v4, 0x0

    .line 149
    .local v4, "waitingTime":J
    iget-object v6, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v6

    .line 150
    :try_start_0
    invoke-direct {p0}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->isCompleteOnWorkThread()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_0

    .line 152
    :try_start_1
    iget-object v7, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mConfigurationLock:Ljava/lang/Object;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v7, v8, v9}, Ljava/lang/Object;->wait(J)V

    .line 153
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v8

    sub-long v4, v8, v2

    .line 154
    cmp-long v7, v4, v10

    if-ltz v7, :cond_0

    .line 155
    :try_start_2
    monitor-exit v6

    .line 164
    :goto_0
    return v1

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v7, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "waitForWorkThread : e = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    monitor-exit v6

    goto :goto_0

    .line 162
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 163
    sget-object v1, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "waitForWorkThread : waitingTime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public handleRemoteConfigurationCall(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    move v2, v4

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 101
    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mCompleteRunnableOnWorkThread:Ljava/lang/Runnable;

    .line 102
    invoke-direct {p0, p1, p3}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->handleGetMethods(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 104
    .local v1, "result":Landroid/os/Bundle;
    if-nez v1, :cond_1

    .line 105
    invoke-direct {p0}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->checkPermission()Z

    move-result v2

    if-nez v2, :cond_3

    .line 106
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "result":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 107
    .restart local v1    # "result":Landroid/os/Bundle;
    const-string v2, "invocation_result"

    const/16 v4, -0x64

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 119
    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->waitForWorkThread()Z

    move-result v2

    if-nez v2, :cond_5

    .line 120
    sget-object v2, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v3, "handleRemoteConfigurationCall : workThread is too busy"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v2, "delay_result"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 126
    .end local v1    # "result":Landroid/os/Bundle;
    :goto_3
    return-object v1

    .line 80
    :sswitch_0
    const-string v2, "get_home_mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :sswitch_1
    const-string v2, "get_support_feature"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v5

    goto :goto_0

    .line 82
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->getHomeMode(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_3

    .line 85
    :pswitch_1
    const-string v0, "find_app_position"

    .line 87
    .local v0, "FIND_APP_POSITION":Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 88
    .restart local v1    # "result":Landroid/os/Bundle;
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    :cond_2
    move v2, v4

    :goto_4
    packed-switch v2, :pswitch_data_2

    goto :goto_1

    .line 90
    :pswitch_2
    const-string v2, "find_app_position"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_3

    .line 88
    :pswitch_3
    const-string v2, "find_app_position"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_4

    .line 109
    .end local v0    # "FIND_APP_POSITION":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, p1, p3}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->handleSetMethods(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 110
    if-nez v1, :cond_4

    .line 111
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "result":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 112
    .restart local v1    # "result":Landroid/os/Bundle;
    const-string v2, "invocation_result"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 114
    :cond_4
    invoke-direct {p0}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->setCompleteRunnableForWait()V

    goto :goto_2

    .line 123
    :cond_5
    const-string v2, "delay_result"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_3

    .line 80
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6311f8a6 -> :sswitch_0
        -0x48bf2463 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 88
    :pswitch_data_1
    .packed-switch 0x22836e4d
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public setLauncherProviderChangeListener(Lcom/android/launcher3/LauncherProviderChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/launcher3/LauncherProviderChangeListener;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mListener:Lcom/android/launcher3/LauncherProviderChangeListener;

    .line 57
    return-void
.end method
