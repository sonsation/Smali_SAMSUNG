.class Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;
.super Ljava/lang/Object;
.source "ConfirmLockPattern.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->startVerifyPattern(Ljava/util/List;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$localEffectiveUserId:I

.field final synthetic val$localUserId:I

.field final synthetic val$pattern:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;Landroid/content/Intent;Ljava/util/List;II)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;
    .param p2, "val$intent"    # Landroid/content/Intent;
    .param p4, "val$localEffectiveUserId"    # I
    .param p5, "val$localUserId"    # I

    .prologue
    .line 769
    .local p3, "val$pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    iput-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->this$2:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    iput-object p2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->val$pattern:Ljava/util/List;

    iput p4, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->val$localEffectiveUserId:I

    iput p5, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->val$localUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerified([BI)V
    .locals 16
    .param p1, "token"    # [B
    .param p2, "timeoutMs"    # I

    .prologue
    .line 772
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->this$2:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    iget-object v2, v2, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$1:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->-set4(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 773
    const/4 v10, 0x0

    .line 774
    .local v10, "matched":Z
    if-eqz p1, :cond_0

    .line 775
    const/4 v10, 0x1

    .line 776
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->this$2:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    iget-object v2, v2, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$1:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget-boolean v2, v2, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mReturnCredentials:Z

    if-eqz v2, :cond_0

    .line 777
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->val$intent:Landroid/content/Intent;

    .line 778
    const-string/jumbo v3, "hw_auth_token"

    .line 777
    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 780
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->val$intent:Landroid/content/Intent;

    const-string/jumbo v3, "password"

    .line 781
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->val$pattern:Ljava/util/List;

    invoke-static {v4}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 780
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 784
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->this$2:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    iget-object v2, v2, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$1:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v2}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->-get4(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    if-nez v10, :cond_2

    .line 785
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->this$2:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    iget-object v2, v2, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$1:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v2}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->-get6(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/settings/CredentialCheckResultTracker;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->val$intent:Landroid/content/Intent;

    .line 786
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->val$localEffectiveUserId:I

    .line 785
    move/from16 v0, p2

    invoke-virtual {v2, v10, v3, v0, v4}, Lcom/android/settings/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    .line 771
    :goto_0
    return-void

    .line 784
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->val$localEffectiveUserId:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->val$localUserId:I

    if-ne v2, v3, :cond_1

    .line 788
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->this$2:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    iget-object v11, v2, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$1:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    .line 789
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->this$2:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    iget-object v2, v2, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$1:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget-object v9, v2, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->val$pattern:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->this$2:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    iget-object v2, v2, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$1:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v2}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->-get4(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->val$localUserId:I

    .line 790
    new-instance v2, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->val$intent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->val$localEffectiveUserId:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->val$pattern:Ljava/util/List;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->val$localUserId:I

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1;-><init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;Landroid/content/Intent;ILjava/util/List;I)V

    move-object v4, v9

    move-object v5, v12

    move-wide v6, v14

    move-object v9, v2

    .line 788
    invoke-static/range {v4 .. v9}, Lcom/android/internal/widget/LockPatternChecker;->verifyPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->-set6(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
