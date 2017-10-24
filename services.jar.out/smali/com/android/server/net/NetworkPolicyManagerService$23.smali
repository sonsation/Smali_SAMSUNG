.class Lcom/android/server/net/NetworkPolicyManagerService$23;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 4774
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 42
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 4777
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v33, v0

    sparse-switch v33, :sswitch_data_0

    .line 4996
    const/16 v33, 0x0

    return v33

    .line 4779
    :sswitch_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    .line 4780
    .local v28, "uid":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v29, v0

    .line 4781
    .local v29, "uidRules":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkPolicyListener;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap10(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V

    .line 4782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v14

    .line 4783
    .local v14, "length":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v14, :cond_0

    .line 4784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v9}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v15

    check-cast v15, Landroid/net/INetworkPolicyListener;

    .line 4785
    .local v15, "listener":Landroid/net/INetworkPolicyListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v15, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap10(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V

    .line 4783
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 4787
    .end local v15    # "listener":Landroid/net/INetworkPolicyListener;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 4788
    const/16 v33, 0x1

    return v33

    .line 4791
    .end local v9    # "i":I
    .end local v14    # "length":I
    .end local v28    # "uid":I
    .end local v29    # "uidRules":I
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, [Ljava/lang/String;

    .line 4792
    .local v19, "meteredIfaces":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkPolicyListener;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap6(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V

    .line 4793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v14

    .line 4794
    .restart local v14    # "length":I
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_1
    if-ge v9, v14, :cond_1

    .line 4795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v9}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v15

    check-cast v15, Landroid/net/INetworkPolicyListener;

    .line 4796
    .restart local v15    # "listener":Landroid/net/INetworkPolicyListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v19

    invoke-static {v0, v15, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap6(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V

    .line 4794
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 4798
    .end local v15    # "listener":Landroid/net/INetworkPolicyListener;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 4799
    const/16 v33, 0x1

    return v33

    .line 4802
    .end local v9    # "i":I
    .end local v14    # "length":I
    .end local v19    # "meteredIfaces":[Ljava/lang/String;
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 4804
    .local v10, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 4805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    move-object/from16 v34, v0

    monitor-enter v34

    .line 4807
    :try_start_0
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11}, Ljava/lang/String;-><init>()V

    .line 4808
    .local v11, "imsIface":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    const/16 v35, 0x4

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap0(Lcom/android/server/net/NetworkPolicyManagerService;I)Landroid/net/LinkProperties;

    move-result-object v18

    .line 4809
    .local v18, "lp":Landroid/net/LinkProperties;
    if-eqz v18, :cond_2

    invoke-virtual/range {v18 .. v18}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v11

    .line 4811
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/net/NetworkPolicyManagerService;->-get8(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_3

    .line 4813
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v33

    const-string/jumbo v35, "CscFeature_RIL_SupportVolte"

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_4

    .line 4814
    if-eqz v10, :cond_4

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v33

    .line 4811
    if-eqz v33, :cond_4

    .line 4819
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/net/NetworkPolicyManagerService;->-get9(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4824
    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    .line 4825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    monitor-exit v34

    .line 4828
    const/16 v33, 0x1

    return v33

    .line 4805
    .end local v11    # "imsIface":Ljava/lang/String;
    .end local v18    # "lp":Landroid/net/LinkProperties;
    :catchall_0
    move-exception v33

    monitor-exit v34

    throw v33

    .line 4831
    .end local v10    # "iface":Ljava/lang/String;
    :sswitch_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    if-eqz v33, :cond_5

    const/16 v26, 0x1

    .line 4832
    .local v26, "restrictBackground":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkPolicyListener;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap8(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;Z)V

    .line 4833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v14

    .line 4834
    .restart local v14    # "length":I
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_4
    if-ge v9, v14, :cond_6

    .line 4835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v9}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v15

    check-cast v15, Landroid/net/INetworkPolicyListener;

    .line 4836
    .restart local v15    # "listener":Landroid/net/INetworkPolicyListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, v26

    invoke-static {v0, v15, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap8(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;Z)V

    .line 4834
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 4831
    .end local v9    # "i":I
    .end local v14    # "length":I
    .end local v15    # "listener":Landroid/net/INetworkPolicyListener;
    .end local v26    # "restrictBackground":Z
    :cond_5
    const/16 v26, 0x0

    .restart local v26    # "restrictBackground":Z
    goto :goto_3

    .line 4838
    .restart local v9    # "i":I
    .restart local v14    # "length":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 4840
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v33, "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

    move-object/from16 v0, v33

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4841
    .local v12, "intent":Landroid/content/Intent;
    const/high16 v33, 0x40000000    # 2.0f

    move/from16 v0, v33

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/net/NetworkPolicyManagerService;->-get3(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v33

    sget-object v34, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4843
    const/16 v33, 0x1

    return v33

    .line 4856
    .end local v9    # "i":I
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v14    # "length":I
    .end local v26    # "restrictBackground":Z
    :sswitch_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    .line 4857
    .restart local v28    # "uid":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v33, v0

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_7

    const/4 v7, 0x1

    .line 4858
    .local v7, "changed":Z
    :goto_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Ljava/lang/Boolean;

    .line 4861
    .local v31, "whitelisted":Ljava/lang/Boolean;
    if-eqz v31, :cond_9

    .line 4862
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    .line 4863
    .local v32, "whitelistedBool":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkPolicyListener;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move/from16 v2, v28

    move/from16 v3, v32

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap9(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;IZ)V

    .line 4865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v14

    .line 4866
    .restart local v14    # "length":I
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_6
    if-ge v9, v14, :cond_8

    .line 4867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v9}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v15

    check-cast v15, Landroid/net/INetworkPolicyListener;

    .line 4868
    .restart local v15    # "listener":Landroid/net/INetworkPolicyListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, v28

    move/from16 v2, v32

    invoke-static {v0, v15, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap9(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;IZ)V

    .line 4866
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 4857
    .end local v7    # "changed":Z
    .end local v9    # "i":I
    .end local v14    # "length":I
    .end local v15    # "listener":Landroid/net/INetworkPolicyListener;
    .end local v31    # "whitelisted":Ljava/lang/Boolean;
    .end local v32    # "whitelistedBool":Z
    :cond_7
    const/4 v7, 0x0

    .restart local v7    # "changed":Z
    goto :goto_5

    .line 4871
    .restart local v9    # "i":I
    .restart local v14    # "length":I
    .restart local v31    # "whitelisted":Ljava/lang/Boolean;
    .restart local v32    # "whitelistedBool":Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 4874
    .end local v9    # "i":I
    .end local v14    # "length":I
    .end local v32    # "whitelistedBool":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/net/NetworkPolicyManagerService;->-get3(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    .line 4875
    .local v24, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v21

    .line 4876
    .local v21, "packages":[Ljava/lang/String;
    if-eqz v7, :cond_a

    if-eqz v21, :cond_a

    .line 4878
    invoke-static/range {v28 .. v28}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v30

    .line 4879
    .local v30, "userId":I
    const/16 v33, 0x0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v34, v0

    :goto_7
    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_a

    aget-object v20, v21, v33

    .line 4880
    .local v20, "packageName":Ljava/lang/String;
    new-instance v12, Landroid/content/Intent;

    .line 4881
    const-string/jumbo v35, "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

    .line 4880
    move-object/from16 v0, v35

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4882
    .restart local v12    # "intent":Landroid/content/Intent;
    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4883
    const/high16 v35, 0x40000000    # 2.0f

    move/from16 v0, v35

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/net/NetworkPolicyManagerService;->-get3(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v35

    invoke-static/range {v30 .. v30}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4879
    add-int/lit8 v33, v33, 0x1

    goto :goto_7

    .line 4887
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v20    # "packageName":Ljava/lang/String;
    .end local v30    # "userId":I
    :cond_a
    const/16 v33, 0x1

    return v33

    .line 4890
    .end local v7    # "changed":Z
    .end local v21    # "packages":[Ljava/lang/String;
    .end local v24    # "pm":Landroid/content/pm/PackageManager;
    .end local v28    # "uid":I
    .end local v31    # "whitelisted":Ljava/lang/Boolean;
    :sswitch_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    .line 4891
    .restart local v28    # "uid":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v33, v0

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_b

    const/4 v6, 0x1

    .line 4893
    .local v6, "blacklisted":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkPolicyListener;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move/from16 v2, v28

    invoke-static {v0, v1, v2, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap7(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;IZ)V

    .line 4895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v14

    .line 4896
    .restart local v14    # "length":I
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_9
    if-ge v9, v14, :cond_c

    .line 4897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v9}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v15

    check-cast v15, Landroid/net/INetworkPolicyListener;

    .line 4898
    .restart local v15    # "listener":Landroid/net/INetworkPolicyListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, v28

    invoke-static {v0, v15, v1, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap7(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;IZ)V

    .line 4896
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 4891
    .end local v6    # "blacklisted":Z
    .end local v9    # "i":I
    .end local v14    # "length":I
    .end local v15    # "listener":Landroid/net/INetworkPolicyListener;
    :cond_b
    const/4 v6, 0x0

    .restart local v6    # "blacklisted":Z
    goto :goto_8

    .line 4901
    .restart local v9    # "i":I
    .restart local v14    # "length":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 4902
    const/16 v33, 0x1

    return v33

    .line 4905
    .end local v6    # "blacklisted":Z
    .end local v9    # "i":I
    .end local v14    # "length":I
    .end local v28    # "uid":I
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Ljava/lang/Long;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 4911
    .local v16, "lowestRule":J
    move-wide/from16 v22, v16

    .line 4913
    .local v22, "persistThreshold":J
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/net/NetworkPolicyManagerService;->-get9(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v16

    invoke-interface {v0, v1, v2}, Landroid/net/INetworkStatsService;->advisePersistThreshold(J)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 4917
    :goto_a
    const/16 v33, 0x1

    return v33

    .line 4920
    .end local v16    # "lowestRule":J
    .end local v22    # "persistThreshold":J
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap26(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 4921
    const/16 v33, 0x1

    return v33

    .line 4924
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v34, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap16(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V

    .line 4926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v34, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Ljava/lang/String;

    .line 4927
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-long v0, v0

    move-wide/from16 v36, v0

    const/16 v35, 0x20

    shl-long v36, v36, v35

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v38, v38, v40

    or-long v36, v36, v38

    .line 4926
    move-object/from16 v0, v34

    move-object/from16 v1, v33

    move-wide/from16 v2, v36

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap18(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;J)V

    .line 4928
    const/16 v33, 0x1

    return v33

    .line 4931
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v34, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap16(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V

    .line 4932
    const/16 v33, 0x1

    return v33

    .line 4936
    :sswitch_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    .line 4937
    .restart local v28    # "uid":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v25, v0

    .line 4938
    .local v25, "procState":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, v28

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap27(Lcom/android/server/net/NetworkPolicyManagerService;II)V

    .line 4939
    const/16 v33, 0x1

    return v33

    .line 4942
    .end local v25    # "procState":I
    .end local v28    # "uid":I
    :sswitch_b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    .line 4943
    .restart local v28    # "uid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap17(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    .line 4944
    const/16 v33, 0x1

    return v33

    .line 4947
    .end local v28    # "uid":I
    :sswitch_c
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 4948
    .local v5, "arg":I
    const/16 v33, 0x1

    move/from16 v0, v33

    if-ne v0, v5, :cond_d

    const/16 v27, 0x1

    .line 4952
    .local v27, "restrictedNetworksChanged":Z
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap22(Lcom/android/server/net/NetworkPolicyManagerService;Z)V

    .line 4953
    const/16 v33, 0x1

    return v33

    .line 4948
    .end local v27    # "restrictedNetworksChanged":Z
    :cond_d
    const/16 v27, 0x0

    .restart local v27    # "restrictedNetworksChanged":Z
    goto :goto_b

    .line 4958
    .end local v5    # "arg":I
    .end local v27    # "restrictedNetworksChanged":Z
    :sswitch_d
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 4959
    .restart local v5    # "arg":I
    const/16 v33, 0x1

    move/from16 v0, v33

    if-ne v0, v5, :cond_e

    const/4 v13, 0x1

    .line 4960
    .local v13, "isWhiteListChanged":Z
    :goto_c
    if-eqz v13, :cond_f

    .line 4961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/net/NetworkPolicyManagerService;->updatePowerSaveWhitelistLocked()V

    .line 4962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-static/range {v33 .. v34}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap22(Lcom/android/server/net/NetworkPolicyManagerService;Z)V

    .line 4968
    :goto_d
    const/16 v33, 0x1

    return v33

    .line 4959
    .end local v13    # "isWhiteListChanged":Z
    :cond_e
    const/4 v13, 0x0

    goto :goto_c

    .line 4964
    .restart local v13    # "isWhiteListChanged":Z
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/net/NetworkPolicyManagerService;->updatePowerSaveTempWhitelistLocked()V

    .line 4965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap25(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 4966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/net/NetworkPolicyManagerService;->purgePowerSaveTempWhitelistLocked()V

    goto :goto_d

    .line 4973
    .end local v5    # "arg":I
    .end local v13    # "isWhiteListChanged":Z
    :sswitch_e
    const/4 v7, 0x0

    .line 4974
    .restart local v7    # "changed":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap2(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result v7

    .line 4975
    .local v7, "changed":Z
    if-eqz v7, :cond_10

    .line 4976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictPowerLocked()V

    .line 4977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    const/16 v34, 0x1

    invoke-static/range {v33 .. v34}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap22(Lcom/android/server/net/NetworkPolicyManagerService;Z)V

    .line 4979
    :cond_10
    const/16 v33, 0x1

    return v33

    .line 4985
    .end local v7    # "changed":Z
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v34, v0

    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->-get13()Z

    move-result v33

    if-eqz v33, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/net/NetworkPolicyManagerService;->-get15(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result v33

    if-eqz v33, :cond_12

    :cond_11
    const/16 v33, 0x0

    :goto_e
    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap19(Lcom/android/server/net/NetworkPolicyManagerService;Z)V

    .line 4986
    const/16 v33, 0x1

    return v33

    .line 4985
    :cond_12
    const/16 v33, 0x1

    goto :goto_e

    .line 4990
    :sswitch_10
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    .line 4991
    .local v4, "appStatus":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/String;

    .line 4992
    .restart local v20    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-static {v0, v4, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap13(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/String;)V

    .line 4993
    const/16 v33, 0x1

    return v33

    .line 4914
    .end local v4    # "appStatus":I
    .end local v20    # "packageName":Ljava/lang/String;
    .restart local v16    # "lowestRule":J
    .restart local v22    # "persistThreshold":J
    :catch_0
    move-exception v8

    .local v8, "e":Landroid/os/RemoteException;
    goto/16 :goto_a

    .line 4820
    .end local v8    # "e":Landroid/os/RemoteException;
    .end local v16    # "lowestRule":J
    .end local v22    # "persistThreshold":J
    .restart local v10    # "iface":Ljava/lang/String;
    .restart local v11    # "imsIface":Ljava/lang/String;
    .restart local v18    # "lp":Landroid/net/LinkProperties;
    :catch_1
    move-exception v8

    .restart local v8    # "e":Landroid/os/RemoteException;
    goto/16 :goto_2

    .line 4777
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_4
        0xa -> :sswitch_8
        0xb -> :sswitch_9
        0xc -> :sswitch_5
        0xd -> :sswitch_10
        0x3e9 -> :sswitch_a
        0x3ea -> :sswitch_b
        0x3eb -> :sswitch_d
        0x3ec -> :sswitch_f
        0x3ed -> :sswitch_e
        0x3ee -> :sswitch_c
    .end sparse-switch
.end method
