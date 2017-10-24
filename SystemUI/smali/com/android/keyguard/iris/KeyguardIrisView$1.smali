.class Lcom/android/keyguard/iris/KeyguardIrisView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardIrisView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/iris/KeyguardIrisView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/iris/KeyguardIrisView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/iris/KeyguardIrisView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/iris/KeyguardIrisView;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedUnlockAttemptChanged()V
    .locals 8

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 226
    sget-boolean v2, Lcom/android/keyguard/KeyguardRune;->SUPPORT_AOSP_LOCKOUT:Z

    if-eqz v2, :cond_0

    .line 227
    return-void

    .line 229
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v2}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get6(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v0

    .line 231
    .local v0, "attempts":I
    const-string/jumbo v2, "KeyguardIrisView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onFailedUnlockAttemptChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    if-eq v0, v6, :cond_1

    const/16 v2, 0x9

    if-le v0, v2, :cond_2

    .line 233
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v2}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get1(Lcom/android/keyguard/iris/KeyguardIrisView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 236
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v2}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get3(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v2}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get3(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardMessageArea;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 237
    if-le v0, v6, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v2}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get6(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAutoWipe()Z

    move-result v2

    .line 236
    if-eqz v2, :cond_3

    .line 238
    const-string/jumbo v1, ""

    .line 239
    .local v1, "errorText":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v2}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get6(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getRemainingAttemptsBeforeWipe()I

    move-result v2

    if-ne v2, v5, :cond_5

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v3}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get1(Lcom/android/keyguard/iris/KeyguardIrisView;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$string;->kg_iris_no_match:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 241
    iget-object v3, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v3}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get1(Lcom/android/keyguard/iris/KeyguardIrisView;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$string;->kg_1_attempt_remaining:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 240
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 248
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v2, v1}, Lcom/android/keyguard/iris/KeyguardIrisView;->-wrap3(Lcom/android/keyguard/iris/KeyguardIrisView;Ljava/lang/String;)V

    .line 225
    .end local v1    # "errorText":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    .line 235
    :cond_4
    iget-object v2, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v2}, Lcom/android/keyguard/iris/KeyguardIrisView;->-wrap1(Lcom/android/keyguard/iris/KeyguardIrisView;)V

    goto :goto_1

    .line 243
    .restart local v1    # "errorText":Ljava/lang/String;
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v3}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get1(Lcom/android/keyguard/iris/KeyguardIrisView;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$string;->kg_iris_no_match:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 244
    const-string/jumbo v3, " "

    .line 243
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 245
    iget-object v3, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v3}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get1(Lcom/android/keyguard/iris/KeyguardIrisView;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$string;->kg_n_attempts_remaining:I

    new-array v5, v5, [Ljava/lang/Object;

    .line 246
    iget-object v6, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v6}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get6(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getRemainingAttemptsBeforeWipe()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 245
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 243
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onIrisError(ILjava/lang/CharSequence;)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v1}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get1(Lcom/android/keyguard/iris/KeyguardIrisView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 153
    sget v2, Lcom/android/keyguard/R$string;->iris_guide_str_enable_toggle:I

    .line 152
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/iris/KeyguardIrisView;->-wrap2(Lcom/android/keyguard/iris/KeyguardIrisView;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public onIrisHelp(ILjava/lang/String;)V
    .locals 4
    .param p1, "helpCode"    # I
    .param p2, "errorText"    # Ljava/lang/String;

    .prologue
    .line 158
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v1}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get6(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v0

    .line 160
    .local v0, "attempts":I
    const/4 v1, -0x7

    if-ne p1, v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v1}, Lcom/android/keyguard/iris/KeyguardIrisView;->-wrap1(Lcom/android/keyguard/iris/KeyguardIrisView;)V

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-gt v0, v1, :cond_0

    .line 163
    const/16 v1, -0x9

    if-ne p1, v1, :cond_2

    .line 164
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    iget-object v2, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v2}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get1(Lcom/android/keyguard/iris/KeyguardIrisView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->iris_guide_str_enable_toggle:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/keyguard/iris/KeyguardIrisView;->-wrap2(Lcom/android/keyguard/iris/KeyguardIrisView;Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v1, p2}, Lcom/android/keyguard/iris/KeyguardIrisView;->-wrap3(Lcom/android/keyguard/iris/KeyguardIrisView;Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_2
    const/4 v1, -0x8

    if-ne p1, v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v1}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get6(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopIrisCamera()V

    .line 168
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v1}, Lcom/android/keyguard/iris/KeyguardIrisView;->-wrap1(Lcom/android/keyguard/iris/KeyguardIrisView;)V

    .line 169
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v1, p2}, Lcom/android/keyguard/iris/KeyguardIrisView;->-wrap2(Lcom/android/keyguard/iris/KeyguardIrisView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onIrisRunningStateChanged(Z)V
    .locals 2
    .param p1, "irisRunning"    # Z

    .prologue
    .line 195
    if-nez p1, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get6(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithIrisPossible(I)Z

    move-result v0

    .line 195
    if-eqz v0, :cond_1

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-wrap1(Lcom/android/keyguard/iris/KeyguardIrisView;)V

    .line 194
    :cond_1
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 3
    .param p1, "bouncer"    # Z

    .prologue
    const/4 v2, 0x4

    .line 176
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get0(Lcom/android/keyguard/iris/KeyguardIrisView;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0, p1}, Lcom/android/keyguard/iris/KeyguardIrisView;->-set0(Lcom/android/keyguard/iris/KeyguardIrisView;Z)Z

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get6(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisUnlockState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get6(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get2(Lcom/android/keyguard/iris/KeyguardIrisView;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 182
    const-string/jumbo v0, "KeyguardIrisView"

    const-string/jumbo v1, "preview to VISIBLE - onKeyguardBouncerChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get6(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisViewType(I)V

    .line 184
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get4(Lcom/android/keyguard/iris/KeyguardIrisView;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 175
    :goto_0
    return-void

    .line 180
    :cond_1
    return-void

    .line 186
    :cond_2
    const-string/jumbo v0, "KeyguardIrisView"

    const-string/jumbo v1, "preview to INVISIBLE - onKeyguardBouncerChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get6(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisViewType(I)V

    .line 188
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get4(Lcom/android/keyguard/iris/KeyguardIrisView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-wrap1(Lcom/android/keyguard/iris/KeyguardIrisView;)V

    goto :goto_0
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 2
    .param p1, "showing"    # Z

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get5(Lcom/android/keyguard/iris/KeyguardIrisView;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0, p1}, Lcom/android/keyguard/iris/KeyguardIrisView;->-set1(Lcom/android/keyguard/iris/KeyguardIrisView;Z)Z

    .line 143
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get6(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisUnlockState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get6(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockCompleted()Z

    move-result v0

    .line 143
    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get6(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisViewType(I)V

    .line 140
    :cond_0
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 4
    .param p1, "phoneState"    # I

    .prologue
    .line 204
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v1}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get1(Lcom/android/keyguard/iris/KeyguardIrisView;)Landroid/content/Context;

    move-result-object v1

    .line 205
    const-string/jumbo v2, "phone"

    .line 204
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 206
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    packed-switch p1, :pswitch_data_0

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 210
    :pswitch_0
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v1}, Lcom/android/keyguard/iris/KeyguardIrisView;->-wrap1(Lcom/android/keyguard/iris/KeyguardIrisView;)V

    goto :goto_0

    .line 213
    :pswitch_1
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v1}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get6(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    iget-object v2, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v2}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get1(Lcom/android/keyguard/iris/KeyguardIrisView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 215
    sget v3, Lcom/android/keyguard/R$string;->iris_guide_str_enable_toggle:I

    .line 214
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/keyguard/iris/KeyguardIrisView;->-wrap2(Lcom/android/keyguard/iris/KeyguardIrisView;Ljava/lang/String;)V

    goto :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 1
    .param p1, "subId"    # I
    .param p2, "slotId"    # I
    .param p3, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 254
    invoke-static {p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure(Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-wrap1(Lcom/android/keyguard/iris/KeyguardIrisView;)V

    .line 253
    :cond_0
    return-void
.end method

.method public onSystemDialogsShowing()V
    .locals 3

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get6(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v1}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get1(Lcom/android/keyguard/iris/KeyguardIrisView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 263
    sget v2, Lcom/android/keyguard/R$string;->iris_guide_str_enable_toggle:I

    .line 262
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/iris/KeyguardIrisView;->-wrap2(Lcom/android/keyguard/iris/KeyguardIrisView;Ljava/lang/String;)V

    .line 260
    :cond_0
    return-void
.end method
