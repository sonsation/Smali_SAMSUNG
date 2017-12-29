.class Lcom/android/server/policy/SamsungPhoneWindowManager$5;
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
    .line 854
    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$5;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 856
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 857
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 858
    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$5;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iput-boolean v2, v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBootCompleted:Z

    .line 860
    invoke-static {p1}, Lcom/android/server/policy/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 861
    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$5;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getPenState()I

    move-result v1

    .line 862
    .local v1, "penState":I
    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$5;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenState:I

    if-eq v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$5;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-wrap1(Lcom/android/server/policy/SamsungPhoneWindowManager;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 855
    .end local v1    # "penState":I
    :cond_0
    :goto_0
    return-void

    .line 863
    .restart local v1    # "penState":I
    :cond_1
    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$5;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    const-wide/16 v4, 0x0

    if-ne v1, v2, :cond_2

    :goto_1
    invoke-virtual {v3, v4, v5, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->notifyPenSwitchChanged(JZ)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method
