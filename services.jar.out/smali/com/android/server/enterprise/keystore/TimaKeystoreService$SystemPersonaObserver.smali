.class Lcom/android/server/enterprise/keystore/TimaKeystoreService$SystemPersonaObserver;
.super Landroid/content/pm/ISystemPersonaObserver$Stub;
.source "TimaKeystoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/keystore/TimaKeystoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemPersonaObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    .prologue
    .line 1035
    iput-object p1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$SystemPersonaObserver;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    invoke-direct {p0}, Landroid/content/pm/ISystemPersonaObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/keystore/TimaKeystoreService;Lcom/android/server/enterprise/keystore/TimaKeystoreService$SystemPersonaObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService$SystemPersonaObserver;-><init>(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)V

    return-void
.end method


# virtual methods
.method public onKnoxContainerLaunch(I)V
    .locals 0
    .param p1, "personaId"    # I

    .prologue
    .line 1056
    return-void
.end method

.method public onPersonaActive(I)V
    .locals 0
    .param p1, "personaId"    # I

    .prologue
    .line 1036
    return-void
.end method

.method public onRemovePersona(I)V
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 1041
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-get1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " onRemovePersona called for  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    iget-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$SystemPersonaObserver;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    const-string/jumbo v1, "defaultpackage"

    invoke-static {v0, p1, v1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-wrap1(Lcom/android/server/enterprise/keystore/TimaKeystoreService;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1043
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-get1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SystemPersonaObserver: deletePackageRecord failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    :cond_0
    return-void
.end method

.method public onResetPersona(I)V
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 1049
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-get1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " onResetPersona called for  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    iget-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$SystemPersonaObserver;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    const-string/jumbo v1, "defaultpackage"

    invoke-static {v0, p1, v1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-wrap1(Lcom/android/server/enterprise/keystore/TimaKeystoreService;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1051
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-get1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SystemPersonaObserver: deletePackageRecord failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    :cond_0
    return-void
.end method

.method public onStateChange(ILcom/samsung/android/knox/SemPersonaState;Lcom/samsung/android/knox/SemPersonaState;)V
    .locals 0
    .param p1, "personaId"    # I
    .param p2, "oldState"    # Lcom/samsung/android/knox/SemPersonaState;
    .param p3, "newState"    # Lcom/samsung/android/knox/SemPersonaState;

    .prologue
    .line 1059
    return-void
.end method
