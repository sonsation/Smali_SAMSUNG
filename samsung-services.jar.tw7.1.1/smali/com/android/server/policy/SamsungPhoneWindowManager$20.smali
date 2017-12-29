.class Lcom/android/server/policy/SamsungPhoneWindowManager$20;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 8511
    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$20;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 8514
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$20;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    .line 8516
    invoke-static {}, Landroid/os/FactoryTest;->isLongPressOnPowerOffEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8517
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v0

    .line 8516
    if-nez v0, :cond_0

    .line 8518
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$20;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v0

    .line 8516
    if-eqz v0, :cond_2

    .line 8520
    :cond_0
    const-string v0, "SamsungPhoneWindowManager"

    const-string v1, "mEndCallLongPress on FactoryTest conditions"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8521
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$20;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0, v3, v2, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 8522
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$20;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    const-string v1, "globalactions"

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 8523
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$20;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0, v2}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    .line 8513
    :cond_1
    :goto_0
    return-void

    .line 8525
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$20;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isCombinationKeyTriggered()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8527
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$20;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->ignorePowerKeyInEncrypting()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 8529
    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$20;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0, v3, v2, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    move-result v0

    if-nez v0, :cond_4

    .line 8530
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$20;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->performAuditoryFeedbackForAccessibilityIfNeed()V

    .line 8532
    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$20;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal()V

    goto :goto_0
.end method
