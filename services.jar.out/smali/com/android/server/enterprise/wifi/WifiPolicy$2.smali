.class Lcom/android/server/enterprise/wifi/WifiPolicy$2;
.super Landroid/content/pm/ISystemPersonaObserver$Stub;
.source "WifiPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/wifi/WifiPolicy;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/wifi/WifiPolicy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/enterprise/wifi/WifiPolicy;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$2;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    invoke-direct {p0}, Landroid/content/pm/ISystemPersonaObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onKnoxContainerLaunch(I)V
    .locals 10
    .param p1, "personaId"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 307
    const-string/jumbo v5, "WifiPolicyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " onKnoxContainerLaunch called for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 309
    .local v0, "callingUid":I
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 310
    .local v3, "ctxInfo":Lcom/samsung/android/knox/ContextInfo;
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v4

    .line 311
    .local v4, "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    if-eqz p1, :cond_4

    .line 312
    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$2;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    iget-object v5, v5, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, p1}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v2

    .line 313
    .local v2, "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    const/4 v1, 0x0

    .line 314
    .local v1, "ccp":Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;
    if-eqz v2, :cond_0

    .line 315
    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getContainerConfigurationPolicy()Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;

    move-result-object v1

    .line 318
    .end local v1    # "ccp":Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;
    :cond_0
    const/16 v5, 0x64

    if-lt p1, v5, :cond_2

    .line 319
    invoke-static {v9}, Lcom/android/server/enterprise/wifi/WifiPolicy;->-set1(Z)Z

    .line 324
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;->isResetContainerOnRebootEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 306
    .end local v2    # "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    :cond_1
    :goto_1
    return-void

    .line 321
    .restart local v2    # "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    :cond_2
    invoke-static {v8}, Lcom/android/server/enterprise/wifi/WifiPolicy;->-set1(Z)Z

    goto :goto_0

    .line 325
    :cond_3
    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$2;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    invoke-virtual {v5, v3, v9}, Lcom/android/server/enterprise/wifi/WifiPolicy;->activateWifiSsidRestriction(Lcom/samsung/android/knox/ContextInfo;Z)Z

    goto :goto_1

    .line 328
    .end local v2    # "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    :cond_4
    invoke-static {}, Lcom/android/server/enterprise/wifi/WifiPolicy;->-get0()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 329
    invoke-static {v8}, Lcom/android/server/enterprise/wifi/WifiPolicy;->-set1(Z)Z

    .line 330
    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$2;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    invoke-virtual {v5, v3, v9}, Lcom/android/server/enterprise/wifi/WifiPolicy;->activateWifiSsidRestriction(Lcom/samsung/android/knox/ContextInfo;Z)Z

    goto :goto_1
.end method

.method public onPersonaActive(I)V
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 292
    const-string/jumbo v0, "WifiPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPersonaActive called for  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public onRemovePersona(I)V
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 297
    const-string/jumbo v0, "WifiPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRemovePersona called for  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method public onResetPersona(I)V
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 302
    const-string/jumbo v0, "WifiPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onResetPersona called for  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method public onStateChange(ILcom/samsung/android/knox/SemPersonaState;Lcom/samsung/android/knox/SemPersonaState;)V
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "oldState"    # Lcom/samsung/android/knox/SemPersonaState;
    .param p3, "newState"    # Lcom/samsung/android/knox/SemPersonaState;

    .prologue
    .line 337
    const-string/jumbo v0, "WifiPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStateChange called for  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    return-void
.end method
