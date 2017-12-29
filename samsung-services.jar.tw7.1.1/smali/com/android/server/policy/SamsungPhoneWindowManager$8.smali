.class Lcom/android/server/policy/SamsungPhoneWindowManager$8;
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
    .line 890
    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$8;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, -0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 892
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 893
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 894
    invoke-static {p1}, Lcom/android/server/policy/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 895
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$8;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getPenState()I

    move-result v1

    .line 896
    .local v1, "penState":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 897
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$8;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v5, v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenInsertedIntentUserSwitch:Landroid/content/Intent;

    const-string v6, "penInsert"

    if-ne v1, v3, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 898
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$8;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenInsertedIntentUserSwitch:Landroid/content/Intent;

    const-string v5, "isScreenOn"

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$8;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 899
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$8;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenInsertedIntentUserSwitch:Landroid/content/Intent;

    const-string v5, "isKeyguardLocked"

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$8;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 900
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$8;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$8;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenInsertedIntentUserSwitch:Landroid/content/Intent;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 904
    .end local v1    # "penState":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$8;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-boolean v2, v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBootCompleted:Z

    if-eqz v2, :cond_2

    .line 905
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$8;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 906
    const-string v6, "any_screen_enabled"

    .line 905
    invoke-static {v5, v6, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-set5(Lcom/android/server/policy/SamsungPhoneWindowManager;I)I

    .line 907
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$8;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 908
    const-string v6, "one_handed_op_wakeup_type"

    .line 907
    invoke-static {v5, v6, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-set6(Lcom/android/server/policy/SamsungPhoneWindowManager;I)I

    .line 910
    sget-boolean v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_1

    .line 911
    const-string v2, "SamsungPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "userSwitched.  mEasyOneHandEnabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$8;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v6}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-get6(Lcom/android/server/policy/SamsungPhoneWindowManager;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mEasyOneHandTriggerType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$8;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v6}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-get7(Lcom/android/server/policy/SamsungPhoneWindowManager;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$8;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-get6(Lcom/android/server/policy/SamsungPhoneWindowManager;)I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 913
    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getReduceScreenPolicy()Lcom/android/server/policy/ReduceScreenPolicy;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/android/server/policy/ReduceScreenPolicy;->startService(I)V

    .line 891
    :cond_2
    return-void

    .restart local v1    # "penState":I
    :cond_3
    move v2, v4

    .line 897
    goto/16 :goto_0
.end method
