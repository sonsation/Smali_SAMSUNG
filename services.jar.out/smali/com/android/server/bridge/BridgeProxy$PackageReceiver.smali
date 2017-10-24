.class public Lcom/android/server/bridge/BridgeProxy$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BridgeProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bridge/BridgeProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PackageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/bridge/BridgeProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/bridge/BridgeProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/bridge/BridgeProxy;

    .prologue
    .line 654
    iput-object p1, p0, Lcom/android/server/bridge/BridgeProxy$PackageReceiver;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 657
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "PackageReceiver onReceive()"

    invoke-static/range {v21 .. v22}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 659
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    .line 658
    if-eqz v21, :cond_7

    .line 661
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 663
    .local v3, "addedPackage":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 664
    return-void

    .line 668
    :cond_1
    :try_start_0
    const-string/jumbo v21, "package"

    .line 667
    invoke-static/range {v21 .. v21}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v8

    .line 670
    .local v8, "iPM":Landroid/content/pm/IPackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$PackageReceiver;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/bridge/BridgeProxy;->-get9(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v21

    const/16 v22, 0x80

    .line 669
    move/from16 v0, v22

    move/from16 v1, v21

    invoke-interface {v8, v3, v0, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 671
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 672
    .local v5, "bundle":Landroid/os/Bundle;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/os/Bundle;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_3

    .line 673
    :cond_2
    return-void

    .line 675
    :cond_3
    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "key$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 676
    .local v9, "key":Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 679
    const-string/jumbo v21, "RCPSyncerName_"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 685
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v5, v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 686
    .local v16, "serviceName":Ljava/lang/String;
    const-string/jumbo v21, "RCPSyncerName_"

    const-string/jumbo v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    .line 687
    .local v20, "syncerName":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "onCreate(): serviceName = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 688
    const-string/jumbo v23, "; syncerName="

    .line 687
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 688
    const-string/jumbo v23, "; UserId="

    .line 687
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$PackageReceiver;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/bridge/BridgeProxy;->-get9(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v23

    .line 687
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    if-eqz v16, :cond_4

    .line 690
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "onCreate(): Adding syncer for UserId="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$PackageReceiver;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/bridge/BridgeProxy;->-get9(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v23

    .line 690
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "|"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$PackageReceiver;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/bridge/BridgeProxy;->-get17(Lcom/android/server/bridge/BridgeProxy;)Ljava/util/HashMap;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 729
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v8    # "iPM":Landroid/content/pm/IPackageManager;
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "key$iterator":Ljava/util/Iterator;
    .end local v16    # "serviceName":Ljava/lang/String;
    .end local v20    # "syncerName":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 730
    .local v7, "e":Ljava/lang/NullPointerException;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v21

    .line 731
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, " PackageReceiver onReceive() Failed to load meta-data, NullPointer: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 732
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v23

    .line 731
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 730
    invoke-static/range {v21 .. v22}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    .end local v3    # "addedPackage":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/NullPointerException;
    :cond_5
    :goto_1
    return-void

    .line 702
    .restart local v3    # "addedPackage":Ljava/lang/String;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "bundle":Landroid/os/Bundle;
    .restart local v8    # "iPM":Landroid/content/pm/IPackageManager;
    .restart local v9    # "key":Ljava/lang/String;
    .restart local v10    # "key$iterator":Ljava/util/Iterator;
    :cond_6
    :try_start_1
    const-string/jumbo v21, "RCPProviderName_"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 708
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v5, v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 709
    .restart local v16    # "serviceName":Ljava/lang/String;
    const-string/jumbo v21, "RCPProviderName_"

    const-string/jumbo v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 710
    .local v14, "providerName":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "onCreate(): serviceName = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 711
    const-string/jumbo v23, "; providerName="

    .line 710
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 711
    const-string/jumbo v23, "; UserId="

    .line 710
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$PackageReceiver;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/bridge/BridgeProxy;->-get9(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v23

    .line 710
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    if-eqz v16, :cond_4

    .line 714
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "onCreate(): Adding provider for UserId="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$PackageReceiver;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/bridge/BridgeProxy;->-get9(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v23

    .line 714
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "|"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$PackageReceiver;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/bridge/BridgeProxy;->-get15(Lcom/android/server/bridge/BridgeProxy;)Ljava/util/HashMap;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 733
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v8    # "iPM":Landroid/content/pm/IPackageManager;
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "key$iterator":Ljava/util/Iterator;
    .end local v14    # "providerName":Ljava/lang/String;
    .end local v16    # "serviceName":Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 734
    .local v6, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Exception trying to get applicationInfo for "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v6}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 736
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    .line 738
    .end local v3    # "addedPackage":Ljava/lang/String;
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 742
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v15

    .line 750
    .local v15, "removedPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$PackageReceiver;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/bridge/BridgeProxy;->-get17(Lcom/android/server/bridge/BridgeProxy;)Ljava/util/HashMap;

    move-result-object v21

    if-eqz v21, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$PackageReceiver;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/bridge/BridgeProxy;->-get17(Lcom/android/server/bridge/BridgeProxy;)Ljava/util/HashMap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_a

    .line 774
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$PackageReceiver;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/bridge/BridgeProxy;->-get15(Lcom/android/server/bridge/BridgeProxy;)Ljava/util/HashMap;

    move-result-object v21

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$PackageReceiver;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/bridge/BridgeProxy;->-get15(Lcom/android/server/bridge/BridgeProxy;)Ljava/util/HashMap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_5

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$PackageReceiver;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/bridge/BridgeProxy;->-get15(Lcom/android/server/bridge/BridgeProxy;)Ljava/util/HashMap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "providerEntry$iterator":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 776
    .local v12, "providerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v11, v12

    .line 777
    .local v11, "pairs":Ljava/util/Map$Entry;
    if-eqz v12, :cond_9

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_9

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_9

    .line 778
    new-instance v17, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$PackageReceiver;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v22, v0

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;-><init>(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)V

    .line 779
    .local v17, "si":Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 780
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, " RCPComponents provider package removed == "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$PackageReceiver;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/bridge/BridgeProxy;->-get15(Lcom/android/server/bridge/BridgeProxy;)Ljava/util/HashMap;

    move-result-object v22

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 751
    .end local v11    # "pairs":Ljava/util/Map$Entry;
    .end local v12    # "providerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "providerEntry$iterator":Ljava/util/Iterator;
    .end local v17    # "si":Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$PackageReceiver;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/bridge/BridgeProxy;->-get17(Lcom/android/server/bridge/BridgeProxy;)Ljava/util/HashMap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "syncerEntry$iterator":Ljava/util/Iterator;
    :cond_b
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_8

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    .line 752
    .local v18, "syncerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v11, v18

    .line 753
    .restart local v11    # "pairs":Ljava/util/Map$Entry;
    if-eqz v18, :cond_b

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_b

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_b

    .line 754
    new-instance v17, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$PackageReceiver;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v22, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;-><init>(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)V

    .line 755
    .restart local v17    # "si":Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 756
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, " RCPComponents syncer package removed == "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$PackageReceiver;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/bridge/BridgeProxy;->-get17(Lcom/android/server/bridge/BridgeProxy;)Ljava/util/HashMap;

    move-result-object v22

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2
.end method
