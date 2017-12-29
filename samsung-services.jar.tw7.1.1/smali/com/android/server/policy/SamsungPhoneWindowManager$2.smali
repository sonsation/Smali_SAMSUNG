.class Lcom/android/server/policy/SamsungPhoneWindowManager$2;
.super Landroid/content/BroadcastReceiver;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/SamsungPhoneWindowManager;

    .prologue
    .line 732
    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$2;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 735
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 736
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 737
    const-string v3, "level"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 738
    .local v2, "batteryLevel":I
    const-string v3, "status"

    invoke-virtual {p2, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 739
    .local v1, "battStatus":I
    const-string v3, "SamsungPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_BATTERY_CHANGED - Level :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", battStatus :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    const/4 v3, 0x5

    if-gt v2, v3, :cond_1

    .line 741
    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    .line 742
    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$2;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v3, v7}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-set8(Lcom/android/server/policy/SamsungPhoneWindowManager;Z)Z

    .line 734
    .end local v1    # "battStatus":I
    .end local v2    # "batteryLevel":I
    :cond_0
    :goto_0
    return-void

    .line 744
    .restart local v1    # "battStatus":I
    .restart local v2    # "batteryLevel":I
    :cond_1
    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$2;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v3, v6}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-set8(Lcom/android/server/policy/SamsungPhoneWindowManager;Z)Z

    goto :goto_0
.end method
