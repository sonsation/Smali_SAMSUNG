.class Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "KnoxStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    .prologue
    .line 1091
    iput-object p1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$1;->this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1094
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1095
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "com.sec.knox.SETUP_COMPLETE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1096
    const-string/jumbo v2, "com.samsung.knox.securefolder.SETUP_COMPLETE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1095
    if-eqz v2, :cond_2

    .line 1098
    :cond_0
    const-string/jumbo v2, "userid"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1099
    .local v1, "id":I
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$1;->this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v2, v1}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->-wrap1(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1100
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$1;->this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v2}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->-wrap6(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)V

    .line 1101
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$1;->this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    iget-object v3, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$1;->this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v3}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->-get6(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->-set1(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;Ljava/util/List;)Ljava/util/List;

    .line 1102
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$1;->this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v2, v1}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->-wrap7(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;I)V

    .line 1103
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$1;->this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v2}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1104
    const-string/jumbo v2, "KnoxStateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "add a peronaObserver for newly added user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$1;->this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v2, v1}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->-wrap8(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;I)V

    .line 1093
    .end local v1    # "id":I
    :cond_2
    return-void
.end method
