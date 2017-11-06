.class Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController$1;
.super Landroid/content/BroadcastReceiver;
.source "BroadcastReceiverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;

    invoke-static {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SMUSIC-SV-Receiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected error happened: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
