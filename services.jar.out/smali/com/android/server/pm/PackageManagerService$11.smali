.class Lcom/android/server/pm/PackageManagerService$11;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$finishedReceiver:Landroid/content/IIntentReceiver;

.field final synthetic val$flags:I

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$targetPkg:Ljava/lang/String;

.field final synthetic val$userIds:[I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;[ILandroid/os/Bundle;Ljava/lang/String;ILandroid/content/IIntentReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "val$action"    # Ljava/lang/String;
    .param p3, "val$pkg"    # Ljava/lang/String;
    .param p4, "val$userIds"    # [I
    .param p5, "val$extras"    # Landroid/os/Bundle;
    .param p6, "val$targetPkg"    # Ljava/lang/String;
    .param p7, "val$flags"    # I
    .param p8, "val$finishedReceiver"    # Landroid/content/IIntentReceiver;

    .prologue
    .line 14533
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$11;->val$action:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$11;->val$pkg:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$11;->val$userIds:[I

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$11;->val$extras:Landroid/os/Bundle;

    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$11;->val$targetPkg:Ljava/lang/String;

    iput p7, p0, Lcom/android/server/pm/PackageManagerService$11;->val$flags:I

    iput-object p8, p0, Lcom/android/server/pm/PackageManagerService$11;->val$finishedReceiver:Landroid/content/IIntentReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 26

    .prologue
    .line 14537
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 14538
    .local v2, "am":Landroid/app/IActivityManager;
    if-nez v2, :cond_0

    return-void

    .line 14540
    :cond_0
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 14541
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$11;->val$action:Ljava/lang/String;

    const-string/jumbo v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 14542
    const-string/jumbo v3, "GATE"

    const-string/jumbo v5, "<GATE-M> APP_INSTALLED </GATE-M>"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14549
    :cond_1
    :goto_0
    const/4 v10, 0x0

    .line 14552
    .local v10, "requiredPermissions":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$11;->val$pkg:Ljava/lang/String;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$11;->val$pkg:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$11;->val$pkg:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 14553
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$11;->val$action:Ljava/lang/String;

    const-string/jumbo v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 14554
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$11;->val$action:Ljava/lang/String;

    const-string/jumbo v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 14553
    if-nez v3, :cond_2

    .line 14555
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$11;->val$action:Ljava/lang/String;

    const-string/jumbo v5, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 14553
    if-eqz v3, :cond_3

    .line 14556
    :cond_2
    const/4 v3, 0x1

    new-array v10, v3, [Ljava/lang/String;

    .end local v10    # "requiredPermissions":[Ljava/lang/String;
    const-string/jumbo v3, "com.samsung.android.permission.MODIFY_THEME"

    const/4 v5, 0x0

    aput-object v3, v10, v5

    .line 14565
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$11;->val$userIds:[I

    if-nez v3, :cond_a

    .line 14566
    invoke-interface {v2}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    move-result-object v19

    .line 14570
    .local v19, "resolvedUserIds":[I
    :goto_1
    const/4 v3, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v24, v3

    :goto_2
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_14

    aget v15, v19, v24

    .line 14571
    .local v15, "id":I
    new-instance v4, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$11;->val$action:Ljava/lang/String;

    .line 14572
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$11;->val$pkg:Ljava/lang/String;

    if-eqz v3, :cond_b

    const-string/jumbo v3, "package"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$11;->val$pkg:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 14571
    :goto_3
    invoke-direct {v4, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 14573
    .local v4, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$11;->val$extras:Landroid/os/Bundle;

    if-eqz v3, :cond_4

    .line 14574
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$11;->val$extras:Landroid/os/Bundle;

    invoke-virtual {v4, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 14576
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$11;->val$targetPkg:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 14577
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$11;->val$targetPkg:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 14580
    :cond_5
    const-string/jumbo v3, "android.intent.extra.UID"

    const/4 v5, -0x1

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .line 14581
    .local v21, "uid":I
    if-lez v21, :cond_6

    invoke-static/range {v21 .. v21}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-eq v3, v15, :cond_6

    .line 14582
    invoke-static/range {v21 .. v21}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-static {v15, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v21

    .line 14583
    const-string/jumbo v3, "android.intent.extra.UID"

    move/from16 v0, v21

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 14585
    :cond_6
    const-string/jumbo v3, "android.intent.extra.user_handle"

    invoke-virtual {v4, v3, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 14586
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/pm/PackageManagerService$11;->val$flags:I

    const/high16 v5, 0x4000000

    or-int/2addr v3, v5

    invoke-virtual {v4, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 14594
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$11;->val$action:Ljava/lang/String;

    const-string/jumbo v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 14595
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$11;->val$finishedReceiver:Landroid/content/IIntentReceiver;

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 14596
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, -0x1

    .line 14597
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 14595
    invoke-interface/range {v2 .. v15}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    .line 14611
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$11;->val$action:Ljava/lang/String;

    const-string/jumbo v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 14612
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$11;->val$action:Ljava/lang/String;

    const-string/jumbo v5, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 14611
    if-eqz v3, :cond_10

    .line 14614
    :cond_7
    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, v19

    array-length v5, v0

    :goto_5
    if-ge v3, v5, :cond_10

    aget v22, v19, v3

    .line 14615
    .local v22, "userId":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$11;->val$pkg:Ljava/lang/String;

    move/from16 v0, v22

    invoke-virtual {v6, v7, v0}, Lcom/android/server/pm/PackageManagerService;->applyRuntimePermissionsOnInstallation(Ljava/lang/String;I)V

    .line 14616
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$11;->val$pkg:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/server/pm/PackageManagerService;->-wrap40(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 14614
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 14543
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v15    # "id":I
    .end local v19    # "resolvedUserIds":[I
    .end local v21    # "uid":I
    .end local v22    # "userId":I
    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$11;->val$action:Ljava/lang/String;

    const-string/jumbo v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 14544
    const-string/jumbo v3, "GATE"

    const-string/jumbo v5, "<GATE-M> APP_UNINSTALLED </GATE-M>"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 14703
    .end local v2    # "am":Landroid/app/IActivityManager;
    :catch_0
    move-exception v18

    .line 14535
    :cond_9
    :goto_6
    return-void

    .line 14568
    .restart local v2    # "am":Landroid/app/IActivityManager;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$11;->val$userIds:[I

    move-object/from16 v19, v0

    .restart local v19    # "resolvedUserIds":[I
    goto/16 :goto_1

    .line 14572
    .restart local v15    # "id":I
    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 14599
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v21    # "uid":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$11;->val$action:Ljava/lang/String;

    const-string/jumbo v5, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$11;->val$action:Ljava/lang/String;

    const-string/jumbo v5, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 14600
    :cond_d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$11;->val$finishedReceiver:Landroid/content/IIntentReceiver;

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 14601
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, -0x1

    .line 14602
    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 14600
    invoke-interface/range {v2 .. v15}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    goto/16 :goto_4

    .line 14605
    :cond_e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$11;->val$finishedReceiver:Landroid/content/IIntentReceiver;

    .line 14607
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$11;->val$finishedReceiver:Landroid/content/IIntentReceiver;

    if-eqz v3, :cond_f

    const/4 v13, 0x1

    .line 14605
    :goto_7
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 14606
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, -0x1

    .line 14607
    const/4 v12, 0x0

    const/4 v14, 0x0

    .line 14605
    invoke-interface/range {v2 .. v15}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    goto/16 :goto_4

    .line 14607
    :cond_f
    const/4 v13, 0x0

    goto :goto_7

    .line 14618
    :catch_1
    move-exception v17

    .line 14619
    .local v17, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Granting runtime permissions failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 14620
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 14619
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14628
    .end local v17    # "e":Ljava/lang/Exception;
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$11;->val$action:Ljava/lang/String;

    const-string/jumbo v5, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 14629
    sget-object v3, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v3, :cond_13

    .line 14631
    :try_start_3
    sget-object v3, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v23

    .line 14632
    .local v23, "users":[I
    if-eqz v23, :cond_13

    .line 14633
    const/4 v3, 0x0

    move-object/from16 v0, v23

    array-length v5, v0

    :goto_8
    if-ge v3, v5, :cond_13

    aget v22, v23, v3

    .line 14636
    .restart local v22    # "userId":I
    const-string/jumbo v6, "application_policy"

    .line 14634
    invoke-static {v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 14638
    .local v16, "appPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-nez v16, :cond_12

    .line 14633
    :cond_11
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 14642
    :cond_12
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$11;->val$pkg:Ljava/lang/String;

    .line 14643
    const/4 v7, 0x0

    .line 14641
    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getRuntimePermissionsEnforced(ILjava/lang/String;I)Ljava/util/List;

    move-result-object v20

    .line 14644
    .local v20, "runtimePerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v20, :cond_11

    .line 14645
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_11

    .line 14646
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$11;->val$pkg:Ljava/lang/String;

    .line 14647
    const/4 v8, 0x0

    .line 14646
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v6, v7, v0, v8, v1}, Lcom/android/server/pm/PackageManagerService;->applyRuntimePermissions(Ljava/lang/String;Ljava/util/List;II)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_9

    .line 14651
    .end local v16    # "appPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    .end local v20    # "runtimePerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "userId":I
    .end local v23    # "users":[I
    :catch_2
    move-exception v17

    .line 14652
    .restart local v17    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v3, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Granting runtime permissions failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 14653
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 14652
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14570
    .end local v17    # "e":Ljava/lang/Exception;
    :cond_13
    add-int/lit8 v3, v24, 0x1

    move/from16 v24, v3

    goto/16 :goto_2

    .line 14660
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v15    # "id":I
    .end local v21    # "uid":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$11;->val$action:Ljava/lang/String;

    const-string/jumbo v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 14661
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$11;->val$action:Ljava/lang/String;

    const-string/jumbo v5, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v3

    .line 14660
    if-eqz v3, :cond_16

    .line 14663
    :cond_15
    const/4 v3, 0x0

    :try_start_5
    move-object/from16 v0, v19

    array-length v5, v0

    :goto_a
    if-ge v3, v5, :cond_16

    aget v22, v19, v3

    .line 14664
    .restart local v22    # "userId":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$11;->val$pkg:Ljava/lang/String;

    move/from16 v0, v22

    invoke-virtual {v6, v7, v0}, Lcom/android/server/pm/PackageManagerService;->applyRuntimePermissionsOnInstallation(Ljava/lang/String;I)V

    .line 14665
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$11;->val$pkg:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/server/pm/PackageManagerService;->-wrap40(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 14663
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 14667
    .end local v22    # "userId":I
    :catch_3
    move-exception v17

    .line 14668
    .restart local v17    # "e":Ljava/lang/Exception;
    :try_start_6
    const-string/jumbo v3, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Granting runtime permissions failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14676
    .end local v17    # "e":Ljava/lang/Exception;
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$11;->val$action:Ljava/lang/String;

    const-string/jumbo v5, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 14677
    sget-object v3, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    if-eqz v3, :cond_9

    .line 14679
    :try_start_7
    sget-object v3, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v23

    .line 14680
    .restart local v23    # "users":[I
    if-eqz v23, :cond_9

    .line 14681
    const/4 v3, 0x0

    move-object/from16 v0, v23

    array-length v5, v0

    :goto_b
    if-ge v3, v5, :cond_9

    aget v22, v23, v3

    .line 14684
    .restart local v22    # "userId":I
    const-string/jumbo v6, "application_policy"

    .line 14682
    invoke-static {v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 14686
    .restart local v16    # "appPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-nez v16, :cond_18

    .line 14681
    :cond_17
    :goto_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 14690
    :cond_18
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$11;->val$pkg:Ljava/lang/String;

    .line 14691
    const/4 v7, 0x0

    .line 14689
    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getRuntimePermissionsEnforced(ILjava/lang/String;I)Ljava/util/List;

    move-result-object v20

    .line 14692
    .restart local v20    # "runtimePerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v20, :cond_17

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_17

    .line 14693
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$11;->val$pkg:Ljava/lang/String;

    .line 14694
    const/4 v8, 0x0

    .line 14693
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v6, v7, v0, v8, v1}, Lcom/android/server/pm/PackageManagerService;->applyRuntimePermissions(Ljava/lang/String;Ljava/util/List;II)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_c

    .line 14698
    .end local v16    # "appPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    .end local v20    # "runtimePerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "userId":I
    .end local v23    # "users":[I
    :catch_4
    move-exception v17

    .line 14699
    .restart local v17    # "e":Ljava/lang/Exception;
    :try_start_8
    const-string/jumbo v3, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Granting runtime permissions failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_6
.end method
