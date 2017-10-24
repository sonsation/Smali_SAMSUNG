.class Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$1;
.super Landroid/content/BroadcastReceiver;
.source "DLPManagerPolicyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->registerBootReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$1;->this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 88
    iget-object v10, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$1;->this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    invoke-static {v10}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->-get3(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;)Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "user"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    .line 89
    .local v6, "um":Landroid/os/UserManager;
    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v9

    .line 90
    .local v9, "userInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v9, :cond_0

    .line 91
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->-get0()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "userInfo list returned is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void

    .line 94
    :cond_0
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "user$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 95
    .local v7, "user":Landroid/content/pm/UserInfo;
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    iget v11, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v2, v10, v11}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 97
    .local v2, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    iget-object v10, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$1;->this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    invoke-static {v10}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->-wrap1(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;)Lcom/android/server/enterprise/dlp/DLPCacheHelper;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/android/server/enterprise/dlp/DLPCacheHelper;->updateUserDLPCacheFromDB(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 98
    iget v10, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v10}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->isActivated(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 99
    iget-object v10, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$1;->this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->-wrap0(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;Z)Z

    .line 100
    iget-object v10, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$1;->this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    invoke-static {v10}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->-get2(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;)Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getDLPConfig(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;

    move-result-object v1

    .line 101
    .local v1, "config":Landroid/os/Bundle;
    const/16 v10, 0x10e

    invoke-static {v10}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 102
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->-get0()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "BootCompleteReceiver: getting extended extensions for userId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "UID is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const-string/jumbo v10, "Extensions"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, "extendedExtensions":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$1;->this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    invoke-static {v10}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->-get5(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;)Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    move-result-object v10

    iget v11, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v3, v11}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->sendSetExtensionEPMDCommand(Ljava/lang/String;I)V

    .line 107
    iget-object v10, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$1;->this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    invoke-static {v10}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->-get5(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;)Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    move-result-object v10

    invoke-virtual {v10, v3}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->getMergedExtensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 108
    .local v4, "extensions":Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 114
    .end local v3    # "extendedExtensions":Ljava/lang/String;
    .end local v4    # "extensions":Ljava/lang/String;
    :cond_2
    :goto_1
    const/16 v10, 0x118

    invoke-static {v10}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 115
    const-string/jumbo v10, "AUDIT"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 117
    .local v0, "audit":I
    iget-object v10, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$1;->this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    invoke-static {v10}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->-get5(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;)Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    move-result-object v10

    iget v11, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v0, v11}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->sendSetDLPAuditEPMDCommand(II)V

    goto/16 :goto_0

    .line 109
    .end local v0    # "audit":I
    .restart local v3    # "extendedExtensions":Ljava/lang/String;
    .restart local v4    # "extensions":Ljava/lang/String;
    :cond_3
    iget-object v10, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$1;->this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    invoke-static {v10}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->-get5(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;)Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    move-result-object v10

    iget v11, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v11, v4}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->setDLPExtension(ILjava/lang/String;)Z

    move-result v5

    .line 110
    .local v5, "res":Z
    if-eqz v5, :cond_2

    .line 111
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->-get0()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "DLP : Extensions set at boot time in kernel for user: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 87
    .end local v1    # "config":Landroid/os/Bundle;
    .end local v2    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local v3    # "extendedExtensions":Ljava/lang/String;
    .end local v4    # "extensions":Ljava/lang/String;
    .end local v5    # "res":Z
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    :cond_4
    return-void
.end method
