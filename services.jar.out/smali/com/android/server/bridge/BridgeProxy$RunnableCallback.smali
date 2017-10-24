.class Lcom/android/server/bridge/BridgeProxy$RunnableCallback;
.super Landroid/os/IRunnableCallback$Stub;
.source "BridgeProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bridge/BridgeProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunnableCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/bridge/BridgeProxy;


# direct methods
.method private constructor <init>(Lcom/android/server/bridge/BridgeProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/bridge/BridgeProxy;

    .prologue
    .line 2547
    iput-object p1, p0, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-direct {p0}, Landroid/os/IRunnableCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/bridge/BridgeProxy;Lcom/android/server/bridge/BridgeProxy$RunnableCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/bridge/BridgeProxy;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;-><init>(Lcom/android/server/bridge/BridgeProxy;)V

    return-void
.end method


# virtual methods
.method public run(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 22
    .param p1, "bdl"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2552
    const-string/jumbo v17, "MoveTo"

    const-string/jumbo v18, "action"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 2553
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "action:MoveTo "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v20, v0

    const-string/jumbo v17, "rawContact"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Landroid/content/CustomCursor;

    .line 2555
    const-string/jumbo v18, "contactData"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v18

    check-cast v18, Landroid/content/CustomCursor;

    .line 2556
    const-string/jumbo v19, "isPhotoFilePresent"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 2557
    const-string/jumbo v19, "photoFileMap"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v19

    check-cast v19, Ljava/util/HashMap;

    .line 2554
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v21

    move-object/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/bridge/BridgeProxy;->-wrap2(Lcom/android/server/bridge/BridgeProxy;Landroid/content/CustomCursor;Landroid/content/CustomCursor;ZLjava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v17

    return-object v17

    .line 2558
    :cond_0
    const-string/jumbo v17, "RequestProxy"

    const-string/jumbo v18, "action"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 2559
    const-string/jumbo v17, "queryPersonaInfos"

    const-string/jumbo v18, "cmd"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 2560
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 2562
    .local v14, "resp":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/bridge/BridgeProxy;->-get16(Lcom/android/server/bridge/BridgeProxy;)Lcom/android/server/bridge/operations/SimplePersonaInfos;

    move-result-object v17

    if-eqz v17, :cond_3

    .line 2563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/bridge/BridgeProxy;->-get16(Lcom/android/server/bridge/BridgeProxy;)Lcom/android/server/bridge/operations/SimplePersonaInfos;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/bridge/operations/SimplePersonaInfos;->getSize()I

    move-result v15

    .line 2564
    .local v15, "size":I
    if-lez v15, :cond_3

    .line 2565
    new-array v12, v15, [Ljava/lang/String;

    .line 2566
    .local v12, "personaTypes":[Ljava/lang/String;
    new-array v11, v15, [Ljava/lang/String;

    .line 2567
    .local v11, "personaNames":[Ljava/lang/String;
    new-array v10, v15, [I

    .line 2570
    .local v10, "personaIds":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v15, :cond_2

    .line 2571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/bridge/BridgeProxy;->-get16(Lcom/android/server/bridge/BridgeProxy;)Lcom/android/server/bridge/operations/SimplePersonaInfos;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/android/server/bridge/operations/SimplePersonaInfos;->getItem(I)Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;

    move-result-object v8

    .line 2572
    .local v8, "info":Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;
    if-eqz v8, :cond_1

    .line 2573
    iget-object v0, v8, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;->type:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v12, v7

    .line 2574
    iget v0, v8, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;->id:I

    move/from16 v17, v0

    aput v17, v10, v7

    .line 2575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/bridge/BridgeProxy;->-get14(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v17

    iget v0, v8, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;->id:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/bridge/BridgeProxy;->-get6(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/samsung/android/knox/SemPersonaManager;->getContainerName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v11, v7

    .line 2570
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2583
    .end local v8    # "info":Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;
    :cond_2
    const-string/jumbo v17, "personaIds"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0, v10}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 2584
    const-string/jumbo v17, "personaTypes"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0, v12}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2585
    const-string/jumbo v17, "personaNames"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0, v11}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2590
    .end local v7    # "i":I
    .end local v10    # "personaIds":[I
    .end local v11    # "personaNames":[Ljava/lang/String;
    .end local v12    # "personaTypes":[Ljava/lang/String;
    .end local v15    # "size":I
    :cond_3
    return-object v14

    .line 2592
    .end local v14    # "resp":Landroid/os/Bundle;
    :cond_4
    const-string/jumbo v17, "cmd"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/bridge/BridgeProxy;->-wrap4(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 2593
    const-string/jumbo v17, "callerPkgName"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/bridge/BridgeProxy;->-wrap3(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 2594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->-wrap1(Lcom/android/server/bridge/BridgeProxy;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v17

    return-object v17

    .line 2597
    :cond_5
    const/16 v17, 0x0

    return-object v17

    .line 2598
    :cond_6
    const-string/jumbo v17, "notifysync"

    const-string/jumbo v18, "cmd"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 2600
    const-string/jumbo v17, "callerPkgName"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/bridge/BridgeProxy;->-wrap3(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 2602
    const-string/jumbo v17, "contentIntent"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/app/PendingIntent;

    .line 2604
    .local v9, "intent":Landroid/app/PendingIntent;
    invoke-virtual {v9}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 2606
    .local v5, "bundle":Landroid/os/Bundle;
    new-instance v6, Landroid/app/Command;

    invoke-direct {v6}, Landroid/app/Command;-><init>()V

    .line 2607
    .local v6, "command":Landroid/app/Command;
    const-string/jumbo v17, "personaId"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v6, Landroid/app/Command;->personaId:I

    .line 2608
    const-string/jumbo v17, "contentIntent"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Landroid/app/PendingIntent;

    move-object/from16 v0, v17

    iput-object v0, v6, Landroid/app/Command;->contentIntent:Landroid/app/PendingIntent;

    .line 2609
    const-string/jumbo v17, "commandType"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v6, Landroid/app/Command;->type:Ljava/lang/String;

    .line 2610
    const-string/jumbo v17, "intent"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Landroid/content/Intent;

    move-object/from16 v0, v17

    iput-object v0, v6, Landroid/app/Command;->intent:Landroid/content/Intent;

    .line 2612
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v17

    .line 2613
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "personaId"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 2614
    const-string/jumbo v19, "contentIntent"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v19

    .line 2613
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 2614
    const-string/jumbo v19, ":"

    .line 2613
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 2615
    const-string/jumbo v19, "commandType"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2613
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 2612
    invoke-static/range {v17 .. v18}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/bridge/BridgeProxy;->-get18(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemRemoteContentManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/samsung/android/knox/SemRemoteContentManager;->executeCommandForPersona(Landroid/app/Command;)V

    .line 2645
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v6    # "command":Landroid/app/Command;
    .end local v9    # "intent":Landroid/app/PendingIntent;
    :cond_7
    :goto_1
    const/16 v17, 0x0

    return-object v17

    .line 2625
    :cond_8
    const-string/jumbo v17, "RequestUpdateBadgeCount"

    const-string/jumbo v18, "action"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 2626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/bridge/BridgeProxy;->-get20(Lcom/android/server/bridge/BridgeProxy;)Lcom/android/server/bridge/operations/ProcessBadgeData;

    move-result-object v17

    if-eqz v17, :cond_7

    .line 2627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/bridge/BridgeProxy;->-get20(Lcom/android/server/bridge/BridgeProxy;)Lcom/android/server/bridge/operations/ProcessBadgeData;

    move-result-object v17

    const-string/jumbo v18, "userid"

    const/16 v19, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/bridge/operations/ProcessBadgeData;->trySync(I)V

    goto :goto_1

    .line 2635
    :cond_9
    const-string/jumbo v17, "GetExportPolicy"

    const-string/jumbo v18, "action"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 2636
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 2637
    .restart local v5    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v17, "syncerName"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2638
    .local v16, "syncerName":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v17

    .line 2639
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, " get export policy for"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " for user "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 2640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/bridge/BridgeProxy;->-get9(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v19

    .line 2639
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 2638
    invoke-static/range {v17 .. v18}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v17, v0

    const-string/jumbo v18, "knox-export-data"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/server/bridge/BridgeProxy;->-wrap11(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2642
    .local v13, "policy":Ljava/lang/String;
    const-string/jumbo v17, "policyValue"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2643
    return-object v5
.end method
