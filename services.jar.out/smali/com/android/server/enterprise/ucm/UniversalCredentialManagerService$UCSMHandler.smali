.class Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;
.super Landroid/os/Handler;
.source "UniversalCredentialManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UCSMHandler"
.end annotation


# static fields
.field public static final MSG_CLEAN_INFO:I = 0x3

.field public static final MSG_CLEAN_USER_INFO:I = 0x1

.field public static final MSG_CONTAINER_LOCK_STATUS_UPDATE:I = 0x9

.field public static final MSG_LOAD_ADMINS:I = 0x2

.field public static final MSG_LOAD_PLUGINS:I = 0x4

.field public static final MSG_LOAD_WHITELIST_AND_EXEMPT_APPS:I = 0x5

.field public static final MSG_LOCK_STATUS_UPDATE:I = 0x7

.field public static final MSG_PRE_ADMIN_REMOVED:I = 0xa

.field public static final MSG_REINSTALL_CA_CERT:I = 0x8

.field public static final MSG_SYNC_UP_DATA:I = 0x6


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    .prologue
    .line 602
    iput-object p1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    .line 603
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 602
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 70
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 607
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v63, v0

    packed-switch v63, :pswitch_data_0

    .line 606
    :cond_0
    :goto_0
    return-void

    .line 610
    :pswitch_0
    const/16 v45, 0x0

    .line 611
    .local v45, "ret":Z
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    .line 612
    .local v7, "adminUID":I
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 613
    .local v5, "adminId":Ljava/lang/String;
    const/16 v63, 0x1

    move/from16 v0, v63

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    .line 614
    const-string/jumbo v63, "adminUid"

    const/16 v64, 0x0

    aput-object v63, v46, v64

    .line 616
    .local v46, "sColumns":[Ljava/lang/String;
    const/16 v63, 0x1

    move/from16 v0, v63

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v47, v0

    .line 617
    const/16 v63, 0x0

    aput-object v5, v47, v63

    .line 622
    .local v47, "sValues":[Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get6(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v63

    .line 623
    const-string/jumbo v64, "UniversalCredentialEnforcedLockTypeTable"

    .line 622
    move-object/from16 v0, v63

    move-object/from16 v1, v64

    move-object/from16 v2, v46

    move-object/from16 v3, v47

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v45

    .line 628
    .end local v45    # "ret":Z
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "performPreAdminCleanup - Enforce Lock Type status- "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 624
    .restart local v45    # "ret":Z
    :catch_0
    move-exception v20

    .line 625
    .local v20, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get0()Z

    move-result v63

    if-eqz v63, :cond_1

    .line 626
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "performPreAdminCleanup - Exception delete"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 633
    .end local v5    # "adminId":Ljava/lang/String;
    .end local v7    # "adminUID":I
    .end local v20    # "e":Ljava/lang/Exception;
    .end local v45    # "ret":Z
    .end local v46    # "sColumns":[Ljava/lang/String;
    .end local v47    # "sValues":[Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-wrap6(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)V

    goto/16 :goto_0

    .line 637
    :pswitch_2
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "****MSG_CLEAN_USER_INFO block started****"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v54, v0

    .line 639
    .local v54, "userId":I
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "userId - "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v50

    .line 641
    .local v50, "ucmService":Lcom/samsung/android/knox/ucm/core/IUcmService;
    if-eqz v50, :cond_2

    .line 642
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "notifyChangeToPlugin is called for user removed..."

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :try_start_1
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    .line 645
    .local v19, "data":Landroid/os/Bundle;
    const-string/jumbo v63, "userId"

    move-object/from16 v0, v19

    move-object/from16 v1, v63

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 646
    const/16 v63, 0x0

    const/16 v64, 0xb

    move-object/from16 v0, v50

    move-object/from16 v1, v63

    move/from16 v2, v64

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    .line 647
    move-object/from16 v0, v50

    move/from16 v1, v54

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/ucm/core/IUcmService;->removeEnforcedLockTypeNotification(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 652
    .end local v19    # "data":Landroid/os/Bundle;
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v54

    invoke-static {v0, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-wrap11(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;I)V

    .line 653
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "****MSG_CLEAN_USER_INFO block ended****"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 648
    :catch_1
    move-exception v20

    .line 649
    .restart local v20    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "notifyChangeToPlugin Exception "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 657
    .end local v20    # "e":Ljava/lang/Exception;
    .end local v50    # "ucmService":Lcom/samsung/android/knox/ucm/core/IUcmService;
    .end local v54    # "userId":I
    :pswitch_3
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "****MSG_LOAD_ADMINS block started****"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-wrap4(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v51

    .line 660
    .local v51, "ucsAdmins":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get3(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v63

    if-eqz v63, :cond_3

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get3(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v51

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get3(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/util/List;->size()I

    move-result v63

    if-lez v63, :cond_3

    .line 663
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "adminIds size- "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get3(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v65

    invoke-interface/range {v65 .. v65}, Ljava/util/List;->size()I

    move-result v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 669
    .end local v51    # "ucsAdmins":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_3
    :goto_3
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "****MSG_LOAD_ADMINS block ended****"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get8(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v63

    const/16 v64, 0x4

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v37

    .line 671
    .local v37, "msg1":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get8(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 666
    .end local v37    # "msg1":Landroid/os/Message;
    :catch_2
    move-exception v20

    .line 667
    .restart local v20    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 675
    .end local v20    # "e":Ljava/lang/Exception;
    :pswitch_4
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "****MSG_CLEAN_INFO block started****"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :try_start_3
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, [I

    .line 678
    .local v13, "appsUid":[I
    if-eqz v13, :cond_c

    array-length v0, v13

    move/from16 v63, v0

    if-lez v63, :cond_c

    .line 679
    const/16 v63, 0x0

    array-length v0, v13

    move/from16 v65, v0

    move/from16 v64, v63

    :goto_4
    move/from16 v0, v64

    move/from16 v1, v65

    if-ge v0, v1, :cond_c

    aget v63, v13, v64

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v52

    .line 680
    .local v52, "uid":Ljava/lang/Integer;
    invoke-virtual/range {v52 .. v52}, Ljava/lang/Integer;->intValue()I

    move-result v63

    invoke-static/range {v63 .. v63}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v54

    .line 681
    .restart local v54    # "userId":I
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v66, Ljava/lang/StringBuilder;

    invoke-direct/range {v66 .. v66}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v67, "uid - "

    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v66

    const-string/jumbo v67, ", userId-"

    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    move-object/from16 v0, v66

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v66

    move-object/from16 v0, v63

    move-object/from16 v1, v66

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get3(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_4

    .line 684
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v66, "UCS admin uninstall. Start cleaning...."

    move-object/from16 v0, v63

    move-object/from16 v1, v66

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Integer;->intValue()I

    move-result v66

    move-object/from16 v0, v63

    move/from16 v1, v66

    invoke-static {v0, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-wrap7(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;I)V

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Integer;->intValue()I

    move-result v66

    move-object/from16 v0, v63

    move/from16 v1, v66

    invoke-static {v0, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-wrap8(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;I)V

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get3(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 691
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get2(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_8

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get2(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/lang/String;

    .line 693
    .local v43, "pluginPkg":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v66, Ljava/lang/StringBuilder;

    invoke-direct/range {v66 .. v66}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v67, "Active plugin is removed. Perform clean up for uid-"

    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v66

    const-string/jumbo v67, ", pluginPkg-"

    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v66

    move-object/from16 v0, v63

    move-object/from16 v1, v66

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-wrap3(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 695
    .local v10, "adminUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v10, :cond_6

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v63

    if-lez v63, :cond_6

    .line 696
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "adminUid$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 697
    .local v8, "adminUid":Ljava/lang/Integer;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v66, Ljava/lang/StringBuilder;

    invoke-direct/range {v66 .. v66}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v67, "notifyLicenseStatus expire - adminUid-"

    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    move-object/from16 v0, v66

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v66

    move-object/from16 v0, v63

    move-object/from16 v1, v66

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get7(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v63

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v66

    move-object/from16 v0, v63

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v42

    .line 699
    .local v42, "pkgs":[Ljava/lang/String;
    if-eqz v42, :cond_5

    .line 700
    const/16 v63, 0x0

    move-object/from16 v0, v42

    array-length v0, v0

    move/from16 v66, v0

    :goto_5
    move/from16 v0, v63

    move/from16 v1, v66

    if-ge v0, v1, :cond_5

    aget-object v41, v42, v63

    .line 701
    .local v41, "pkgName":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v67

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v69, "Sending event update to package "

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, v68

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    new-instance v39, Landroid/content/Intent;

    const-string/jumbo v67, "com.samsung.android.knox.intent.action.UCM_NOTIFY_EVENT"

    move-object/from16 v0, v39

    move-object/from16 v1, v67

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 703
    .local v39, "notifyIntent":Landroid/content/Intent;
    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 704
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    .line 705
    .restart local v19    # "data":Landroid/os/Bundle;
    const-string/jumbo v67, "event_id"

    const/16 v68, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v67

    move/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 706
    const-string/jumbo v67, "package_name"

    move-object/from16 v0, v19

    move-object/from16 v1, v67

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    move-object/from16 v0, v39

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 710
    :try_start_4
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v67

    const-string/jumbo v68, "Sending intent with UCSM Other permission..."

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v67, v0

    invoke-static/range {v67 .. v67}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get5(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/Context;

    move-result-object v67

    new-instance v68, Landroid/os/UserHandle;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v69

    invoke-static/range {v69 .. v69}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v69

    invoke-direct/range {v68 .. v69}, Landroid/os/UserHandle;-><init>(I)V

    .line 712
    const-string/jumbo v69, "com.samsung.android.knox.permission.KNOX_UCM_OTHER"

    .line 711
    move-object/from16 v0, v67

    move-object/from16 v1, v39

    move-object/from16 v2, v68

    move-object/from16 v3, v69

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v67, v0

    invoke-static/range {v67 .. v67}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get5(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/Context;

    move-result-object v67

    new-instance v68, Landroid/os/UserHandle;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v69

    invoke-static/range {v69 .. v69}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v69

    invoke-direct/range {v68 .. v69}, Landroid/os/UserHandle;-><init>(I)V

    .line 714
    const-string/jumbo v69, "com.sec.enterprise.permission.KNOX_UCM_OTHER"

    .line 713
    move-object/from16 v0, v67

    move-object/from16 v1, v39

    move-object/from16 v2, v68

    move-object/from16 v3, v69

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 700
    :goto_6
    add-int/lit8 v63, v63, 0x1

    goto/16 :goto_5

    .line 716
    :catch_3
    move-exception v48

    .line 717
    .local v48, "se":Ljava/lang/Exception;
    :try_start_5
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v67

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v69, "  Exception se-"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, v68

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    .line 761
    .end local v8    # "adminUid":Ljava/lang/Integer;
    .end local v9    # "adminUid$iterator":Ljava/util/Iterator;
    .end local v10    # "adminUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v13    # "appsUid":[I
    .end local v19    # "data":Landroid/os/Bundle;
    .end local v39    # "notifyIntent":Landroid/content/Intent;
    .end local v41    # "pkgName":Ljava/lang/String;
    .end local v42    # "pkgs":[Ljava/lang/String;
    .end local v43    # "pluginPkg":Ljava/lang/String;
    .end local v48    # "se":Ljava/lang/Exception;
    .end local v52    # "uid":Ljava/lang/Integer;
    .end local v54    # "userId":I
    :catch_4
    move-exception v20

    .line 762
    .restart local v20    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 724
    .end local v20    # "e":Ljava/lang/Exception;
    .restart local v10    # "adminUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v13    # "appsUid":[I
    .restart local v43    # "pluginPkg":Ljava/lang/String;
    .restart local v52    # "uid":Ljava/lang/Integer;
    .restart local v54    # "userId":I
    :cond_6
    :try_start_6
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v66, "No admin found related to package..."

    move-object/from16 v0, v63

    move-object/from16 v1, v66

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get2(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-wrap10(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;Ljava/lang/String;)V

    .line 731
    .end local v10    # "adminUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v43    # "pluginPkg":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get9(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_9

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get9(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    .line 733
    .local v40, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v66, Ljava/lang/StringBuilder;

    invoke-direct/range {v66 .. v66}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v67, "Calling performWhitelistAppCleanup for userId-"

    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    move-object/from16 v0, v66

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v66

    const-string/jumbo v67, ", packageName-"

    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v66

    move-object/from16 v0, v63

    move-object/from16 v1, v66

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v54

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-wrap12(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;ILjava/lang/String;)V

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get9(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    .end local v40    # "packageName":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get4(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_a

    .line 740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get4(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    .line 741
    .restart local v40    # "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v66, Ljava/lang/StringBuilder;

    invoke-direct/range {v66 .. v66}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v67, "Calling performExemptedAppCleanup for userId-"

    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    move-object/from16 v0, v66

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v66

    const-string/jumbo v67, ", packageName-"

    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v66

    move-object/from16 v0, v63

    move-object/from16 v1, v66

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v54

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-wrap9(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;ILjava/lang/String;)V

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get4(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    .end local v40    # "packageName":Ljava/lang/String;
    :cond_a
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v50

    .line 746
    .restart local v50    # "ucmService":Lcom/samsung/android/knox/ucm/core/IUcmService;
    if-eqz v50, :cond_b

    .line 747
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v66, "notifyChangeToPlugin is called for package uninstalled..."

    move-object/from16 v0, v63

    move-object/from16 v1, v66

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 749
    :try_start_7
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    .line 750
    .restart local v19    # "data":Landroid/os/Bundle;
    const-string/jumbo v63, "userId"

    move-object/from16 v0, v19

    move-object/from16 v1, v63

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 751
    const-string/jumbo v63, "packageUid"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Integer;->intValue()I

    move-result v66

    move-object/from16 v0, v19

    move-object/from16 v1, v63

    move/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 752
    const/16 v63, 0x0

    const/16 v66, 0xc

    move-object/from16 v0, v50

    move-object/from16 v1, v63

    move/from16 v2, v66

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 679
    .end local v19    # "data":Landroid/os/Bundle;
    :cond_b
    :goto_7
    add-int/lit8 v63, v64, 0x1

    move/from16 v64, v63

    goto/16 :goto_4

    .line 753
    :catch_5
    move-exception v20

    .line 754
    .restart local v20    # "e":Ljava/lang/Exception;
    :try_start_8
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v66, Ljava/lang/StringBuilder;

    invoke-direct/range {v66 .. v66}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v67, "notifyChangeToPlugin Exception "

    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v66

    move-object/from16 v0, v63

    move-object/from16 v1, v66

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 759
    .end local v20    # "e":Ljava/lang/Exception;
    .end local v50    # "ucmService":Lcom/samsung/android/knox/ucm/core/IUcmService;
    .end local v52    # "uid":Ljava/lang/Integer;
    .end local v54    # "userId":I
    :cond_c
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "****MSG_CLEAN_INFO block ended****"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    .line 767
    .end local v13    # "appsUid":[I
    :pswitch_5
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "****MSG_LOAD_PLUGINS block started****"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-wrap0(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/ArrayList;

    move-result-object v17

    .line 770
    .local v17, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v17, :cond_12

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v63

    if-lez v63, :cond_12

    .line 771
    const/16 v40, 0x0

    .line 772
    .local v40, "packageName":Ljava/lang/String;
    const/4 v12, 0x0

    .line 773
    .local v12, "appUid":I
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v62

    .end local v40    # "packageName":Ljava/lang/String;
    .local v62, "value$iterator":Ljava/util/Iterator;
    :cond_d
    :goto_8
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_11

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Landroid/content/ContentValues;

    .line 774
    .local v60, "value":Landroid/content/ContentValues;
    const-string/jumbo v63, "storagePackageName"

    move-object/from16 v0, v60

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 775
    .local v40, "packageName":Ljava/lang/String;
    const-string/jumbo v63, "appUid"

    move-object/from16 v0, v60

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v32

    .line 776
    .local v32, "intAppUid":Ljava/lang/Integer;
    if-eqz v40, :cond_e

    if-nez v32, :cond_10

    .line 777
    :cond_e
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "parsing error, continue..."

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_8

    .line 804
    .end local v12    # "appUid":I
    .end local v17    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v32    # "intAppUid":Ljava/lang/Integer;
    .end local v40    # "packageName":Ljava/lang/String;
    .end local v60    # "value":Landroid/content/ContentValues;
    .end local v62    # "value$iterator":Ljava/util/Iterator;
    :catch_6
    move-exception v20

    .line 805
    .restart local v20    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Exception "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    .end local v20    # "e":Ljava/lang/Exception;
    :cond_f
    :goto_9
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "****MSG_LOAD_PLUGINS block ended****"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get8(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v63

    const/16 v64, 0x5

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v38

    .line 810
    .local v38, "msg2":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get8(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 780
    .end local v38    # "msg2":Landroid/os/Message;
    .restart local v12    # "appUid":I
    .restart local v17    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v32    # "intAppUid":Ljava/lang/Integer;
    .restart local v40    # "packageName":Ljava/lang/String;
    .restart local v60    # "value":Landroid/content/ContentValues;
    .restart local v62    # "value$iterator":Ljava/util/Iterator;
    :cond_10
    :try_start_a
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    move-result v12

    .line 782
    const/16 v63, 0x3e8

    move/from16 v0, v63

    if-eq v12, v0, :cond_d

    if-eqz v12, :cond_d

    .line 785
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get2(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v63

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v63

    if-nez v63, :cond_d

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get2(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v63

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v64

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Caching plugin app id-"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string/jumbo v65, ", packageName-"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    goto/16 :goto_8

    .line 789
    :catch_7
    move-exception v20

    .line 790
    .restart local v20    # "e":Ljava/lang/Exception;
    :try_start_c
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Exception "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 794
    .end local v20    # "e":Ljava/lang/Exception;
    .end local v32    # "intAppUid":Ljava/lang/Integer;
    .end local v40    # "packageName":Ljava/lang/String;
    .end local v60    # "value":Landroid/content/ContentValues;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get2(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .line 795
    .local v25, "entries":Ljava/util/Iterator;
    :goto_a
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_f

    .line 796
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/Map$Entry;

    .line 797
    .local v28, "entry":Ljava/util/Map$Entry;
    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Integer;

    .line 798
    .local v34, "key":Ljava/lang/Integer;
    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/String;

    .line 799
    .local v61, "value":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Plugin ID = "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string/jumbo v65, ", Plugin package = "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 802
    .end local v12    # "appUid":I
    .end local v25    # "entries":Ljava/util/Iterator;
    .end local v28    # "entry":Ljava/util/Map$Entry;
    .end local v34    # "key":Ljava/lang/Integer;
    .end local v61    # "value":Ljava/lang/String;
    .end local v62    # "value$iterator":Ljava/util/Iterator;
    :cond_12
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "No active plugin found"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    goto/16 :goto_9

    .line 815
    .end local v17    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :pswitch_6
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "****MSG_LOAD_WHITELIST_AND_EXEMPT_APPS block started****"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-wrap2(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/ArrayList;

    move-result-object v17

    .line 818
    .restart local v17    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v17, :cond_18

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v63

    if-lez v63, :cond_18

    .line 819
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "getAllWhitelistedApps - Size-"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    const/16 v40, 0x0

    .line 821
    .local v40, "packageName":Ljava/lang/String;
    const/4 v12, 0x0

    .line 822
    .restart local v12    # "appUid":I
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v62

    .end local v40    # "packageName":Ljava/lang/String;
    .restart local v62    # "value$iterator":Ljava/util/Iterator;
    :cond_13
    :goto_b
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_17

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Landroid/content/ContentValues;

    .line 823
    .restart local v60    # "value":Landroid/content/ContentValues;
    const-string/jumbo v63, "appPackage"

    move-object/from16 v0, v60

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 824
    .local v40, "packageName":Ljava/lang/String;
    const-string/jumbo v63, "appUid"

    move-object/from16 v0, v60

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v32

    .line 825
    .restart local v32    # "intAppUid":Ljava/lang/Integer;
    if-eqz v40, :cond_14

    if-nez v32, :cond_16

    .line 826
    :cond_14
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "parsing error, continue..."

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    goto :goto_b

    .line 900
    .end local v12    # "appUid":I
    .end local v17    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v32    # "intAppUid":Ljava/lang/Integer;
    .end local v40    # "packageName":Ljava/lang/String;
    .end local v60    # "value":Landroid/content/ContentValues;
    .end local v62    # "value$iterator":Ljava/util/Iterator;
    :catch_8
    move-exception v20

    .line 901
    .restart local v20    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Exception -"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    .end local v20    # "e":Ljava/lang/Exception;
    :cond_15
    :goto_c
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "****MSG_LOAD_WHITELIST_AND_EXEMPT_APPS block ended****"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 829
    .restart local v12    # "appUid":I
    .restart local v17    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v32    # "intAppUid":Ljava/lang/Integer;
    .restart local v40    # "packageName":Ljava/lang/String;
    .restart local v60    # "value":Landroid/content/ContentValues;
    .restart local v62    # "value$iterator":Ljava/util/Iterator;
    :cond_16
    :try_start_e
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    move-result v12

    .line 831
    :try_start_f
    const-string/jumbo v63, "*"

    move-object/from16 v0, v40

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-nez v63, :cond_13

    .line 834
    const/16 v63, 0x3e8

    move/from16 v0, v63

    if-eq v12, v0, :cond_13

    if-eqz v12, :cond_13

    .line 837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get9(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v63

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v63

    if-nez v63, :cond_13

    .line 838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get9(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v63

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v64

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Caching WhiteList app id-"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string/jumbo v65, ", packageName-"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    goto/16 :goto_b

    .line 841
    :catch_9
    move-exception v20

    .line 842
    .restart local v20    # "e":Ljava/lang/Exception;
    :try_start_10
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Exception "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 846
    .end local v20    # "e":Ljava/lang/Exception;
    .end local v32    # "intAppUid":Ljava/lang/Integer;
    .end local v40    # "packageName":Ljava/lang/String;
    .end local v60    # "value":Landroid/content/ContentValues;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get9(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .line 847
    .restart local v25    # "entries":Ljava/util/Iterator;
    :goto_d
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_19

    .line 848
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/Map$Entry;

    .line 849
    .restart local v28    # "entry":Ljava/util/Map$Entry;
    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Integer;

    .line 850
    .restart local v34    # "key":Ljava/lang/Integer;
    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/String;

    .line 851
    .restart local v61    # "value":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "WHITELIST App UID = "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string/jumbo v65, ", App package = "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 854
    .end local v12    # "appUid":I
    .end local v25    # "entries":Ljava/util/Iterator;
    .end local v28    # "entry":Ljava/util/Map$Entry;
    .end local v34    # "key":Ljava/lang/Integer;
    .end local v61    # "value":Ljava/lang/String;
    .end local v62    # "value$iterator":Ljava/util/Iterator;
    :cond_18
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "getAllWhitelistedApps DB is empty..."

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-wrap1(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/ArrayList;

    move-result-object v18

    .line 858
    .local v18, "cvList1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v18, :cond_1f

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v63

    if-lez v63, :cond_1f

    .line 859
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "getAllExemptedApps - Size-"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    const/16 v40, 0x0

    .line 861
    .local v40, "packageName":Ljava/lang/String;
    const/4 v12, 0x0

    .line 862
    .restart local v12    # "appUid":I
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v62

    .end local v40    # "packageName":Ljava/lang/String;
    .restart local v62    # "value$iterator":Ljava/util/Iterator;
    :cond_1a
    :goto_e
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_1e

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Landroid/content/ContentValues;

    .line 863
    .restart local v60    # "value":Landroid/content/ContentValues;
    if-nez v60, :cond_1b

    .line 864
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "value is null, continue..."

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 867
    :cond_1b
    const-string/jumbo v63, "appPackage"

    move-object/from16 v0, v60

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 868
    .local v40, "packageName":Ljava/lang/String;
    const-string/jumbo v63, "appUid"

    move-object/from16 v0, v60

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v32

    .line 869
    .restart local v32    # "intAppUid":Ljava/lang/Integer;
    if-eqz v40, :cond_1c

    if-nez v32, :cond_1d

    .line 870
    :cond_1c
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "parsing error, continue..."

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 873
    :cond_1d
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8

    move-result v12

    .line 875
    :try_start_11
    const-string/jumbo v63, "com.samsung.knox.virtual.wifi"

    move-object/from16 v0, v40

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-nez v63, :cond_1a

    .line 878
    const/16 v63, 0x3e8

    move/from16 v0, v63

    if-eq v12, v0, :cond_1a

    if-eqz v12, :cond_1a

    .line 881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get4(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v63

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v63

    if-nez v63, :cond_1a

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get4(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v63

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v64

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Caching Exempted app id-"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string/jumbo v65, ", packageName-"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_a

    goto/16 :goto_e

    .line 885
    :catch_a
    move-exception v20

    .line 886
    .restart local v20    # "e":Ljava/lang/Exception;
    :try_start_12
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Exception "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 890
    .end local v20    # "e":Ljava/lang/Exception;
    .end local v32    # "intAppUid":Ljava/lang/Integer;
    .end local v40    # "packageName":Ljava/lang/String;
    .end local v60    # "value":Landroid/content/ContentValues;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get4(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .line 891
    .restart local v25    # "entries":Ljava/util/Iterator;
    :goto_f
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_15

    .line 892
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/Map$Entry;

    .line 893
    .restart local v28    # "entry":Ljava/util/Map$Entry;
    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Integer;

    .line 894
    .restart local v34    # "key":Ljava/lang/Integer;
    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/String;

    .line 895
    .restart local v61    # "value":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "EXEPMT-> App UID = "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string/jumbo v65, ", App package = "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 898
    .end local v12    # "appUid":I
    .end local v25    # "entries":Ljava/util/Iterator;
    .end local v28    # "entry":Ljava/util/Map$Entry;
    .end local v34    # "key":Ljava/lang/Integer;
    .end local v61    # "value":Ljava/lang/String;
    .end local v62    # "value$iterator":Ljava/util/Iterator;
    :cond_1f
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "getAllExemptedApps DB is empty..."

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_8

    goto/16 :goto_c

    .line 907
    .end local v17    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v18    # "cvList1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :pswitch_7
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "****MSG_SYNC_UP_DATA block started****"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :try_start_13
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    .line 910
    .restart local v19    # "data":Landroid/os/Bundle;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v50

    .line 911
    .restart local v50    # "ucmService":Lcom/samsung/android/knox/ucm/core/IUcmService;
    if-eqz v50, :cond_21

    .line 912
    const/16 v63, 0x0

    const/16 v64, 0x11

    move-object/from16 v0, v50

    move-object/from16 v1, v63

    move/from16 v2, v64

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    .line 913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-wrap5(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v11

    .line 914
    .local v11, "allUsers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v11, :cond_21

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v63

    if-lez v63, :cond_21

    .line 915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get5(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/Context;

    move-result-object v63

    const-string/jumbo v64, "user"

    invoke-virtual/range {v63 .. v64}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/os/UserManager;

    .line 916
    .local v36, "mUm":Landroid/os/UserManager;
    invoke-virtual/range {v36 .. v36}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v59

    .line 917
    .local v59, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v59 .. v59}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v58

    .local v58, "userInfo$iterator":Ljava/util/Iterator;
    :cond_20
    :goto_10
    invoke-interface/range {v58 .. v58}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_2a

    invoke-interface/range {v58 .. v58}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Landroid/content/pm/UserInfo;

    .line 918
    .local v57, "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v0, v57

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v54, v0

    .line 919
    .restart local v54    # "userId":I
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Valid userid-"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v63

    move-object/from16 v0, v63

    invoke-interface {v11, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_20

    .line 921
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Found userid on cache-"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v63

    move-object/from16 v0, v63

    invoke-interface {v11, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_b

    goto :goto_10

    .line 933
    .end local v11    # "allUsers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v19    # "data":Landroid/os/Bundle;
    .end local v36    # "mUm":Landroid/os/UserManager;
    .end local v50    # "ucmService":Lcom/samsung/android/knox/ucm/core/IUcmService;
    .end local v54    # "userId":I
    .end local v57    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v58    # "userInfo$iterator":Ljava/util/Iterator;
    .end local v59    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_b
    move-exception v20

    .line 934
    .restart local v20    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Exception-"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    .end local v20    # "e":Ljava/lang/Exception;
    :cond_21
    new-instance v53, Ljava/util/ArrayList;

    invoke-direct/range {v53 .. v53}, Ljava/util/ArrayList;-><init>()V

    .line 938
    .local v53, "uninstalledAppUid":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v44

    .line 940
    .local v44, "pm":Landroid/content/pm/IPackageManager;
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get3(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "adminId$iterator":Ljava/util/Iterator;
    :cond_22
    :goto_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_23

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 941
    .local v4, "adminId":Ljava/lang/Integer;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "MSG_SYNC_UP_DATA adminId-"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get7(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v63

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v64

    invoke-virtual/range {v63 .. v64}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v42

    .line 943
    .restart local v42    # "pkgs":[Ljava/lang/String;
    if-nez v42, :cond_2b

    .line 944
    move-object/from16 v0, v53

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v63

    if-nez v63, :cond_22

    .line 945
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "MSG_SYNC_UP_DATA remove adminid : "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    move-object/from16 v0, v53

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_c

    goto :goto_11

    .line 961
    .end local v4    # "adminId":Ljava/lang/Integer;
    .end local v6    # "adminId$iterator":Ljava/util/Iterator;
    .end local v42    # "pkgs":[Ljava/lang/String;
    :catch_c
    move-exception v21

    .line 962
    .local v21, "e1":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Exception-"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    .end local v21    # "e1":Ljava/lang/Exception;
    :cond_23
    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get2(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .line 967
    .restart local v25    # "entries":Ljava/util/Iterator;
    :cond_24
    :goto_12
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_25

    .line 968
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/Map$Entry;

    .line 969
    .restart local v28    # "entry":Ljava/util/Map$Entry;
    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Integer;

    .line 970
    .restart local v34    # "key":Ljava/lang/Integer;
    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/String;

    .line 971
    .restart local v61    # "value":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "MSG_SYNC_UP_DATA plugin id -"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "MSG_SYNC_UP_DATA plugin package -"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get7(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v63

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v64

    invoke-virtual/range {v63 .. v64}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v42

    .line 974
    .restart local v42    # "pkgs":[Ljava/lang/String;
    if-nez v42, :cond_2e

    .line 975
    move-object/from16 v0, v53

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v63

    if-nez v63, :cond_24

    .line 976
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "MSG_SYNC_UP_DATA remove plugin : "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    move-object/from16 v0, v53

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_d

    goto/16 :goto_12

    .line 989
    .end local v25    # "entries":Ljava/util/Iterator;
    .end local v28    # "entry":Ljava/util/Map$Entry;
    .end local v34    # "key":Ljava/lang/Integer;
    .end local v42    # "pkgs":[Ljava/lang/String;
    .end local v61    # "value":Ljava/lang/String;
    :catch_d
    move-exception v22

    .line 990
    .local v22, "e2":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Exception-"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    .end local v22    # "e2":Ljava/lang/Exception;
    :cond_25
    :try_start_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get4(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .line 995
    .local v26, "entries1":Ljava/util/Iterator;
    :cond_26
    :goto_13
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_27

    .line 996
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/Map$Entry;

    .line 997
    .restart local v28    # "entry":Ljava/util/Map$Entry;
    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Integer;

    .line 998
    .restart local v34    # "key":Ljava/lang/Integer;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "MSG_SYNC_UP_DATA exempt app id -"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get7(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v63

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v64

    invoke-virtual/range {v63 .. v64}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v42

    .line 1000
    .restart local v42    # "pkgs":[Ljava/lang/String;
    if-nez v42, :cond_26

    .line 1001
    move-object/from16 v0, v53

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v63

    if-nez v63, :cond_26

    .line 1002
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "MSG_SYNC_UP_DATA remove exempt app : "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    move-object/from16 v0, v53

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_e

    goto :goto_13

    .line 1007
    .end local v26    # "entries1":Ljava/util/Iterator;
    .end local v28    # "entry":Ljava/util/Map$Entry;
    .end local v34    # "key":Ljava/lang/Integer;
    .end local v42    # "pkgs":[Ljava/lang/String;
    :catch_e
    move-exception v23

    .line 1008
    .local v23, "e3":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Exception-"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    .end local v23    # "e3":Ljava/lang/Exception;
    :cond_27
    :try_start_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get9(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .line 1013
    .local v27, "entries2":Ljava/util/Iterator;
    :cond_28
    :goto_14
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_29

    .line 1014
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/Map$Entry;

    .line 1015
    .restart local v28    # "entry":Ljava/util/Map$Entry;
    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Integer;

    .line 1016
    .restart local v34    # "key":Ljava/lang/Integer;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "MSG_SYNC_UP_DATA Whitelist app id -"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get7(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v63

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v64

    invoke-virtual/range {v63 .. v64}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v42

    .line 1018
    .restart local v42    # "pkgs":[Ljava/lang/String;
    if-nez v42, :cond_28

    .line 1019
    move-object/from16 v0, v53

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v63

    if-nez v63, :cond_28

    .line 1020
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "MSG_SYNC_UP_DATA remove Whitelist app : "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    move-object/from16 v0, v53

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_f

    goto :goto_14

    .line 1025
    .end local v27    # "entries2":Ljava/util/Iterator;
    .end local v28    # "entry":Ljava/util/Map$Entry;
    .end local v34    # "key":Ljava/lang/Integer;
    .end local v42    # "pkgs":[Ljava/lang/String;
    :catch_f
    move-exception v24

    .line 1026
    .local v24, "e4":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Exception-"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    .end local v24    # "e4":Ljava/lang/Exception;
    :cond_29
    invoke-interface/range {v53 .. v53}, Ljava/util/List;->size()I

    move-result v63

    if-lez v63, :cond_33

    .line 1030
    invoke-interface/range {v53 .. v53}, Ljava/util/List;->size()I

    move-result v63

    move/from16 v0, v63

    new-array v15, v0, [I

    .line 1031
    .local v15, "cleanUids":[I
    const/16 v29, 0x0

    .line 1032
    .local v29, "i":I
    invoke-interface/range {v53 .. v53}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .local v31, "id$iterator":Ljava/util/Iterator;
    :goto_15
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_32

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Integer;

    .line 1033
    .local v30, "id":Ljava/lang/Integer;
    if-nez v30, :cond_31

    .line 1034
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "id is null, continue..."

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 925
    .end local v15    # "cleanUids":[I
    .end local v29    # "i":I
    .end local v30    # "id":Ljava/lang/Integer;
    .end local v31    # "id$iterator":Ljava/util/Iterator;
    .end local v44    # "pm":Landroid/content/pm/IPackageManager;
    .end local v53    # "uninstalledAppUid":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v11    # "allUsers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v19    # "data":Landroid/os/Bundle;
    .restart local v36    # "mUm":Landroid/os/UserManager;
    .restart local v50    # "ucmService":Lcom/samsung/android/knox/ucm/core/IUcmService;
    .restart local v58    # "userInfo$iterator":Ljava/util/Iterator;
    .restart local v59    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2a
    :try_start_18
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v56

    .local v56, "userId$iterator":Ljava/util/Iterator;
    :goto_16
    invoke-interface/range {v56 .. v56}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_21

    invoke-interface/range {v56 .. v56}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Ljava/lang/Integer;

    .line 926
    .local v55, "userId":Ljava/lang/Integer;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "InValid userid-"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get8(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v63

    const/16 v64, 0x1

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    .line 928
    .local v14, "cleanMsg":Landroid/os/Message;
    invoke-virtual/range {v55 .. v55}, Ljava/lang/Integer;->intValue()I

    move-result v63

    move/from16 v0, v63

    iput v0, v14, Landroid/os/Message;->arg1:I

    .line 929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get8(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v63

    move-object/from16 v0, v63

    invoke-virtual {v0, v14}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_b

    goto :goto_16

    .line 950
    .end local v11    # "allUsers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v14    # "cleanMsg":Landroid/os/Message;
    .end local v19    # "data":Landroid/os/Bundle;
    .end local v36    # "mUm":Landroid/os/UserManager;
    .end local v50    # "ucmService":Lcom/samsung/android/knox/ucm/core/IUcmService;
    .end local v55    # "userId":Ljava/lang/Integer;
    .end local v56    # "userId$iterator":Ljava/util/Iterator;
    .end local v58    # "userInfo$iterator":Ljava/util/Iterator;
    .end local v59    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v4    # "adminId":Ljava/lang/Integer;
    .restart local v6    # "adminId$iterator":Ljava/util/Iterator;
    .restart local v42    # "pkgs":[Ljava/lang/String;
    .restart local v44    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v53    # "uninstalledAppUid":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_2b
    :try_start_19
    const-string/jumbo v63, "com.samsung.android.knox.permission.KNOX_UCM_ESE"

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v64

    move-object/from16 v0, v44

    move-object/from16 v1, v63

    move/from16 v2, v64

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v63

    if-eqz v63, :cond_2c

    .line 951
    const-string/jumbo v63, "com.samsung.android.knox.permission.KNOX_UCM_OTHER"

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v64

    move-object/from16 v0, v44

    move-object/from16 v1, v63

    move/from16 v2, v64

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v63

    if-nez v63, :cond_2d

    .line 954
    :cond_2c
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "  Admin has valid permission. Processing further..."

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 952
    :cond_2d
    const-string/jumbo v63, "com.sec.enterprise.permission.KNOX_UCM_ESE"

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v64

    move-object/from16 v0, v44

    move-object/from16 v1, v63

    move/from16 v2, v64

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v63

    if-eqz v63, :cond_2c

    .line 953
    const-string/jumbo v63, "com.sec.enterprise.permission.KNOX_UCM_OTHER"

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v64

    move-object/from16 v0, v44

    move-object/from16 v1, v63

    move/from16 v2, v64

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v63

    if-eqz v63, :cond_2c

    .line 956
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "  Admin don\'t has UCS permission..."

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-wrap13(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;I)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_c

    goto/16 :goto_11

    .line 980
    .end local v4    # "adminId":Ljava/lang/Integer;
    .end local v6    # "adminId$iterator":Ljava/util/Iterator;
    .restart local v25    # "entries":Ljava/util/Iterator;
    .restart local v28    # "entry":Ljava/util/Map$Entry;
    .restart local v34    # "key":Ljava/lang/Integer;
    .restart local v61    # "value":Ljava/lang/String;
    :cond_2e
    :try_start_1a
    const-string/jumbo v63, "com.samsung.android.knox.permission.KNOX_UCM_PLUGIN"

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v64

    move-object/from16 v0, v44

    move-object/from16 v1, v63

    move/from16 v2, v64

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v63

    if-eqz v63, :cond_2f

    .line 981
    const-string/jumbo v63, "com.sec.enterprise.permission.KNOX_UCM_PLUGIN"

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v64

    move-object/from16 v0, v44

    move-object/from16 v1, v63

    move/from16 v2, v64

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v63

    if-nez v63, :cond_30

    .line 982
    :cond_2f
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "  Agent has UCS PLUGIN permission. Processing further..."

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 984
    :cond_30
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "  Agent don\'t has UCS PLUGIN permission. Notifying admin.."

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    const/16 v64, 0x2

    move-object/from16 v0, v63

    move/from16 v1, v64

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->notifyLicenseStatus(ILjava/lang/String;)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_d

    goto/16 :goto_12

    .line 1037
    .end local v25    # "entries":Ljava/util/Iterator;
    .end local v28    # "entry":Ljava/util/Map$Entry;
    .end local v34    # "key":Ljava/lang/Integer;
    .end local v42    # "pkgs":[Ljava/lang/String;
    .end local v61    # "value":Ljava/lang/String;
    .restart local v15    # "cleanUids":[I
    .restart local v29    # "i":I
    .restart local v30    # "id":Ljava/lang/Integer;
    .restart local v31    # "id$iterator":Ljava/util/Iterator;
    :cond_31
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "adding clean app id-"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v63

    aput v63, v15, v29

    .line 1039
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_15

    .line 1042
    .end local v30    # "id":Ljava/lang/Integer;
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get8(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v63

    const/16 v64, 0x3

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    .line 1043
    .restart local v14    # "cleanMsg":Landroid/os/Message;
    iput-object v15, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1044
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "MSG_SYNC_UP_DATA calling MSG_CLEAN_INFO..."

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get8(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v63

    move-object/from16 v0, v63

    invoke-virtual {v0, v14}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1048
    .end local v14    # "cleanMsg":Landroid/os/Message;
    .end local v15    # "cleanUids":[I
    .end local v29    # "i":I
    .end local v31    # "id$iterator":Ljava/util/Iterator;
    :cond_33
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "****MSG_SYNC_UP_DATA block ended****"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1052
    .end local v44    # "pm":Landroid/content/pm/IPackageManager;
    .end local v53    # "uninstalledAppUid":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :pswitch_8
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "****MSG_LOCK_STATUS_UPDATE block started****"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v50

    .line 1054
    .restart local v50    # "ucmService":Lcom/samsung/android/knox/ucm/core/IUcmService;
    if-eqz v50, :cond_34

    .line 1055
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "notifyChangeToPlugin is called for Lock status update..."

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get5(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/Context;

    move-result-object v63

    const-string/jumbo v64, "keyguard"

    invoke-virtual/range {v63 .. v64}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/app/KeyguardManager;

    .line 1058
    .local v35, "km":Landroid/app/KeyguardManager;
    invoke-virtual/range {v35 .. v35}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v33

    .line 1060
    .local v33, "isLocked":Z
    :try_start_1b
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    .line 1061
    .restart local v19    # "data":Landroid/os/Bundle;
    const-string/jumbo v63, "userId"

    const/16 v64, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v63

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1062
    if-eqz v33, :cond_35

    .line 1063
    const/16 v63, 0x0

    const/16 v64, 0xf

    move-object/from16 v0, v50

    move-object/from16 v1, v63

    move/from16 v2, v64

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_10

    .line 1070
    .end local v19    # "data":Landroid/os/Bundle;
    .end local v33    # "isLocked":Z
    .end local v35    # "km":Landroid/app/KeyguardManager;
    :cond_34
    :goto_17
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "****MSG_LOCK_STATUS_UPDATE block ended****"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1065
    .restart local v19    # "data":Landroid/os/Bundle;
    .restart local v33    # "isLocked":Z
    .restart local v35    # "km":Landroid/app/KeyguardManager;
    :cond_35
    const/16 v63, 0x0

    const/16 v64, 0x10

    :try_start_1c
    move-object/from16 v0, v50

    move-object/from16 v1, v63

    move/from16 v2, v64

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_10

    goto :goto_17

    .line 1066
    .end local v19    # "data":Landroid/os/Bundle;
    :catch_10
    move-exception v20

    .line 1067
    .restart local v20    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "notifyChangeToPlugin Exception "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 1074
    .end local v20    # "e":Ljava/lang/Exception;
    .end local v33    # "isLocked":Z
    .end local v35    # "km":Landroid/app/KeyguardManager;
    .end local v50    # "ucmService":Lcom/samsung/android/knox/ucm/core/IUcmService;
    :pswitch_9
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v50

    .line 1075
    .restart local v50    # "ucmService":Lcom/samsung/android/knox/ucm/core/IUcmService;
    if-eqz v50, :cond_0

    .line 1076
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 1077
    .local v16, "containerId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v49, v0

    .line 1078
    .local v49, "status":I
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "notifyChangeToPlugin is called for container Lock status update containerId-"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string/jumbo v65, ", status-"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    :try_start_1d
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    .line 1081
    .restart local v19    # "data":Landroid/os/Bundle;
    const-string/jumbo v63, "userId"

    move-object/from16 v0, v19

    move-object/from16 v1, v63

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1082
    const/16 v63, 0x1

    move/from16 v0, v49

    move/from16 v1, v63

    if-eq v0, v1, :cond_36

    .line 1083
    const/16 v63, 0x0

    const/16 v64, 0x14

    move-object/from16 v0, v50

    move-object/from16 v1, v63

    move/from16 v2, v64

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_11

    goto/16 :goto_0

    .line 1087
    .end local v19    # "data":Landroid/os/Bundle;
    :catch_11
    move-exception v20

    .line 1088
    .restart local v20    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "notifyChangeToPlugin Exception "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1085
    .end local v20    # "e":Ljava/lang/Exception;
    .restart local v19    # "data":Landroid/os/Bundle;
    :cond_36
    const/16 v63, 0x0

    const/16 v64, 0x15

    :try_start_1e
    move-object/from16 v0, v50

    move-object/from16 v1, v63

    move/from16 v2, v64

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_11

    goto/16 :goto_0

    .line 607
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_9
        :pswitch_0
    .end packed-switch
.end method
