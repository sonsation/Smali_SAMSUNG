.class Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$3;
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
    .line 1129
    iput-object p1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$3;->this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1133
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1134
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string/jumbo v3, "com.sec.knox.container.action.launchinfo"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1135
    iget-object v3, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$3;->this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v3}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1136
    const-string/jumbo v3, "KnoxStateMonitor"

    const-string/jumbo v4, "onReceive() : Received INTENT_ACTION_LAUNCH_INFO"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    :cond_0
    const-string/jumbo v3, "userId"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1138
    .local v2, "userId":I
    if-ltz v2, :cond_1

    .line 1139
    iget-object v3, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$3;->this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v3}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->-get7(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 1141
    iget-object v3, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$3;->this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v3}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->-get8(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 1143
    iget-object v3, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$3;->this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    iget-object v3, v3, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v3}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x1390

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1144
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$3;->this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    iget-object v3, v3, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v3}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1131
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "userId":I
    :cond_1
    return-void
.end method
