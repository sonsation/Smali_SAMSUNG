.class Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1;
.super Ljava/lang/Object;
.source "ConfirmLockDirection.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;->onVerified([BI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$localEffectiveUserId:I

.field final synthetic val$pattern:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;Landroid/content/Intent;Ljava/util/List;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;
    .param p2, "val$intent"    # Landroid/content/Intent;
    .param p4, "val$localEffectiveUserId"    # I

    .prologue
    .line 865
    .local p3, "val$pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1;->this$1:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1;->val$pattern:Ljava/util/List;

    iput p4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1;->val$localEffectiveUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerified([BI)V
    .locals 9
    .param p1, "token"    # [B
    .param p2, "timeoutMs"    # I

    .prologue
    const/4 v1, 0x0

    .line 868
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1;->this$1:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->-set2(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 869
    const-string/jumbo v0, "ConfirmLockDirection"

    const-string/jumbo v1, "startVerifyPattern onVerified:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    const/4 v6, 0x0

    .line 871
    .local v6, "matched":Z
    if-eqz p1, :cond_0

    .line 872
    const/4 v6, 0x1

    .line 873
    const-string/jumbo v0, "ConfirmLockDirection"

    .line 874
    const-string/jumbo v1, "startVerifyPattern token is not null setting token in intent:"

    .line 873
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1;->val$intent:Landroid/content/Intent;

    const-string/jumbo v1, "hw_auth_token_iris"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 878
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1;->this$1:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->-get1(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    if-nez v6, :cond_2

    .line 879
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1;->this$1:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1;->val$intent:Landroid/content/Intent;

    invoke-static {v0, v6, v1, p2}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->-wrap3(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;ZLandroid/content/Intent;I)V

    .line 867
    :goto_0
    return-void

    .line 881
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1;->this$1:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;

    iget-object v7, v0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1;->this$1:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->-get10(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1;->val$pattern:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1;->this$1:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;

    iget-object v2, v2, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->-get1(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)J

    move-result-wide v2

    .line 882
    iget v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1;->val$localEffectiveUserId:I

    new-instance v5, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1$1;

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1;->val$intent:Landroid/content/Intent;

    invoke-direct {v5, p0, v8}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1$1;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1;Landroid/content/Intent;)V

    .line 881
    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternChecker;->verifyPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->-set1(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
