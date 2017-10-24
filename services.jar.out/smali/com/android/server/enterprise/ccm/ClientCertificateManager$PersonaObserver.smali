.class Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;
.super Lcom/samsung/android/knox/SemPersonaObserver;
.source "ClientCertificateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/ccm/ClientCertificateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonaObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/ccm/ClientCertificateManager;Landroid/content/Context;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "containerId"    # I
    .param p4, "flags"    # I

    .prologue
    .line 4011
    iput-object p1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    .line 4012
    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/knox/SemPersonaObserver;-><init>(Landroid/content/Context;II)V

    .line 4011
    return-void
.end method


# virtual methods
.method public onKeyGuardStateChanged(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 4054
    return-void
.end method

.method public onSessionExpired()V
    .locals 0

    .prologue
    .line 4016
    return-void
.end method

.method public onStateChange(Lcom/samsung/android/knox/SemPersonaState;Lcom/samsung/android/knox/SemPersonaState;)V
    .locals 6
    .param p1, "newState"    # Lcom/samsung/android/knox/SemPersonaState;
    .param p2, "previousState"    # Lcom/samsung/android/knox/SemPersonaState;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 4022
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4023
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-get1()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStateChange - newState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", previousState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4024
    const-string/jumbo v3, ", containerId: "

    .line 4023
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4024
    iget v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->containerId:I

    .line 4023
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4028
    :cond_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaState;->CREATING:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {p2, v1}, Lcom/samsung/android/knox/SemPersonaState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/samsung/android/knox/SemPersonaState;->ACTIVE:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {p1, v1}, Lcom/samsung/android/knox/SemPersonaState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4029
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    invoke-static {v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-get2(Lcom/android/server/enterprise/ccm/ClientCertificateManager;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v1

    iget v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->containerId:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4031
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    iget v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->containerId:I

    invoke-static {v1, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-wrap4(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z

    move-result v0

    .line 4032
    .local v0, "isCCMDefaultStore":Z
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-get0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4033
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-get1()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStateChange: isCCMDefaultStore set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4034
    :cond_1
    if-nez v0, :cond_4

    .line 4035
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    iget v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->containerId:I

    invoke-static {v1, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-wrap6(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 4036
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-get0()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4037
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-get1()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onStateChange: Error making CCM default"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4038
    :cond_2
    return-void

    .line 4040
    :cond_3
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    iget v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->containerId:I

    invoke-static {v1, v2, v4}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-wrap5(Lcom/android/server/enterprise/ccm/ClientCertificateManager;IZ)Z

    .line 4045
    .end local v0    # "isCCMDefaultStore":Z
    :cond_4
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    invoke-static {v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-get2(Lcom/android/server/enterprise/ccm/ClientCertificateManager;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v1

    iget v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->containerId:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/SemPersonaManager;->getStateManager(I)Lcom/samsung/android/knox/SemPersonaManager$StateManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knox/SemPersonaState;->LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->inState(Lcom/samsung/android/knox/SemPersonaState;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 4046
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    invoke-static {v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-get2(Lcom/android/server/enterprise/ccm/ClientCertificateManager;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v1

    iget v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->containerId:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/SemPersonaManager;->getStateManager(I)Lcom/samsung/android/knox/SemPersonaManager$StateManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knox/SemPersonaState;->SUPER_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->inState(Lcom/samsung/android/knox/SemPersonaState;)Z

    move-result v1

    .line 4045
    if-eqz v1, :cond_7

    .line 4047
    :cond_5
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    iget v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->containerId:I

    invoke-static {v1, v2, v4, v4, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-wrap7(Lcom/android/server/enterprise/ccm/ClientCertificateManager;IZZZ)Z

    .line 4020
    :cond_6
    :goto_0
    return-void

    .line 4048
    :cond_7
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    invoke-static {v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-get2(Lcom/android/server/enterprise/ccm/ClientCertificateManager;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v1

    iget v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->containerId:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/SemPersonaManager;->getStateManager(I)Lcom/samsung/android/knox/SemPersonaManager$StateManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knox/SemPersonaState;->ACTIVE:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->inState(Lcom/samsung/android/knox/SemPersonaState;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4049
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    iget v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->containerId:I

    invoke-static {v1, v2, v4, v5, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-wrap7(Lcom/android/server/enterprise/ccm/ClientCertificateManager;IZZZ)Z

    goto :goto_0
.end method
