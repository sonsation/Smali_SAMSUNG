.class Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MiscPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SIMCardBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    .prologue
    .line 715
    iput-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;-><init>(Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 722
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 723
    .local v2, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    invoke-static {v11}, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->-get0(Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, " action is : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    const-string/jumbo v11, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 726
    const-string/jumbo v11, "ss"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 727
    .local v10, "stateExtra":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    invoke-static {v11}, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->-get0(Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, " state Extra is : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    const-string/jumbo v11, "ABSENT"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 730
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    invoke-static {v11}, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->-get0(Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, " SIM Card State :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v13}, Lcom/android/internal/telephony/IccCardConstants$State;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    const-string/jumbo v11, "SimChangeTime"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 733
    const-string/jumbo v13, "/data/system/SimCard.dat"

    .line 732
    invoke-static {v11, v12, v13}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 734
    const-string/jumbo v11, "SimChangeOperation"

    const-string/jumbo v12, "1"

    .line 735
    const-string/jumbo v13, "/data/system/SimCard.dat"

    .line 734
    invoke-static {v11, v12, v13}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 738
    new-instance v8, Ljava/io/File;

    const-string/jumbo v11, "/data/system/SimCard.dat"

    invoke-direct {v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 739
    .local v8, "lFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 740
    const/16 v12, 0x1a0

    const/4 v13, -0x1

    .line 741
    const/4 v14, -0x1

    .line 739
    invoke-static {v11, v12, v13, v14}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 743
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v11, "com.samsung.android.knox.intent.action.SIM_CARD_CHANGED"

    invoke-direct {v7, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 744
    .local v7, "i_new":Landroid/content/Intent;
    const-string/jumbo v11, "com.samsung.android.knox.intent.extra.SIM_CHANGE_INFO"

    .line 745
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    iget-object v12, v12, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    new-instance v13, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    invoke-direct {v13, v14}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v12, v13}, Lcom/android/server/enterprise/general/MiscPolicy;->getLastSimChangeInfo(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;

    move-result-object v12

    .line 744
    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 746
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    invoke-static {v11}, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->-get1(Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 750
    new-instance v5, Landroid/content/Intent;

    .line 751
    const-string/jumbo v11, "com.samsung.edm.intent.action.SIM_CARD_CHANGED"

    .line 750
    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 752
    .local v5, "i":Landroid/content/Intent;
    const-string/jumbo v11, "simChangeInfo"

    .line 753
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    iget-object v12, v12, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    new-instance v13, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    invoke-direct {v13, v14}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v12, v13}, Lcom/android/server/enterprise/general/MiscPolicy;->getLastSimChangeInfo(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;

    move-result-object v12

    invoke-static {v12}, Landroid/app/enterprise/SimChangeInfo;->convertToOld(Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;)Landroid/app/enterprise/SimChangeInfo;

    move-result-object v12

    .line 752
    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 754
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    invoke-static {v11}, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->-get1(Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 757
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v11, "android.intent.action.sec.SIM_CARD_CHANGED"

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 758
    .local v6, "i_backward":Landroid/content/Intent;
    const-string/jumbo v11, "simChangeInfo"

    .line 759
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    iget-object v12, v12, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    new-instance v13, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    invoke-direct {v13, v14}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v12, v13}, Lcom/android/server/enterprise/general/MiscPolicy;->getLastSimChangeInfo(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;

    move-result-object v12

    invoke-static {v12}, Landroid/app/enterprise/SimChangeInfo;->convertToOld(Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;)Landroid/app/enterprise/SimChangeInfo;

    move-result-object v12

    .line 758
    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 760
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    invoke-static {v11}, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->-get1(Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 718
    .end local v2    # "action":Ljava/lang/String;
    .end local v5    # "i":Landroid/content/Intent;
    .end local v6    # "i_backward":Landroid/content/Intent;
    .end local v7    # "i_new":Landroid/content/Intent;
    .end local v8    # "lFile":Ljava/io/File;
    .end local v10    # "stateExtra":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 762
    .restart local v2    # "action":Ljava/lang/String;
    .restart local v10    # "stateExtra":Ljava/lang/String;
    :cond_1
    const-string/jumbo v11, "LOADED"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 763
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    invoke-static {v11}, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->-get0(Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, " SIM Card State : LOADED"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    invoke-static {v11}, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->-wrap0(Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;)V

    .line 767
    const-string/jumbo v11, "SimChangeTime"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 768
    const-string/jumbo v13, "/data/system/SimCard.dat"

    .line 767
    invoke-static {v11, v12, v13}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 770
    const-string/jumbo v11, "PreviousSimSerialNumber"

    const-string/jumbo v12, "/data/system/SimCard.dat"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 771
    .local v9, "previousSN":Ljava/lang/String;
    const-string/jumbo v11, "CurrentSimSerialNumber"

    const-string/jumbo v12, "/data/system/SimCard.dat"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 773
    .local v3, "currentSN":Ljava/lang/String;
    if-eqz v9, :cond_2

    invoke-virtual {v9, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 778
    :cond_2
    const-string/jumbo v11, "SimChangeOperation"

    const-string/jumbo v12, "3"

    .line 779
    const-string/jumbo v13, "/data/system/SimCard.dat"

    .line 778
    invoke-static {v11, v12, v13}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 782
    :goto_1
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v11, "com.samsung.android.knox.intent.action.SIM_CARD_CHANGED"

    invoke-direct {v7, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 783
    .restart local v7    # "i_new":Landroid/content/Intent;
    const-string/jumbo v11, "com.samsung.android.knox.intent.extra.SIM_CHANGE_INFO"

    .line 784
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    iget-object v12, v12, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    new-instance v13, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    invoke-direct {v13, v14}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v12, v13}, Lcom/android/server/enterprise/general/MiscPolicy;->getLastSimChangeInfo(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;

    move-result-object v12

    .line 783
    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 785
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    invoke-static {v11}, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->-get1(Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 787
    new-instance v5, Landroid/content/Intent;

    .line 788
    const-string/jumbo v11, "com.samsung.edm.intent.action.SIM_CARD_CHANGED"

    .line 787
    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 789
    .restart local v5    # "i":Landroid/content/Intent;
    const-string/jumbo v11, "simChangeInfo"

    .line 790
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    iget-object v12, v12, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    new-instance v13, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    invoke-direct {v13, v14}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v12, v13}, Lcom/android/server/enterprise/general/MiscPolicy;->getLastSimChangeInfo(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;

    move-result-object v12

    invoke-static {v12}, Landroid/app/enterprise/SimChangeInfo;->convertToOld(Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;)Landroid/app/enterprise/SimChangeInfo;

    move-result-object v12

    .line 789
    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 791
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    invoke-static {v11}, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->-get1(Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 794
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v11, "android.intent.action.sec.SIM_CARD_CHANGED"

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 795
    .restart local v6    # "i_backward":Landroid/content/Intent;
    const-string/jumbo v11, "simChangeInfo"

    .line 796
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    iget-object v12, v12, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    new-instance v13, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    invoke-direct {v13, v14}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v12, v13}, Lcom/android/server/enterprise/general/MiscPolicy;->getLastSimChangeInfo(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;

    move-result-object v12

    invoke-static {v12}, Landroid/app/enterprise/SimChangeInfo;->convertToOld(Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;)Landroid/app/enterprise/SimChangeInfo;

    move-result-object v12

    .line 795
    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 797
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    invoke-static {v11}, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->-get1(Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 801
    .end local v2    # "action":Ljava/lang/String;
    .end local v3    # "currentSN":Ljava/lang/String;
    .end local v5    # "i":Landroid/content/Intent;
    .end local v6    # "i_backward":Landroid/content/Intent;
    .end local v7    # "i_new":Landroid/content/Intent;
    .end local v9    # "previousSN":Ljava/lang/String;
    .end local v10    # "stateExtra":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 802
    .local v4, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    invoke-static {v11}, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->-get0(Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "SIMCardBroadcastReceiver Ex:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 774
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "action":Ljava/lang/String;
    .restart local v3    # "currentSN":Ljava/lang/String;
    .restart local v9    # "previousSN":Ljava/lang/String;
    .restart local v10    # "stateExtra":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string/jumbo v11, "SimChangeOperation"

    const-string/jumbo v12, "2"

    .line 775
    const-string/jumbo v13, "/data/system/SimCard.dat"

    .line 774
    invoke-static {v11, v12, v13}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
