.class Lcom/android/keyguard/KeyguardUCMPinView$1$1;
.super Ljava/lang/Object;
.source "KeyguardUCMPinView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardUCMPinView$1;->onVerifyPinResponse(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardUCMPinView$1;

.field final synthetic val$errorCode:I

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUCMPinView$1;II)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/keyguard/KeyguardUCMPinView$1;
    .param p2, "val$result"    # I
    .param p3, "val$errorCode"    # I

    .prologue
    .line 620
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$1$1;->this$1:Lcom/android/keyguard/KeyguardUCMPinView$1;

    iput p2, p0, Lcom/android/keyguard/KeyguardUCMPinView$1$1;->val$result:I

    iput p3, p0, Lcom/android/keyguard/KeyguardUCMPinView$1$1;->val$errorCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 622
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$1$1;->this$1:Lcom/android/keyguard/KeyguardUCMPinView$1;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUCMPinView$1;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {v0, v1, v1}, Lcom/android/keyguard/KeyguardUCMPinView;->resetPasswordText(ZZ)V

    .line 623
    const-string/jumbo v0, "KeyguardUCMPinView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "verifyPINandUnlock : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$1$1;->val$result:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$1$1;->this$1:Lcom/android/keyguard/KeyguardUCMPinView$1;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUCMPinView$1;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUCMPinView;->-get6(Lcom/android/keyguard/KeyguardUCMPinView;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 625
    const-string/jumbo v0, "KeyguardUCMPinView"

    const-string/jumbo v1, "mUnlockProgressDialog != null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$1$1;->this$1:Lcom/android/keyguard/KeyguardUCMPinView$1;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUCMPinView$1;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUCMPinView;->-get6(Lcom/android/keyguard/KeyguardUCMPinView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 627
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$1$1;->this$1:Lcom/android/keyguard/KeyguardUCMPinView$1;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUCMPinView$1;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v0, v3}, Lcom/android/keyguard/KeyguardUCMPinView;->-set5(Lcom/android/keyguard/KeyguardUCMPinView;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$1$1;->this$1:Lcom/android/keyguard/KeyguardUCMPinView$1;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUCMPinView$1;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUCMPinView;->-get3(Lcom/android/keyguard/KeyguardUCMPinView;)Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;

    move-result-object v0

    iget v1, p0, Lcom/android/keyguard/KeyguardUCMPinView$1$1;->val$result:I

    iget v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$1$1;->val$errorCode:I

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->setStateAndRefreshUIIfNeeded(IIZ)V

    .line 630
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$1$1;->this$1:Lcom/android/keyguard/KeyguardUCMPinView$1;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUCMPinView$1;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUCMPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_1

    .line 631
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$1$1;->this$1:Lcom/android/keyguard/KeyguardUCMPinView$1;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUCMPinView$1;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUCMPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 633
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$1$1;->this$1:Lcom/android/keyguard/KeyguardUCMPinView$1;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUCMPinView$1;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v0, v3}, Lcom/android/keyguard/KeyguardUCMPinView;->-set0(Lcom/android/keyguard/KeyguardUCMPinView;Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;)Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;

    .line 634
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$1$1;->this$1:Lcom/android/keyguard/KeyguardUCMPinView$1;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUCMPinView$1;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardUCMPinView;->setKeepScreenOn(Z)V

    .line 621
    return-void
.end method
