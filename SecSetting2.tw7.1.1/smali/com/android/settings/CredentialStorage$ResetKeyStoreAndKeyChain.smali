.class Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;
.super Landroid/os/AsyncTask;
.source "CredentialStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CredentialStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetKeyStoreAndKeyChain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CredentialStorage;


# direct methods
.method private constructor <init>(Lcom/android/settings/CredentialStorage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/CredentialStorage;

    .prologue
    .line 580
    iput-object p1, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/CredentialStorage;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;-><init>(Lcom/android/settings/CredentialStorage;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 12
    .param p1, "unused"    # [Ljava/lang/Void;

    .prologue
    const/4 v11, 0x0

    .line 585
    const/4 v7, 0x1

    .line 587
    .local v7, "success":Z
    :try_start_0
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    invoke-direct {v1, v9}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 588
    .local v1, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    iget-object v9, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    sget-object v10, Lcom/samsung/android/knox/EnterpriseDeviceManager;->KNOX_CCM_POLICY_SERVICE:Ljava/lang/String;

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/settings/CredentialStorage;->-set0(Lcom/android/settings/CredentialStorage;Lcom/samsung/android/knox/keystore/IClientCertificateManager;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    .line 589
    iget-object v9, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-static {v9}, Lcom/android/settings/CredentialStorage;->-get0(Lcom/android/settings/CredentialStorage;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-static {v9}, Lcom/android/settings/CredentialStorage;->-get0(Lcom/android/settings/CredentialStorage;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v9

    invoke-interface {v9}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->getCCMVersion()Ljava/lang/String;

    move-result-object v0

    .line 591
    :goto_0
    const-string/jumbo v9, "3.0"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 592
    iget-object v9, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-static {v9}, Lcom/android/settings/CredentialStorage;->-get0(Lcom/android/settings/CredentialStorage;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 593
    iget-object v9, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-static {v9}, Lcom/android/settings/CredentialStorage;->-get0(Lcom/android/settings/CredentialStorage;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v9

    invoke-interface {v9, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->isAccessControlMethodPassword(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 594
    iget-object v9, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-static {v9}, Lcom/android/settings/CredentialStorage;->-get0(Lcom/android/settings/CredentialStorage;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v9

    invoke-interface {v9, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->keychainMarkedReset(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v7

    .line 595
    .local v7, "success":Z
    if-eqz v7, :cond_3

    .line 596
    const-string/jumbo v9, "CredentialStorage"

    const-string/jumbo v10, "Successfully deleted certificates from CCM"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    .end local v1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local v7    # "success":Z
    :cond_0
    :goto_1
    new-instance v9, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v10, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-direct {v9, v10}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->resetKeyStore(I)V

    .line 617
    :try_start_1
    const-string/jumbo v9, "com.samsung.ucs.ucsservice"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v8

    .line 618
    .local v8, "ucmeService":Lcom/samsung/android/knox/ucm/core/IUcmService;
    if-eqz v8, :cond_1

    .line 619
    invoke-interface {v8}, Lcom/samsung/android/knox/ucm/core/IUcmService;->resetNonMdmCertificates()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 628
    .end local v8    # "ucmeService":Lcom/samsung/android/knox/ucm/core/IUcmService;
    :cond_1
    :goto_2
    :try_start_2
    iget-object v9, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-static {v9}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v6

    .line 630
    .local v6, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_3
    invoke-virtual {v6}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v9

    invoke-interface {v9}, Landroid/security/IKeyChainService;->reset()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v9

    .line 634
    :try_start_4
    invoke-virtual {v6}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    .line 630
    return-object v9

    .line 589
    .end local v6    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v7, "success":Z
    :cond_2
    const/4 v0, 0x0

    .local v0, "ccmVersion":Ljava/lang/String;
    goto :goto_0

    .line 598
    .end local v0    # "ccmVersion":Ljava/lang/String;
    .local v7, "success":Z
    :cond_3
    :try_start_5
    const-string/jumbo v9, "CredentialStorage"

    const-string/jumbo v10, "Error deleting certificates from CCM"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 606
    .end local v1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local v7    # "success":Z
    :catch_0
    move-exception v2

    .line 607
    .local v2, "e":Landroid/os/RemoteException;
    const/4 v7, 0x0

    .line 608
    .local v7, "success":Z
    const-string/jumbo v9, "CredentialStorage"

    const-string/jumbo v10, "Failed at ClientCertificateManager reset API"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 602
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    :cond_4
    const/4 v7, 0x0

    .line 603
    :try_start_6
    const-string/jumbo v9, "CredentialStorage"

    const-string/jumbo v10, "CCM Service is NOT available on this device"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    .line 621
    .end local v1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local v7    # "success":Z
    :catch_1
    move-exception v3

    .line 622
    .local v3, "e":Ljava/lang/Exception;
    const/4 v7, 0x0

    .line 623
    .restart local v7    # "success":Z
    const-string/jumbo v9, "CredentialStorage"

    const-string/jumbo v10, "Failed at UCS CredentialManagerService (IUcmService) reset API"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 631
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v7    # "success":Z
    .restart local v6    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_2
    move-exception v2

    .line 632
    .restart local v2    # "e":Landroid/os/RemoteException;
    const/4 v9, 0x0

    :try_start_7
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v9

    .line 634
    :try_start_8
    invoke-virtual {v6}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 632
    return-object v9

    .line 633
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v9

    .line 634
    invoke-virtual {v6}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 633
    throw v9
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_4

    .line 636
    .end local v6    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_3
    move-exception v5

    .line 637
    .local v5, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->interrupt()V

    .line 638
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    return-object v9

    .line 640
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :catch_4
    move-exception v4

    .line 641
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v9, "CredentialStorage"

    const-string/jumbo v10, "CredentialStorage is destroyed"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    return-object v9
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "unused"    # [Ljava/lang/Object;

    .prologue
    .line 582
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "unused":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    const/4 v2, 0x0

    .line 648
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    .line 650
    const v1, 0x7f0b1a49

    .line 649
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 655
    :goto_0
    iget-object v0, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-virtual {v0}, Lcom/android/settings/CredentialStorage;->finish()V

    .line 647
    return-void

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    .line 653
    const v1, 0x7f0b1a4a

    .line 652
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "success"    # Ljava/lang/Object;

    .prologue
    .line 647
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "success":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
