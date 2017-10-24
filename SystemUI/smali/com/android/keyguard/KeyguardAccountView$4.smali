.class Lcom/android/keyguard/KeyguardAccountView$4;
.super Ljava/lang/Object;
.source "KeyguardAccountView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardAccountView;->postOnCheckPasswordResult(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardAccountView;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardAccountView;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardAccountView;
    .param p2, "val$success"    # Z

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAccountView$4;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardAccountView$4;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 276
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAccountView$4;->val$success:Z

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView$4;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAccountView;->-get1(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v3, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    .line 290
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView$4;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAccountView;->-get1(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 275
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView$4;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAccountView;->-get0(Lcom/android/keyguard/KeyguardAccountView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView$4;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAccountView;->-get8(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->kg_login_invalid_input:I

    invoke-interface {v0, v1, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 296
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView$4;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAccountView;->-get4(Lcom/android/keyguard/KeyguardAccountView;)Landroid/widget/EditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView$4;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v0, v3}, Lcom/android/keyguard/KeyguardAccountView;->-set0(Lcom/android/keyguard/KeyguardAccountView;Z)Z

    goto :goto_0

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView$4;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAccountView;->-get8(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->no_network_connection:I

    invoke-interface {v0, v1, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_1
.end method
