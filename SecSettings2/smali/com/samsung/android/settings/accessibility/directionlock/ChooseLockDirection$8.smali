.class Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$8;
.super Ljava/lang/Object;
.source "ChooseLockDirection.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->verifyForFingerprint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    .prologue
    .line 1009
    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$8;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerified([BI)V
    .locals 4
    .param p1, "token"    # [B
    .param p2, "timeoutMs"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1012
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$8;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-set2(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;Z)Z

    .line 1013
    const-string/jumbo v0, "ChooseLockDirection"

    const-string/jumbo v1, "verifyForFingerprint in onVerified()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    if-nez p1, :cond_0

    .line 1015
    const-string/jumbo v0, "ChooseLockDirection"

    .line 1016
    const-string/jumbo v1, "verifyForFingerprint critical: no token returned for known good pattern"

    .line 1015
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$8;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0, v3}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-set6(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 1020
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$8;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get24(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/content/Intent;

    move-result-object v0

    .line 1021
    const-string/jumbo v1, "hw_auth_token"

    .line 1020
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1023
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$8;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$8;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get24(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->setResult(ILandroid/content/Intent;)V

    .line 1024
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$8;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get15(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1025
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$8;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->finish()V

    .line 1011
    :cond_1
    return-void
.end method
