.class Lcom/samsung/android/settings/face/FaceAuthenticateDialog$16;
.super Landroid/os/CountDownTimer;
.source "FaceAuthenticateDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->handleLockoutFace(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field failCount:I

.field final synthetic this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;JJI)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/android/settings/face/FaceAuthenticateDialog;
    .param p2, "$anonymous0"    # J
    .param p4, "$anonymous1"    # J
    .param p6, "val$type"    # I

    .prologue
    .line 650
    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$16;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    iput p6, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$16;->val$type:I

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 653
    invoke-static {}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->getFailedFaceAttempts()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$16;->failCount:I

    .line 650
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 681
    const-string/jumbo v0, "FcstFaceAuthenticateDialog"

    const-string/jumbo v1, "CountdownTimer: onFinish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$16;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-get7(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$16;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-get7(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 685
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$16;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-set2(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 687
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->resetRemaingTimeToUnlock()V

    .line 688
    iget v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$16;->val$type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 689
    invoke-static {}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->getFailedFaceAttempts()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_1

    .line 690
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$16;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-wrap1(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V

    .line 691
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$16;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-wrap5(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;I)V

    .line 680
    :goto_0
    return-void

    .line 693
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$16;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    sget-object v1, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;->STAGE_NORMAL_FACE:Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-wrap7(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;I)V

    .line 694
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$16;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-get4(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 697
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$16;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-get1(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 698
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$16;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-get0(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 699
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$16;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-get0(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    const v1, 0x7f0b08d4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 700
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$16;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$16;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-get0(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-set1(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;Landroid/widget/Button;)Landroid/widget/Button;

    .line 701
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$16;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$16;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-get0(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-set0(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;Landroid/widget/Button;)Landroid/widget/Button;

    .line 702
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$16;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-get5(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$16;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-get6(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 703
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$16;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-get6(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 704
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$16;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-get5(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0b13e7

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 707
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$16;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-wrap6(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V

    goto/16 :goto_0
.end method

.method public onTick(J)V
    .locals 7
    .param p1, "millisUntilFinished"    # J

    .prologue
    const/4 v4, 0x1

    .line 657
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v1, v2

    .line 658
    .local v1, "secondsCountdown":I
    iget v2, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$16;->val$type:I

    if-ne v2, v4, :cond_1

    .line 659
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$16;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-static {v2}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-get10(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 661
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$16;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-static {v2}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-get10(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$16;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    iget-object v3, v3, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 662
    iget v5, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$16;->failCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 661
    const v5, 0x7f0b08d9

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 663
    :catch_0
    move-exception v0

    .line 664
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "FcstFaceAuthenticateDialog"

    const-string/jumbo v3, "handleLockoutFace : onTick : failed to set text"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 669
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$16;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-static {v2}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-get3(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 670
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$16;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-static {v2}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-get3(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$16;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    iget-object v3, v3, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 671
    iget v5, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$16;->failCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 670
    const v5, 0x7f0b08da

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 673
    :catch_1
    move-exception v0

    .line 674
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "FcstFaceAuthenticateDialog"

    const-string/jumbo v3, "handleLockoutFace : onTick : failed to set text"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
