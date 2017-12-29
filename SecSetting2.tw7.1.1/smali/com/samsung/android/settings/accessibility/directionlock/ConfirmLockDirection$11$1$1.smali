.class Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1$1;
.super Ljava/lang/Object;
.source "ConfirmLockDirection.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1;->onVerified([BI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$2"    # Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1;
    .param p2, "val$intent"    # Landroid/content/Intent;

    .prologue
    .line 882
    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1$1;->this$2:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1;

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerified([BI)V
    .locals 3
    .param p1, "token"    # [B
    .param p2, "timeoutMs"    # I

    .prologue
    const/4 v2, 0x0

    .line 885
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1$1;->this$2:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1;

    iget-object v1, v1, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1;->this$1:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;

    iget-object v1, v1, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    invoke-static {v1, v2}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->-set1(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 886
    const-string/jumbo v1, "ConfirmLockDirection"

    const-string/jumbo v2, "startVerifyPattern onVerified:"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    const/4 v0, 0x0

    .line 888
    .local v0, "matched":Z
    if-eqz p1, :cond_0

    .line 889
    const/4 v0, 0x1

    .line 890
    const-string/jumbo v1, "ConfirmLockDirection"

    .line 891
    const-string/jumbo v2, "startVerifyPattern token is not null setting token in intent:"

    .line 890
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1$1;->val$intent:Landroid/content/Intent;

    const-string/jumbo v2, "hw_auth_token_face"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 895
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1$1;->this$2:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1;

    iget-object v1, v1, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1;->this$1:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;

    iget-object v1, v1, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1$1;->val$intent:Landroid/content/Intent;

    invoke-static {v1, v0, v2, p2}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->-wrap3(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;ZLandroid/content/Intent;I)V

    .line 884
    return-void
.end method
