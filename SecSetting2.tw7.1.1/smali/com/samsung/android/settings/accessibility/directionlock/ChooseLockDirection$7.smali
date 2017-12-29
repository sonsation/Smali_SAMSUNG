.class Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;
.super Ljava/lang/Object;
.source "ChooseLockDirection.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->attachListeners()V
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
    .line 789
    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 792
    const-string/jumbo v8, "ChooseLockDirection"

    const-string/jumbo v9, "confirm Clicked"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get6(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    .line 798
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get3(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;->ENTER_DIRECTION_SCREEN:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    if-ne v8, v9, :cond_3

    .line 800
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    iget-object v9, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v9}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get6(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-set1(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;Ljava/lang/String;)Ljava/lang/String;

    .line 802
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get6(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    .line 803
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get6(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    .line 805
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get28(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/Button;

    move-result-object v8

    const v9, 0x7f0b031d

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    .line 806
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get28(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/Button;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 807
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get19(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/Button;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 809
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get13(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v9}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 810
    const v10, 0x7f0b0318

    .line 809
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 811
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get5(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isTouchExplorationEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 812
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get13(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v10}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get13(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 813
    const-string/jumbo v10, " "

    .line 812
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 814
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v10}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 817
    const v11, 0x7f0b026d

    .line 814
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 812
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 819
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 820
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get13(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v10}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get13(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 821
    const-string/jumbo v10, "\n"

    .line 820
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 822
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v10}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    .line 824
    iget-object v12, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v12}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    .line 825
    const v13, 0x7f0b0319

    .line 824
    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    .line 823
    const v12, 0x7f0b0af0

    .line 822
    invoke-virtual {v10, v12, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 820
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 827
    :cond_1
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    sget-object v9, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;->CONFIRM_DIRECTION_SCREEN:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    invoke-static {v8, v9}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-set0(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;)Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    .line 828
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get12(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v9}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get23(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 829
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-wrap1(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)V

    .line 831
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-set5(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 832
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-set6(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 791
    :cond_2
    :goto_0
    return-void

    .line 843
    :cond_3
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get7(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v9}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get6(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 844
    const-string/jumbo v8, "ChooseLockDirection"

    const-string/jumbo v9, "Both passwords match"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    invoke-static {}, Lcom/android/settings/Utils;->isSupportPatternBackupPin()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 851
    const/4 v4, 0x4

    .line 852
    .local v4, "minLength":I
    const/16 v3, 0x8

    .line 854
    .local v3, "maxLength":I
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    iget-object v9, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v9}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    .line 855
    const-class v10, Lcom/samsung/android/settings/ChooseLockAdditionalPin;

    .line 854
    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    .line 856
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_2

    .line 857
    const-string/jumbo v8, "lockscreen.password_min"

    const/4 v9, 0x4

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 858
    const-string/jumbo v8, "lockscreen.password_max"

    const/16 v9, 0x8

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 860
    const v5, 0x10001

    .line 861
    .local v5, "quality":I
    const-string/jumbo v8, "lockscreen.password_type"

    invoke-virtual {v2, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 862
    const-string/jumbo v8, "isDirectionLock"

    .line 863
    const/4 v9, 0x1

    .line 862
    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 864
    const-string/jumbo v8, "firstlock"

    .line 865
    iget-object v9, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v9}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get6(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPasswordNumbers()Ljava/lang/String;

    move-result-object v9

    .line 864
    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 866
    const-string/jumbo v8, "password"

    .line 867
    iget-object v9, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v9}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get31(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Ljava/lang/String;

    move-result-object v9

    .line 866
    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 868
    const/high16 v8, 0x2000000

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 871
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 870
    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportFingerprint(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 873
    const-string/jumbo v8, "has_challenge"

    const/4 v9, 0x1

    .line 872
    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 877
    :cond_4
    :try_start_0
    const-string/jumbo v8, "ChooseLockDirection"

    const-string/jumbo v9, "launching back up PIN"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v8, v2}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->startActivity(Landroid/content/Intent;)V

    .line 879
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 880
    :catch_0
    move-exception v0

    .line 881
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 887
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "maxLength":I
    .end local v4    # "minLength":I
    .end local v5    # "quality":I
    :cond_5
    const-string/jumbo v8, "ChooseLockDirection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "back up PIN not supported, mLockVirgin: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v10}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get21(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    .line 889
    .local v6, "userId":I
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get20(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v7

    .line 890
    .local v7, "wasSecureBefore":Z
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    iget-object v9, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v9}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get6(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPasswordNumbers()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    iput-object v9, v8, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mChosenPattern:Ljava/util/List;

    .line 892
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get5(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v9}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get6(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPasswordNumbers()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v6}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->saveLockDirection(Ljava/lang/String;I)V

    .line 895
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get21(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 896
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get20(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9, v6}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 899
    :cond_6
    iget-object v9, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportIris()Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v8, 0x0

    :goto_1
    invoke-static {v9, v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-set4(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;Z)Z

    .line 901
    iget-object v9, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    .line 902
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 901
    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportFingerprint(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_b

    const/4 v8, 0x0

    :goto_2
    invoke-static {v9, v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-set3(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;Z)Z

    .line 903
    iget-object v9, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportFace()Z

    move-result v8

    if-eqz v8, :cond_c

    const/4 v8, 0x0

    :goto_3
    invoke-static {v9, v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-set2(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;Z)Z

    .line 906
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get18(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get17(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 907
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-set8(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;Z)Z

    .line 923
    :cond_7
    :goto_4
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get26(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/os/AsyncTask;

    move-result-object v8

    if-nez v8, :cond_8

    .line 924
    const-string/jumbo v8, "ChooseLockDirection"

    const-string/jumbo v9, "mPendingLockCheck is null"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    :cond_8
    if-nez v7, :cond_9

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get9(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 941
    :cond_9
    :goto_5
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get29(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 942
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->finish()V

    goto/16 :goto_0

    .line 899
    :cond_a
    const/4 v8, 0x1

    goto :goto_1

    .line 901
    :cond_b
    const/4 v8, 0x1

    goto :goto_2

    .line 903
    :cond_c
    const/4 v8, 0x1

    goto :goto_3

    .line 910
    :cond_d
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get17(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 911
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-wrap4(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)V

    .line 913
    :cond_e
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get18(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Z

    move-result v8

    if-nez v8, :cond_f

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_f

    .line 914
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-wrap5(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)V

    .line 916
    :cond_f
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get16(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Z

    move-result v8

    if-nez v8, :cond_10

    .line 917
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-wrap3(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)V

    .line 919
    :cond_10
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get0(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get1(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_7

    .line 920
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-set8(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;Z)Z

    goto/16 :goto_4

    .line 932
    :cond_11
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get10(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Z

    move-result v8

    if-nez v8, :cond_9

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get8(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 935
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    .line 934
    invoke-static {v8, v9}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v2

    .line 937
    .restart local v2    # "intent":Landroid/content/Intent;
    :try_start_1
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v8, v2}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_5

    .line 938
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto/16 :goto_5

    .line 948
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v6    # "userId":I
    .end local v7    # "wasSecureBefore":Z
    :cond_12
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get28(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/Button;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 949
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get13(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v9}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 950
    const v10, 0x7f0b0315

    .line 949
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 951
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get6(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    .line 952
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get6(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    goto/16 :goto_0
.end method
