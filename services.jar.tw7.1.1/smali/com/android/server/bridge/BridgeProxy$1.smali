.class Lcom/android/server/bridge/BridgeProxy$1;
.super Ljava/lang/Object;
.source "BridgeProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/bridge/BridgeProxy;->start(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/bridge/BridgeProxy;


# direct methods
.method constructor <init>(Lcom/android/server/bridge/BridgeProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/bridge/BridgeProxy$1;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v2, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/android/server/bridge/BridgeProxy$1;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v6}, Lcom/android/server/bridge/BridgeProxy;->-get8(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/server/bridge/BridgeProxy$1;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v6}, Lcom/android/server/bridge/BridgeProxy;->-get13(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonas()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/server/bridge/BridgeProxy$1;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v6}, Lcom/android/server/bridge/BridgeProxy;->-get1(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " isExecuteCleauUpService : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , mDelegateUserId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/bridge/BridgeProxy$1;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v8}, Lcom/android/server/bridge/BridgeProxy;->-get8(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.samsung.knox.rcp.components"

    const-string v8, "com.samsung.knox.rcp.components.contacts.syncer.CleanUpService"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/bridge/BridgeProxy$1;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v6}, Lcom/android/server/bridge/BridgeProxy;->-get5(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/bridge/BridgeProxy$1;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v7}, Lcom/android/server/bridge/BridgeProxy;->-get7(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/android/server/bridge/BridgeProxy$1;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/server/bridge/BridgeProxy;->-wrap13(Lcom/android/server/bridge/BridgeProxy;Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v3, 0x0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/SemPersonaInfo;

    if-eqz v3, :cond_3

    iget-boolean v6, v3, Lcom/samsung/android/knox/SemPersonaInfo;->partial:Z

    if-nez v6, :cond_3

    iget-boolean v6, v3, Lcom/samsung/android/knox/SemPersonaInfo;->removePersona:Z

    if-nez v6, :cond_3

    iget-boolean v6, v3, Lcom/samsung/android/knox/SemPersonaInfo;->setupComplete:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
