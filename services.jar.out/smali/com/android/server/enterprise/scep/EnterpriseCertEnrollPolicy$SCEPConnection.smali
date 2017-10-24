.class public Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;
.super Ljava/lang/Object;
.source "EnterpriseCertEnrollPolicy.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SCEPConnection"
.end annotation


# instance fields
.field mCepProtocol:Ljava/lang/String;

.field mContainerUid:I

.field private mService:Landroid/os/IBinder;

.field mWithThread:Z

.field final synthetic this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;ILjava/lang/String;Z)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;
    .param p2, "containerUid"    # I
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "withThread"    # Z

    .prologue
    const/4 v1, 0x0

    .line 817
    iput-object p1, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 812
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    .line 813
    iput-object v1, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mCepProtocol:Ljava/lang/String;

    .line 814
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mWithThread:Z

    .line 815
    iput-object v1, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mService:Landroid/os/IBinder;

    .line 819
    iput-object p3, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mCepProtocol:Ljava/lang/String;

    .line 820
    iput p2, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    .line 821
    iput-boolean p4, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mWithThread:Z

    .line 817
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 10

    .prologue
    .line 886
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->-get1()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "In Binder Died death receipient"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 889
    .local v0, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v6, "containerID"

    iget v7, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 890
    const-string/jumbo v6, "protocol"

    iget-object v7, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mCepProtocol:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    iget-object v6, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    invoke-static {v6}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->-get2(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v6

    .line 892
    const-string/jumbo v7, "EnterpriseCertEnrollPolicy"

    const-string/jumbo v8, "cepAgentUid"

    .line 891
    invoke-virtual {v6, v7, v8, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    .line 895
    .local v4, "mAdminUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "id$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 897
    .local v2, "id":I
    iget-object v6, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    const-string/jumbo v7, "com.samsung.android.knox.intent.CEP_SERVICE_DISCONNECTED"

    iget v8, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    iget-object v9, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mCepProtocol:Ljava/lang/String;

    invoke-static {v6, v7, v2, v8, v9}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->-wrap2(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;Ljava/lang/String;IILjava/lang/String;)V

    .line 898
    iget-object v6, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    const-string/jumbo v7, "com.samsung.action.knox.certenroll.CEP_SERVICE_DISCONNECTED"

    iget v8, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    iget-object v9, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mCepProtocol:Ljava/lang/String;

    invoke-static {v6, v7, v2, v8, v9}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->-wrap2(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 908
    .end local v0    # "cvWhere":Landroid/content/ContentValues;
    .end local v2    # "id":I
    .end local v3    # "id$iterator":Ljava/util/Iterator;
    .end local v4    # "mAdminUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v1

    .line 909
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->-get1()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "Exception in binderDied:"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 885
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-void

    .line 900
    .restart local v0    # "cvWhere":Landroid/content/ContentValues;
    .restart local v3    # "id$iterator":Ljava/util/Iterator;
    .restart local v4    # "mAdminUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->-get1()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SCEP Service has unexpectedly disconnected details:ContainerUid["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] and PackageName["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mCepProtocol:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->-get3()Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->-get3()Ljava/util/Map;

    move-result-object v6

    iget v7, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 902
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->-get3()Ljava/util/Map;

    move-result-object v6

    iget v7, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 903
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/knox/keystore/ICertEnrollmentService;>;"
    iget-object v6, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mCepProtocol:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 904
    iget-object v6, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mCepProtocol:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    :cond_2
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 906
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->-get3()Ljava/util/Map;

    move-result-object v6

    iget v7, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    monitor-enter p0

    .line 826
    :try_start_0
    iput-object p2, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mService:Landroid/os/IBinder;

    .line 828
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->-get0()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 829
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->-get1()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onServiceConnected["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] and PackageName["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mCepProtocol:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] thread["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mWithThread:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    :cond_0
    invoke-static {p2}, Lcom/samsung/android/knox/keystore/ICertEnrollmentService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/keystore/ICertEnrollmentService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 832
    .local v0, "cepService":Lcom/samsung/android/knox/keystore/ICertEnrollmentService;
    const/4 v3, 0x0

    .line 833
    .local v3, "res":Z
    if-eqz v0, :cond_1

    .line 834
    :try_start_1
    iget-boolean v4, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mWithThread:Z

    if-eqz v4, :cond_3

    .line 835
    iget-object v4, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    iget-object v4, v4, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->interfaceQueueBlocking:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v6, 0x1388

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v0, v6, v7, v5}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 845
    .end local v3    # "res":Z
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 846
    const/4 v4, 0x0

    :try_start_2
    invoke-interface {p2, p0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
    monitor-exit p0

    .line 825
    return-void

    .line 837
    .restart local v3    # "res":Z
    :cond_3
    :try_start_3
    iget-object v4, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    iget-object v4, v4, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->interfaceQueuePolling:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v6, 0x1388

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v0, v6, v7, v5}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    .line 838
    .local v3, "res":Z
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->-get0()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->-get1()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "offer interface in blocking queue"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 841
    .end local v3    # "res":Z
    :catch_0
    move-exception v2

    .line 842
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_4
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->-get1()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .end local v0    # "cepService":Lcom/samsung/android/knox/keystore/ICertEnrollmentService;
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 847
    .restart local v0    # "cepService":Lcom/samsung/android/knox/keystore/ICertEnrollmentService;
    :catch_1
    move-exception v1

    .line 848
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->-get1()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Exception in onServiceDisconneted:"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 11
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 855
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 856
    .local v0, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v7, "containerID"

    iget v8, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 857
    const-string/jumbo v7, "protocol"

    iget-object v8, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mCepProtocol:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    iget-object v7, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    invoke-static {v7}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->-get2(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v7

    .line 859
    const-string/jumbo v8, "EnterpriseCertEnrollPolicy"

    const-string/jumbo v9, "cepAgentUid"

    .line 858
    invoke-virtual {v7, v8, v9, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    .line 862
    .local v4, "mAdminUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "id$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 864
    .local v2, "id":I
    iget-object v7, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    const-string/jumbo v8, "com.samsung.android.knox.intent.CEP_SERVICE_DISCONNECTED"

    iget v9, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    iget-object v10, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mCepProtocol:Ljava/lang/String;

    invoke-static {v7, v8, v2, v9, v10}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->-wrap2(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;Ljava/lang/String;IILjava/lang/String;)V

    .line 865
    iget-object v7, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    const-string/jumbo v8, "com.samsung.action.knox.certenroll.CEP_SERVICE_DISCONNECTED"

    iget v9, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    iget-object v10, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mCepProtocol:Ljava/lang/String;

    invoke-static {v7, v8, v2, v9, v10}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->-wrap2(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    .line 867
    .end local v2    # "id":I
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 868
    .local v6, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->-get0()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 869
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->-get1()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SCEP Service has unexpectedly disconnected details:ContainerUid["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "] and PackageName["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    :cond_1
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->-get3()Ljava/util/Map;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->-get3()Ljava/util/Map;

    move-result-object v7

    iget v8, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 872
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mService:Landroid/os/IBinder;

    const/4 v8, 0x0

    invoke-interface {v7, p0, v8}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 876
    :goto_1
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->-get3()Ljava/util/Map;

    move-result-object v7

    iget v8, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 877
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/knox/keystore/ICertEnrollmentService;>;"
    iget-object v7, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mCepProtocol:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 878
    iget-object v7, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mCepProtocol:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    :cond_2
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v7

    if-nez v7, :cond_3

    .line 880
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->-get3()Ljava/util/Map;

    move-result-object v7

    iget v8, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    .end local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/knox/keystore/ICertEnrollmentService;>;"
    :cond_3
    return-void

    .line 873
    :catch_0
    move-exception v1

    .line 874
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->-get1()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "Death link does not exist \t"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
