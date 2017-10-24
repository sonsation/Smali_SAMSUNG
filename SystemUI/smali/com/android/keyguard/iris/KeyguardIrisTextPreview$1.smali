.class Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardIrisTextPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/iris/KeyguardIrisTextPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;


# direct methods
.method constructor <init>(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

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

    .line 227
    sget-boolean v2, Lcom/android/keyguard/KeyguardRune;->SUPPORT_AOSP_LOCKOUT:Z

    if-eqz v2, :cond_0

    .line 228
    return-void

    .line 230
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v2}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get2(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v0

    .line 232
    .local v0, "attempts":I
    const-string/jumbo v2, "KeyguardIrisTextPreview"

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

    .line 233
    if-eq v0, v6, :cond_1

    const/16 v2, 0x9

    if-le v0, v2, :cond_2

    .line 234
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v2}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get1(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 239
    :cond_2
    if-le v0, v6, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v2}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get2(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAutoWipe()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 240
    const-string/jumbo v1, ""

    .line 241
    .local v1, "errorText":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v2}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get2(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getRemainingAttemptsBeforeWipe()I

    move-result v2

    if-ne v2, v5, :cond_5

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v3}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get1(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$string;->kg_iris_no_match:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 243
    iget-object v3, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v3}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get1(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$string;->kg_1_attempt_remaining:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 242
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 226
    .end local v1    # "errorText":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void

    .line 236
    :cond_4
    iget-object v2, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-virtual {v2}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 237
    iget-object v2, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->setVisibility(I)V

    goto :goto_0

    .line 245
    .restart local v1    # "errorText":Ljava/lang/String;
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v3}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get1(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$string;->kg_iris_no_match:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 246
    const-string/jumbo v3, " "

    .line 245
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 247
    iget-object v3, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v3}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get1(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$string;->kg_n_attempts_remaining:I

    new-array v5, v5, [Ljava/lang/Object;

    .line 248
    iget-object v6, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v6}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get2(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getRemainingAttemptsBeforeWipe()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 247
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 245
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onIrisError(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-virtual {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->setVisibility(I)V

    .line 170
    :cond_0
    return-void
.end method

.method public onIrisHelp(ILjava/lang/String;)V
    .locals 3
    .param p1, "helpCode"    # I
    .param p2, "errorText"    # Ljava/lang/String;

    .prologue
    .line 178
    const/16 v1, -0x9

    if-ne p1, v1, :cond_3

    .line 179
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get1(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    .line 180
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    .line 179
    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v0

    .line 181
    .local v0, "attempts":I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-le v0, v1, :cond_2

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-virtual {v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 183
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->setVisibility(I)V

    .line 177
    .end local v0    # "attempts":I
    :cond_1
    :goto_0
    return-void

    .line 186
    .restart local v0    # "attempts":I
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-wrap1(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;I)V

    .line 187
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v1, p2}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-wrap3(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;Ljava/lang/String;)V

    goto :goto_0

    .line 190
    .end local v0    # "attempts":I
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-wrap1(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;I)V

    .line 191
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v1, p2}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-wrap2(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onIrisRunningStateChanged(Z)V
    .locals 4
    .param p1, "irisRunning"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 197
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get2(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithIrisPossible(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-virtual {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 199
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get1(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper;->isEnabledIrisOnFristScreen()Z

    move-result v0

    .line 198
    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->setVisibility(I)V

    .line 196
    :cond_1
    :goto_0
    return-void

    .line 202
    :cond_2
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-virtual {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->setVisibility(I)V

    goto :goto_0
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 3
    .param p1, "bouncer"    # Z

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get0(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v0, p1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-set0(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;Z)Z

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get2(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisUnlockState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 274
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get2(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockCompleted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 277
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-virtual {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 278
    const-string/jumbo v0, "KeyguardIrisTextPreview"

    const-string/jumbo v1, "set text preview - onKeyguardBouncerChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-wrap1(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;I)V

    .line 280
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get1(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->iris_guide_str_for_text_preview:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-wrap2(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;Ljava/lang/String;)V

    .line 270
    :cond_1
    return-void

    .line 275
    :cond_2
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0
    .param p1, "showing"    # Z

    .prologue
    .line 167
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 3
    .param p1, "phoneState"    # I

    .prologue
    .line 209
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get1(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Landroid/content/Context;

    move-result-object v1

    .line 210
    const-string/jumbo v2, "phone"

    .line 209
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 211
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    packed-switch p1, :pswitch_data_0

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 215
    :pswitch_0
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get2(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsIrisRunning:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-virtual {v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->setVisibility(I)V

    goto :goto_0

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 2
    .param p1, "subId"    # I
    .param p2, "slotId"    # I
    .param p3, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 255
    invoke-static {p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure(Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-virtual {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->setVisibility(I)V

    .line 254
    :cond_0
    return-void
.end method

.method public onStartedWakingUp(I)V
    .locals 6
    .param p1, "why"    # I

    .prologue
    const/4 v5, 0x0

    .line 153
    iget-object v2, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v2}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get3(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    .line 154
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    .line 153
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 155
    .local v0, "deadline":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v2}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get2(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 161
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-virtual {v2}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 162
    iget-object v2, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->setVisibility(I)V

    .line 152
    :cond_1
    :goto_0
    return-void

    .line 156
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v2}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get2(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisUnlockState()Z

    move-result v2

    .line 155
    if-eqz v2, :cond_0

    .line 157
    iget-object v2, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v2}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get2(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v2

    .line 155
    if-eqz v2, :cond_0

    .line 158
    iget-object v2, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v2}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get1(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/util/SettingsHelper;->isEnabledIrisOnFristScreen()Z

    move-result v2

    .line 155
    if-eqz v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    iget-object v3, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v3}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get1(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$string;->iris_guide_str_for_text_preview:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-wrap2(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;Ljava/lang/String;)V

    .line 160
    iget-object v2, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-virtual {v2, v5}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->setVisibility(I)V

    goto :goto_0
.end method

.method public onSystemDialogsShowing()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-virtual {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->setVisibility(I)V

    .line 263
    :cond_0
    return-void
.end method
