.class Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;
.super Ljava/lang/Object;
.source "NetworkManagementService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetdCallbackReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method private constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/NetworkManagementService;

    .prologue
    .line 896
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/NetworkManagementService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;-><init>(Lcom/android/server/NetworkManagementService;)V

    return-void
.end method

.method private getWifiConnectedChannel(I)I
    .locals 4
    .param p1, "frequency"    # I

    .prologue
    const/16 v3, 0xf

    .line 1272
    const/4 v0, -0x1

    .line 1274
    .local v0, "channel":I
    add-int/lit16 v1, p1, -0x96c

    .line 1275
    .local v1, "freqDiff":I
    if-nez v1, :cond_1

    .line 1276
    const/4 v0, 0x1

    .line 1286
    :cond_0
    :goto_0
    return v0

    .line 1278
    :cond_1
    div-int/lit8 v2, v1, 0x5

    add-int/lit8 v0, v2, 0x1

    .line 1279
    const/16 v2, 0xb

    if-le v0, v2, :cond_2

    if-gt v0, v3, :cond_2

    .line 1280
    const/4 v0, 0x0

    .line 1282
    :cond_2
    if-le v0, v3, :cond_0

    .line 1283
    const/16 v0, 0x95

    goto :goto_0
.end method


# virtual methods
.method public onCheckHoldWakeLock(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 921
    const/16 v0, 0x265

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDaemonConnected()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 899
    const-string/jumbo v0, "NetworkManagement"

    const-string/jumbo v1, "onDaemonConnected()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->-get2(Lcom/android/server/NetworkManagementService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 904
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->-get2(Lcom/android/server/NetworkManagementService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 905
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0, v2}, Lcom/android/server/NetworkManagementService;->-set0(Lcom/android/server/NetworkManagementService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 898
    :goto_0
    return-void

    .line 909
    :cond_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->-get5(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;

    invoke-direct {v1, p0}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;-><init>(Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 45
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    .prologue
    .line 926
    const-string/jumbo v4, "Invalid event from daemon (%s)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    .line 927
    .local v26, "errorMessage":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 1268
    :goto_0
    const/4 v4, 0x0

    return v4

    .line 936
    :sswitch_0
    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x4

    if-lt v4, v5, :cond_0

    const/4 v4, 0x1

    aget-object v4, p3, v4

    const-string/jumbo v5, "Iface"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 939
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "added"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 940
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v5, 0x3

    aget-object v5, p3, v5

    invoke-static {v4, v5}, Lcom/android/server/NetworkManagementService;->-wrap4(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    .line 943
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string/jumbo v8, "NetworkManagementService"

    .line 944
    const-string/jumbo v9, "Added Wi-Fi hotspot "

    .line 942
    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x1

    invoke-static/range {v4 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 946
    const/4 v4, 0x1

    return v4

    .line 937
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v26

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 947
    :cond_1
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "removed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 948
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v5, 0x3

    aget-object v5, p3, v5

    invoke-static {v4, v5}, Lcom/android/server/NetworkManagementService;->-wrap9(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    .line 951
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string/jumbo v8, "NetworkManagementService"

    .line 952
    const-string/jumbo v9, "Removed Wi-Fi hotspot"

    .line 950
    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x1

    invoke-static/range {v4 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 954
    const/4 v4, 0x1

    return v4

    .line 955
    :cond_2
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "changed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    .line 956
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v5, 0x3

    aget-object v5, p3, v5

    const/4 v6, 0x4

    aget-object v6, p3, v6

    const-string/jumbo v7, "up"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/android/server/NetworkManagementService;->-wrap10(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    .line 959
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string/jumbo v8, "NetworkManagementService"

    .line 960
    const-string/jumbo v9, "Changed Wi-Fi hotspot"

    .line 958
    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x1

    invoke-static/range {v4 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 962
    const/4 v4, 0x1

    return v4

    .line 963
    :cond_3
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "linkstate"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x5

    if-ne v4, v5, :cond_4

    .line 964
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v5, 0x3

    aget-object v5, p3, v5

    const/4 v6, 0x4

    aget-object v6, p3, v6

    const-string/jumbo v7, "up"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/android/server/NetworkManagementService;->-wrap7(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    .line 970
    const/4 v4, 0x1

    return v4

    .line 972
    :cond_4
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v26

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 979
    :sswitch_1
    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x5

    if-lt v4, v5, :cond_5

    const/4 v4, 0x1

    aget-object v4, p3, v4

    const-string/jumbo v5, "limit"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 982
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "alert"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 983
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v5, 0x3

    aget-object v5, p3, v5

    const/4 v6, 0x4

    aget-object v6, p3, v6

    invoke-static {v4, v5, v6}, Lcom/android/server/NetworkManagementService;->-wrap11(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    const/4 v4, 0x1

    return v4

    .line 980
    :cond_5
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v26

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 986
    :cond_6
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v26

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 993
    :sswitch_2
    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x3

    if-lt v4, v5, :cond_7

    const/4 v4, 0x1

    aget-object v4, p3, v4

    const-string/jumbo v5, "IfaceMessage"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 996
    const-string/jumbo v4, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onEvent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    const/4 v4, 0x4

    aget-object v4, p3, v4

    if-eqz v4, :cond_8

    .line 998
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x3

    aget-object v6, p3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x4

    aget-object v6, p3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/NetworkManagementService;->-wrap8(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    .line 1002
    :goto_1
    const/4 v4, 0x1

    return v4

    .line 994
    :cond_7
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v26

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1000
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v5, 0x3

    aget-object v5, p3, v5

    invoke-static {v4, v5}, Lcom/android/server/NetworkManagementService;->-wrap8(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    goto :goto_1

    .line 1009
    :sswitch_3
    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x4

    if-lt v4, v5, :cond_a

    const/4 v4, 0x1

    aget-object v4, p3, v4

    const-string/jumbo v5, "IfaceClass"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1012
    const-wide/16 v8, 0x0

    .line 1013
    .local v8, "timestampNanos":J
    const/4 v10, -0x1

    .line 1014
    .local v10, "processUid":I
    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x5

    if-lt v4, v5, :cond_b

    .line 1016
    const/4 v4, 0x4

    :try_start_0
    aget-object v4, p3, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 1017
    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x6

    if-ne v4, v5, :cond_9

    .line 1018
    const/4 v4, 0x5

    aget-object v4, p3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_6

    move-result v10

    .line 1024
    :cond_9
    :goto_2
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "active"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    .line 1025
    .local v34, "isActive":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v4, 0x3

    aget-object v4, p3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1026
    if-eqz v34, :cond_c

    const/4 v7, 0x3

    .line 1027
    :goto_3
    const/4 v11, 0x0

    .line 1025
    invoke-static/range {v5 .. v11}, Lcom/android/server/NetworkManagementService;->-wrap5(Lcom/android/server/NetworkManagementService;IIJIZ)V

    .line 1029
    const/4 v4, 0x1

    return v4

    .line 1010
    .end local v8    # "timestampNanos":J
    .end local v10    # "processUid":I
    .end local v34    # "isActive":Z
    :cond_a
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v26

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1022
    .restart local v8    # "timestampNanos":J
    .restart local v10    # "processUid":I
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v8

    goto :goto_2

    .line 1027
    .restart local v34    # "isActive":Z
    :cond_c
    const/4 v7, 0x1

    goto :goto_3

    .line 1037
    .end local v8    # "timestampNanos":J
    .end local v10    # "processUid":I
    .end local v34    # "isActive":Z
    :sswitch_4
    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x7

    if-lt v4, v5, :cond_d

    const/4 v4, 0x1

    aget-object v4, p3, v4

    const-string/jumbo v5, "Address"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1041
    const/4 v4, 0x4

    aget-object v31, p3, v4

    .line 1044
    .local v31, "iface":Ljava/lang/String;
    const/4 v4, 0x5

    :try_start_1
    aget-object v4, p3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    .line 1045
    .local v28, "flags":I
    const/4 v4, 0x6

    aget-object v4, p3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v40

    .line 1046
    .local v40, "scope":I
    new-instance v22, Landroid/net/LinkAddress;

    const/4 v4, 0x3

    aget-object v4, p3, v4

    move-object/from16 v0, v22

    move/from16 v1, v28

    move/from16 v2, v40

    invoke-direct {v0, v4, v1, v2}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1053
    .local v22, "address":Landroid/net/LinkAddress;
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "updated"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1054
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-static {v4, v0, v1}, Lcom/android/server/NetworkManagementService;->-wrap3(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V

    .line 1058
    :goto_4
    const/4 v4, 0x1

    return v4

    .line 1038
    .end local v22    # "address":Landroid/net/LinkAddress;
    .end local v28    # "flags":I
    .end local v31    # "iface":Ljava/lang/String;
    .end local v40    # "scope":I
    :cond_d
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v26

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1049
    .restart local v31    # "iface":Ljava/lang/String;
    :catch_0
    move-exception v24

    .line 1050
    .local v24, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-direct {v4, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 1047
    .end local v24    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v25

    .line 1048
    .local v25, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-direct {v4, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 1056
    .end local v25    # "e":Ljava/lang/NumberFormatException;
    .restart local v22    # "address":Landroid/net/LinkAddress;
    .restart local v28    # "flags":I
    .restart local v40    # "scope":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-static {v4, v0, v1}, Lcom/android/server/NetworkManagementService;->-wrap2(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V

    goto :goto_4

    .line 1067
    .end local v22    # "address":Landroid/net/LinkAddress;
    .end local v28    # "flags":I
    .end local v31    # "iface":Ljava/lang/String;
    .end local v40    # "scope":I
    :sswitch_5
    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x6

    if-ne v4, v5, :cond_f

    .line 1068
    const/4 v4, 0x1

    aget-object v4, p3, v4

    const-string/jumbo v5, "DnsInfo"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1067
    if-eqz v4, :cond_f

    .line 1069
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "servers"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1067
    if-eqz v4, :cond_f

    .line 1071
    const/4 v4, 0x4

    :try_start_2
    aget-object v4, p3, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v36

    .line 1075
    .local v36, "lifetime":J
    const/4 v4, 0x5

    aget-object v4, p3, v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v41

    .line 1076
    .local v41, "servers":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v5, 0x3

    aget-object v5, p3, v5

    move-wide/from16 v0, v36

    move-object/from16 v2, v41

    invoke-static {v4, v5, v0, v1, v2}, Lcom/android/server/NetworkManagementService;->-wrap6(Lcom/android/server/NetworkManagementService;Ljava/lang/String;J[Ljava/lang/String;)V

    .line 1078
    .end local v36    # "lifetime":J
    .end local v41    # "servers":[Ljava/lang/String;
    :cond_f
    const/4 v4, 0x1

    return v4

    .line 1072
    :catch_2
    move-exception v25

    .line 1073
    .restart local v25    # "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v26

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1085
    .end local v25    # "e":Ljava/lang/NumberFormatException;
    :sswitch_6
    const/4 v4, 0x1

    aget-object v4, p3, v4

    const-string/jumbo v5, "Route"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x6

    if-ge v4, v5, :cond_11

    .line 1086
    :cond_10
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v26

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1089
    :cond_11
    const/16 v44, 0x0

    .line 1090
    .local v44, "via":Ljava/lang/String;
    const/16 v23, 0x0

    .line 1091
    .local v23, "dev":Ljava/lang/String;
    const/16 v43, 0x1

    .line 1092
    .local v43, "valid":Z
    const/16 v30, 0x4

    .end local v23    # "dev":Ljava/lang/String;
    .end local v44    # "via":Ljava/lang/String;
    .local v30, "i":I
    :goto_5
    add-int/lit8 v4, v30, 0x1

    move-object/from16 v0, p3

    array-length v5, v0

    if-ge v4, v5, :cond_16

    if-eqz v43, :cond_16

    .line 1093
    aget-object v4, p3, v30

    const-string/jumbo v5, "dev"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1094
    if-nez v23, :cond_12

    .line 1095
    add-int/lit8 v4, v30, 0x1

    aget-object v23, p3, v4

    .line 1092
    :goto_6
    add-int/lit8 v30, v30, 0x2

    goto :goto_5

    .line 1097
    :cond_12
    const/16 v43, 0x0

    goto :goto_6

    .line 1099
    :cond_13
    aget-object v4, p3, v30

    const-string/jumbo v5, "via"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1100
    if-nez v44, :cond_14

    .line 1101
    add-int/lit8 v4, v30, 0x1

    aget-object v44, p3, v4

    .local v44, "via":Ljava/lang/String;
    goto :goto_6

    .line 1103
    .end local v44    # "via":Ljava/lang/String;
    :cond_14
    const/16 v43, 0x0

    goto :goto_6

    .line 1106
    :cond_15
    const/16 v43, 0x0

    goto :goto_6

    .line 1109
    :cond_16
    if-eqz v43, :cond_18

    .line 1112
    const/16 v29, 0x0

    .line 1113
    .local v29, "gateway":Ljava/net/InetAddress;
    if-eqz v44, :cond_17

    :try_start_3
    invoke-static/range {v44 .. v44}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v29

    .line 1114
    .end local v29    # "gateway":Ljava/net/InetAddress;
    :cond_17
    new-instance v38, Landroid/net/RouteInfo;

    new-instance v4, Landroid/net/IpPrefix;

    const/4 v5, 0x3

    aget-object v5, p3, v5

    invoke-direct {v4, v5}, Landroid/net/IpPrefix;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v38

    move-object/from16 v1, v29

    move-object/from16 v2, v23

    invoke-direct {v0, v4, v1, v2}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 1115
    .local v38, "route":Landroid/net/RouteInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v5, 0x2

    aget-object v5, p3, v5

    move-object/from16 v0, v38

    invoke-static {v4, v5, v0}, Lcom/android/server/NetworkManagementService;->-wrap12(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1116
    const/4 v4, 0x1

    return v4

    .line 1117
    .end local v38    # "route":Landroid/net/RouteInfo;
    :catch_3
    move-exception v24

    .line 1119
    :cond_18
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v26

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1122
    .end local v30    # "i":I
    .end local v43    # "valid":Z
    :sswitch_7
    const/4 v4, 0x1

    aget-object v4, p3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v42

    .line 1123
    .local v42, "uid":I
    const/4 v4, 0x2

    aget-object v4, p3, v4

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v27

    .line 1125
    .local v27, "firstPacket":[B
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    move/from16 v0, v42

    move-object/from16 v1, v27

    invoke-interface {v4, v0, v1}, Landroid/app/IActivityManager;->notifyCleartextNetwork(I[B)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 1126
    :catch_4
    move-exception v32

    .local v32, "ignored":Landroid/os/RemoteException;
    goto/16 :goto_0

    .line 1132
    .end local v27    # "firstPacket":[B
    .end local v32    # "ignored":Landroid/os/RemoteException;
    .end local v42    # "uid":I
    :sswitch_8
    const/4 v4, 0x4

    :try_start_5
    aget-object v4, p3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 1133
    .local v15, "state":I
    packed-switch v15, :pswitch_data_0

    .line 1159
    .end local v15    # "state":I
    :goto_7
    const/4 v4, 0x1

    return v4

    .line 1135
    .restart local v15    # "state":I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->-get6(Lcom/android/server/NetworkManagementService;)Lcom/android/server/TcpOptimizerLogger;

    move-result-object v4

    new-instance v11, Lcom/android/server/TcpStats;

    const/4 v5, 0x1

    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    const/4 v5, 0x2

    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 1136
    const/4 v5, 0x3

    aget-object v14, p3, v5

    const/4 v5, 0x5

    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    const/4 v5, 0x6

    aget-object v17, p3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v5}, Lcom/android/server/NetworkManagementService;->-wrap0(Lcom/android/server/NetworkManagementService;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    .line 1135
    invoke-direct/range {v11 .. v18}, Lcom/android/server/TcpStats;-><init>(IILjava/lang/String;IILjava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v4, v11}, Lcom/android/server/TcpOptimizerLogger;->add(Lcom/android/server/TcpStats;)V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_7

    .line 1155
    .end local v15    # "state":I
    :catch_5
    move-exception v25

    .line 1156
    .restart local v25    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v4, "NetworkManagement"

    const-string/jumbo v5, "parsing err"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    invoke-virtual/range {v25 .. v25}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_7

    .line 1139
    .end local v25    # "e":Ljava/lang/NumberFormatException;
    .restart local v15    # "state":I
    :pswitch_1
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->-get6(Lcom/android/server/NetworkManagementService;)Lcom/android/server/TcpOptimizerLogger;

    move-result-object v4

    new-instance v11, Lcom/android/server/TcpStats;

    const/4 v5, 0x1

    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    const/4 v5, 0x2

    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 1140
    const/4 v5, 0x3

    aget-object v14, p3, v5

    const/4 v5, 0x5

    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    const/4 v5, 0x6

    aget-object v17, p3, v5

    .line 1141
    const/4 v5, 0x7

    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    const/16 v5, 0x8

    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v5}, Lcom/android/server/NetworkManagementService;->-wrap0(Lcom/android/server/NetworkManagementService;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    .line 1139
    invoke-direct/range {v11 .. v20}, Lcom/android/server/TcpStats;-><init>(IILjava/lang/String;IILjava/lang/String;IILjava/lang/Boolean;)V

    invoke-virtual {v4, v11}, Lcom/android/server/TcpOptimizerLogger;->add(Lcom/android/server/TcpStats;)V

    goto/16 :goto_7

    .line 1144
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->-get6(Lcom/android/server/NetworkManagementService;)Lcom/android/server/TcpOptimizerLogger;

    move-result-object v4

    new-instance v11, Lcom/android/server/TcpStats;

    const/4 v5, 0x1

    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    const/4 v5, 0x2

    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 1145
    const/4 v5, 0x3

    aget-object v14, p3, v5

    const/4 v5, 0x5

    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v5}, Lcom/android/server/NetworkManagementService;->-wrap0(Lcom/android/server/NetworkManagementService;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .line 1144
    invoke-direct/range {v11 .. v17}, Lcom/android/server/TcpStats;-><init>(IILjava/lang/String;IILjava/lang/Boolean;)V

    invoke-virtual {v4, v11}, Lcom/android/server/TcpOptimizerLogger;->add(Lcom/android/server/TcpStats;)V

    goto/16 :goto_7

    .line 1148
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->-get6(Lcom/android/server/NetworkManagementService;)Lcom/android/server/TcpOptimizerLogger;

    move-result-object v4

    new-instance v11, Lcom/android/server/TcpStats;

    const/4 v5, 0x1

    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    const/4 v5, 0x2

    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 1149
    const/4 v5, 0x3

    aget-object v14, p3, v5

    const/4 v5, 0x5

    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v5}, Lcom/android/server/NetworkManagementService;->-wrap0(Lcom/android/server/NetworkManagementService;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .line 1148
    invoke-direct/range {v11 .. v17}, Lcom/android/server/TcpStats;-><init>(IILjava/lang/String;IILjava/lang/Boolean;)V

    invoke-virtual {v4, v11}, Lcom/android/server/TcpOptimizerLogger;->add(Lcom/android/server/TcpStats;)V
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_7

    .line 1163
    .end local v15    # "state":I
    :sswitch_9
    new-instance v39, Ljava/lang/StringBuffer;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuffer;-><init>()V

    .line 1164
    .local v39, "sb":Ljava/lang/StringBuffer;
    const/16 v30, 0x0

    .restart local v30    # "i":I
    :goto_8
    move-object/from16 v0, p3

    array-length v4, v0

    move/from16 v0, v30

    if-ge v0, v4, :cond_1a

    .line 1166
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-boolean v4, Landroid/net/wifi/WifiApCust;->DBG:Z

    if-nez v4, :cond_19

    aget-object v4, p3, v30

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x11

    if-ne v4, v5, :cond_19

    .line 1167
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p3, v30

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p3, v30

    const/16 v6, 0xc

    const/16 v7, 0x11

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1164
    :goto_9
    add-int/lit8 v30, v30, 0x1

    goto :goto_8

    .line 1169
    :cond_19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p3, v30

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_9

    .line 1172
    :cond_1a
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    move-result-object v4

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiApCust;->addMHSClientHistoryLog(Ljava/lang/String;)V

    .line 1173
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "sta_join"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "sta_leave"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1175
    :cond_1b
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "sta_join"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1176
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v19

    .line 1177
    const-string/jumbo v20, "NetworkManagementService"

    .line 1178
    const-string/jumbo v21, "Client device connected to Wi-Fi hotspot"

    .line 1176
    const/16 v16, 0x5

    const/16 v17, 0x4

    const/16 v18, 0x1

    invoke-static/range {v16 .. v21}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 1185
    :cond_1c
    :goto_a
    new-instance v33, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    move-object/from16 v0, v33

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1186
    .local v33, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "EVENT"

    const/4 v5, 0x2

    aget-object v5, p3, v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1187
    const-string/jumbo v4, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "WifiAp Sta Event, EVENT = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v6, p3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x3

    if-le v4, v5, :cond_1d

    .line 1189
    const-string/jumbo v4, "NUM"

    const/4 v5, 0x3

    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1190
    const-string/jumbo v4, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "NUM = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v6, p3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    :cond_1d
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "sta_leave"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x4

    if-le v4, v5, :cond_1e

    .line 1193
    const-string/jumbo v4, "MAC"

    const/4 v5, 0x4

    aget-object v5, p3, v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1195
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->-get4(Lcom/android/server/NetworkManagementService;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1196
    const/4 v4, 0x1

    return v4

    .line 1179
    .end local v33    # "intent":Landroid/content/Intent;
    :cond_1f
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "sta_leave"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1180
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v19

    .line 1181
    const-string/jumbo v20, "NetworkManagementService"

    .line 1182
    const-string/jumbo v21, "Client device disconnected from Wi-Fi hotspot"

    .line 1180
    const/16 v16, 0x5

    const/16 v17, 0x4

    const/16 v18, 0x1

    invoke-static/range {v16 .. v21}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 1198
    :cond_20
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "sta_assoc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1199
    new-instance v33, Landroid/content/Intent;

    const-string/jumbo v4, "android.net.wifi.WIFI_AP_STA_ASSOCIATED_ACTION"

    move-object/from16 v0, v33

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1200
    .restart local v33    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "EVENT"

    const/4 v5, 0x2

    aget-object v5, p3, v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1201
    const-string/jumbo v4, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "WifiAp Sta Event, EVENT = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v6, p3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x3

    if-le v4, v5, :cond_21

    .line 1203
    const-string/jumbo v4, "MAC"

    const/4 v5, 0x3

    aget-object v5, p3, v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1205
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->-get4(Lcom/android/server/NetworkManagementService;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1206
    const/4 v4, 0x1

    return v4

    .line 1208
    .end local v33    # "intent":Landroid/content/Intent;
    :cond_22
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "wps_success"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "wps_fail"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "wps_timeout"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "wps_overlap"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "wps_pin_needed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1209
    :cond_23
    const-string/jumbo v4, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Wps State Action : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v6, p3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    new-instance v33, Landroid/content/Intent;

    const-string/jumbo v4, "android.net.wifi.WIFI_AP_WPS_STATE_ACTION"

    move-object/from16 v0, v33

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1211
    .restart local v33    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "EVENT"

    const/4 v5, 0x2

    aget-object v5, p3, v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1212
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->-get4(Lcom/android/server/NetworkManagementService;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1213
    const/4 v4, 0x1

    return v4

    .line 1216
    .end local v33    # "intent":Landroid/content/Intent;
    :cond_24
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "driver_state"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    const/4 v4, 0x3

    aget-object v4, p3, v4

    const-string/jumbo v5, "HANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 1217
    new-instance v33, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.android.net.wifi.WIFI_AP_DRIVER_STATE_HANGED"

    move-object/from16 v0, v33

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1218
    .restart local v33    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->-get4(Lcom/android/server/NetworkManagementService;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1219
    const/4 v4, 0x1

    return v4

    .line 1222
    .end local v33    # "intent":Landroid/content/Intent;
    :cond_25
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "channel_switch"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1243
    :cond_26
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "channel_changed_5to2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 1263
    :cond_27
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 1264
    const-string/jumbo v5, "Invalid event from daemon (%s)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1263
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1020
    .end local v30    # "i":I
    .end local v39    # "sb":Ljava/lang/StringBuffer;
    .restart local v8    # "timestampNanos":J
    .restart local v10    # "processUid":I
    :catch_6
    move-exception v35

    .local v35, "ne":Ljava/lang/NumberFormatException;
    goto/16 :goto_2

    .line 927
    :sswitch_data_0
    .sparse-switch
        0x258 -> :sswitch_0
        0x259 -> :sswitch_1
        0x265 -> :sswitch_3
        0x266 -> :sswitch_4
        0x267 -> :sswitch_5
        0x268 -> :sswitch_6
        0x269 -> :sswitch_7
        0x26a -> :sswitch_2
        0x28b -> :sswitch_9
        0x2bb -> :sswitch_8
    .end sparse-switch

    .line 1133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
