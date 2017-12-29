.class Lcom/android/server/policy/SamsungPhoneWindowManager$3;
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
    .line 774
    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$3;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x3

    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 776
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 777
    .local v0, "action":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$3;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v2, v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-set13(Lcom/android/server/policy/SamsungPhoneWindowManager;I)I

    .line 778
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$3;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v2, v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-set3(Lcom/android/server/policy/SamsungPhoneWindowManager;I)I

    .line 779
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$3;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v2, v6}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-set4(Lcom/android/server/policy/SamsungPhoneWindowManager;I)I

    .line 780
    const-string v2, "com.samsung.android.motion.SWEEP_LEFT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 781
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$3;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 782
    const-string v2, "SamsungPhoneWindowManager"

    const-string v3, "Sweep LEFT, but keyguard on"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :cond_0
    :goto_0
    return-void

    .line 785
    :cond_1
    const-string v2, "SamsungPhoneWindowManager"

    const-string v3, "Sweep LEFT, so takeScreenshot"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$3;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$3;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {v3, v4, v5}, Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 787
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$3;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v2, v6}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-set13(Lcom/android/server/policy/SamsungPhoneWindowManager;I)I

    .line 788
    const-string v2, "PalmMotion"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 789
    .local v1, "display":Ljava/lang/String;
    const-string v2, "MAIN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 790
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$3;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v2, v5}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-set3(Lcom/android/server/policy/SamsungPhoneWindowManager;I)I

    goto :goto_0

    .line 791
    :cond_2
    const-string v2, "SUB"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 792
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$3;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v2, v6}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-set3(Lcom/android/server/policy/SamsungPhoneWindowManager;I)I

    goto :goto_0

    .line 796
    .end local v1    # "display":Ljava/lang/String;
    :cond_3
    const-string v2, "com.samsung.android.motion.SWEEP_RIGHT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 797
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$3;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 798
    const-string v2, "SamsungPhoneWindowManager"

    const-string v3, "Sweep RIGHT, but keyguard on"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 801
    :cond_4
    const-string v2, "SamsungPhoneWindowManager"

    const-string v3, "Sweep RIGHT, so takeScreenshot"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$3;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$3;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {v3, v4, v5}, Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 803
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$3;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v2, v7}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-set13(Lcom/android/server/policy/SamsungPhoneWindowManager;I)I

    .line 804
    const-string v2, "PalmMotion"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 805
    .restart local v1    # "display":Ljava/lang/String;
    const-string v2, "MAIN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 806
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$3;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v2, v5}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-set3(Lcom/android/server/policy/SamsungPhoneWindowManager;I)I

    goto/16 :goto_0

    .line 807
    :cond_5
    const-string v2, "SUB"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 808
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$3;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v2, v6}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-set3(Lcom/android/server/policy/SamsungPhoneWindowManager;I)I

    goto/16 :goto_0

    .line 812
    .end local v1    # "display":Ljava/lang/String;
    :cond_6
    const-string v2, "com.samsung.android.motion.SWEEP_DOWN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 813
    const-string v2, "SamsungPhoneWindowManager"

    const-string v3, "SWEEP DOWN"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 815
    :cond_7
    const-string v2, "com.samsung.android.motion.SWEEP_FULL_SCREEN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 816
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$3;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 817
    const-string v2, "SamsungPhoneWindowManager"

    const-string v3, "Sweep FULL SCREEN, but keyguard on"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 820
    :cond_8
    const-string v2, "SamsungPhoneWindowManager"

    const-string v3, "Sweep FULL SCREEN, so takeScreenshot"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$3;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v2, v5}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-set13(Lcom/android/server/policy/SamsungPhoneWindowManager;I)I

    .line 822
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$3;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v2, v7}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-set3(Lcom/android/server/policy/SamsungPhoneWindowManager;I)I

    .line 823
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$3;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$3;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {v3, v4, v5}, Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method
