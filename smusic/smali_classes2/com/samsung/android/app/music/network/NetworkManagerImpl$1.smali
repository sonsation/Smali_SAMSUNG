.class Lcom/samsung/android/app/music/network/NetworkManagerImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/network/NetworkManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/network/NetworkManagerImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/network/NetworkManagerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl$1;->this$0:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 119
    invoke-static {}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNetworkChangeReceiver() | mOnStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl$1;->this$0:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-static {v2}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->access$100(Lcom/samsung/android/app/music/network/NetworkManagerImpl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl$1;->this$0:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-static {v0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->access$200(Lcom/samsung/android/app/music/network/NetworkManagerImpl;)V

    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl$1;->this$0:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-static {v0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->access$100(Lcom/samsung/android/app/music/network/NetworkManagerImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl$1;->this$0:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-static {v0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->access$300(Lcom/samsung/android/app/music/network/NetworkManagerImpl;)V

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl$1;->this$0:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->access$402(Lcom/samsung/android/app/music/network/NetworkManagerImpl;Z)Z

    goto :goto_0
.end method
