.class Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$4;
.super Ljava/lang/Object;
.source "ChooseLockAdditionalPin.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->startVerifyPattern(Lcom/android/internal/widget/LockPatternUtils;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;

    .prologue
    .line 742
    iput-object p1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$4;->this$1:Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerified([BI)V
    .locals 5
    .param p1, "token"    # [B
    .param p2, "timeoutMs"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 745
    if-nez p1, :cond_0

    .line 746
    const-string/jumbo v1, "ChooseLockAdditionalPin"

    const-string/jumbo v2, "critical: no token returned for known good pattern"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$4;->this$1:Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;

    invoke-static {v1, v4}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->-set1(Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 750
    invoke-static {}, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->-get5()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 751
    const-string/jumbo v1, "ChooseLockAdditionalPin"

    const-string/jumbo v2, "startVerifyPattern, KnoxFingerprint device lock set"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 756
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "hw_auth_token"

    .line 755
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 757
    iget-object v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$4;->this$1:Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;

    invoke-virtual {v1}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 758
    iget-object v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$4;->this$1:Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;

    invoke-virtual {v1}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 759
    iget-object v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$4;->this$1:Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;

    invoke-static {v1, v3}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->-set0(Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;Z)Z

    .line 744
    return-void
.end method
