.class Lcom/android/server/DirEncryptServiceHelper$1$1;
.super Ljava/lang/Thread;
.source "DirEncryptServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DirEncryptServiceHelper$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/DirEncryptServiceHelper$1;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/server/DirEncryptServiceHelper$1;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/DirEncryptServiceHelper$1;
    .param p2, "val$intent"    # Landroid/content/Intent;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper$1$1;->this$1:Lcom/android/server/DirEncryptServiceHelper$1;

    iput-object p2, p0, Lcom/android/server/DirEncryptServiceHelper$1$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 115
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper$1$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "action":Ljava/lang/String;
    const-string v2, "DirEncryptService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const-string v2, "com.samsung.android.security.SemSdCardEncryption.UNMOUNT_POLICY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 119
    const-string v2, "DirEncryptService"

    const-string v3, "Unmount policy noti pressed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper$1$1;->this$1:Lcom/android/server/DirEncryptServiceHelper$1;

    iget-object v2, v2, Lcom/android/server/DirEncryptServiceHelper$1;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    invoke-static {v2}, Lcom/android/server/DirEncryptServiceHelper;->-get3(Lcom/android/server/DirEncryptServiceHelper;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper$1$1;->this$1:Lcom/android/server/DirEncryptServiceHelper$1;

    iget-object v2, v2, Lcom/android/server/DirEncryptServiceHelper$1;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    invoke-static {v2}, Lcom/android/server/DirEncryptServiceHelper;->-get1(Lcom/android/server/DirEncryptServiceHelper;)Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    .line 123
    :cond_2
    const-string v2, "DirEncryptService"

    const-string v3, "Switch User"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper$1$1;->this$1:Lcom/android/server/DirEncryptServiceHelper$1;

    iget-object v2, v2, Lcom/android/server/DirEncryptServiceHelper$1;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v2}, Lcom/android/server/DirEncryptServiceHelper;->isEncryptionAppliedSDCard()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    :try_start_0
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper$1$1;->this$1:Lcom/android/server/DirEncryptServiceHelper$1;

    iget-object v2, v2, Lcom/android/server/DirEncryptServiceHelper$1;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    invoke-static {v2}, Lcom/android/server/DirEncryptServiceHelper;->-get2(Lcom/android/server/DirEncryptServiceHelper;)Lcom/samsung/android/security/DirEncryptionWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/security/DirEncryptionWrapper;->unmountVolume()Z

    .line 127
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper$1$1;->this$1:Lcom/android/server/DirEncryptServiceHelper$1;

    iget-object v2, v2, Lcom/android/server/DirEncryptServiceHelper$1;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    invoke-static {v2}, Lcom/android/server/DirEncryptServiceHelper;->-get2(Lcom/android/server/DirEncryptServiceHelper;)Lcom/samsung/android/security/DirEncryptionWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/security/DirEncryptionWrapper;->mountVolume()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
