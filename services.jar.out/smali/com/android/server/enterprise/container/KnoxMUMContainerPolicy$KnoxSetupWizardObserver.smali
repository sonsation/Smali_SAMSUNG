.class public Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;
.super Landroid/app/IProcessObserver$Stub;
.source "KnoxMUMContainerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KnoxSetupWizardObserver"
.end annotation


# instance fields
.field mPid:I

.field final synthetic this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .prologue
    .line 870
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    .line 871
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;->mPid:I

    .line 870
    return-void
.end method


# virtual methods
.method getPackageNameFromPID(I)Ljava/lang/String;
    .locals 4
    .param p1, "pid"    # I

    .prologue
    .line 877
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get3(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/app/ActivityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 878
    .local v2, "runningAppInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v2, :cond_1

    .line 879
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "processInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 880
    .local v0, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, p1, :cond_0

    .line 881
    iget-object v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object v3

    .line 885
    .end local v0    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v1    # "processInfo$iterator":Ljava/util/Iterator;
    :cond_1
    const-string/jumbo v3, ""

    return-object v3
.end method

.method public onForegroundActivitiesChanged(IIZ)V
    .locals 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "btop"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 891
    const/4 v0, 0x0

    .line 892
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 893
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;->getPackageNameFromPID(I)Ljava/lang/String;

    move-result-object v0

    .line 895
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_1

    const-string/jumbo v1, "com.sec.knox.knoxsetupwizardclient"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 896
    iput p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;->mPid:I

    .line 897
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get1()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Knox SetupWizard Packagename : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;->mPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    :cond_1
    if-eqz v0, :cond_2

    const-string/jumbo v1, "com.samsung.knox.securefolder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 900
    iput p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;->mPid:I

    .line 901
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get1()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Secure Folder SetupWizard Packagename : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;->mPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :cond_2
    return-void
.end method

.method public onImportanceChanged(III)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 914
    return-void
.end method

.method public onProcessDied(II)V
    .locals 9
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 924
    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get9(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Ljava/util/List;

    move-result-object v6

    monitor-enter v6

    .line 925
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get1()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onProcessDied mPid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " uid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    iget v5, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;->mPid:I

    if-ne v5, p1, :cond_3

    .line 927
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get1()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "It seems SetupWizard got killed. Lets see if any request id needs to be cleaned! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get9(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "lParam$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/container/ContainerCreationParams;

    .line 929
    .local v1, "lParam":Lcom/samsung/android/knox/container/ContainerCreationParams;
    invoke-virtual {v1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->getRequestState()I

    move-result v5

    if-nez v5, :cond_1

    .line 930
    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-virtual {v1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->getAdminUid()I

    move-result v7

    const/16 v8, -0x3f9

    invoke-static {v5, v1, v8, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap16(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lcom/samsung/android/knox/container/ContainerCreationParams;II)V

    .line 931
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get1()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Removing param:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->getRequestId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v5, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap4(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lcom/samsung/android/knox/container/ContainerCreationParams;)Z

    .line 933
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get1()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "Unregister observer in STATE_SETUP_PROGRESS"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;->reset()V

    .line 935
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get10(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;

    move-result-object v7

    invoke-interface {v5, v7}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 946
    :cond_0
    :goto_1
    invoke-virtual {v1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->getConfigurationType()Lcom/samsung/android/knox/container/KnoxConfigurationType;

    move-result-object v4

    .line 948
    .local v4, "typeObj":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v5, "com.sec.knox.died.SETUP_WIZARD"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 949
    .local v0, "intent":Landroid/content/Intent;
    instance-of v5, v4, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;

    if-eqz v5, :cond_2

    .line 950
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get1()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "Secure folder SetupWizard died"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    const-string/jumbo v5, "com.samsung.knox.securefolder"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 956
    :goto_2
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get5()Landroid/content/Context;

    move-result-object v5

    new-instance v7, Landroid/os/UserHandle;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v0, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 957
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get1()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "Sending broadcast com.sec.knox.died.SETUP_WIZARD"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 924
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "lParam":Lcom/samsung/android/knox/container/ContainerCreationParams;
    .end local v2    # "lParam$iterator":Ljava/util/Iterator;
    .end local v4    # "typeObj":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 936
    .restart local v1    # "lParam":Lcom/samsung/android/knox/container/ContainerCreationParams;
    .restart local v2    # "lParam$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->getRequestState()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_0

    .line 938
    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get4(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

    move-result-object v5

    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 939
    .local v3, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get4(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 940
    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v5, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap4(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lcom/samsung/android/knox/container/ContainerCreationParams;)Z

    .line 941
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get1()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "Unregister observer in STATE_SETUP_POST_CREATE"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;->reset()V

    .line 943
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get10(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;

    move-result-object v7

    invoke-interface {v5, v7}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    goto :goto_1

    .line 953
    .end local v3    # "msg":Landroid/os/Message;
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v4    # "typeObj":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    :cond_2
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get1()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "Knox SetupWizard died"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    const-string/jumbo v5, "com.sec.knox.knoxsetupwizardclient"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "lParam":Lcom/samsung/android/knox/container/ContainerCreationParams;
    .end local v2    # "lParam$iterator":Ljava/util/Iterator;
    .end local v4    # "typeObj":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    :cond_3
    monitor-exit v6

    .line 923
    return-void
.end method

.method public onProcessStateChanged(III)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "procState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 917
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 873
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;->mPid:I

    .line 872
    return-void
.end method
