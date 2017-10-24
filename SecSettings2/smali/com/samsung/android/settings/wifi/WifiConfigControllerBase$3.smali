.class Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;
.super Ljava/lang/Object;
.source "WifiConfigControllerBase.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    .prologue
    .line 1559
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 1622
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->enableSubmitIfAppropriate()V

    .line 1621
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 1617
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 9
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 1561
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1562
    .local v5, "password":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    .line 1563
    .local v2, "length":I
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPointSecurity:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    .line 1564
    const-string/jumbo v6, "[0-9A-Fa-f]*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    .line 1565
    .local v1, "isPasswordHex":Z
    const/16 v6, 0xd

    if-le v2, v6, :cond_2

    const/16 v6, 0x1a

    if-ne v2, v6, :cond_3

    move v3, v1

    .line 1566
    .local v3, "mPasswordValid":Z
    :goto_0
    if-eqz v3, :cond_0

    if-eqz v1, :cond_6

    .line 1567
    :cond_0
    const/16 v6, 0xd

    if-le v2, v6, :cond_1

    if-eqz v1, :cond_4

    .line 1575
    :cond_1
    const/16 v6, 0x1a

    if-le v2, v6, :cond_5

    if-eqz v1, :cond_5

    .line 1576
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    const/4 v7, 0x0

    const/16 v8, 0x1a

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1577
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v6}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1578
    .local v0, "context":Landroid/content/Context;
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordErrorText:Landroid/widget/TextView;

    const v7, 0x7f0b0cf7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 1579
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1580
    const v8, 0x7f0d022a

    .line 1579
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1581
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordErrorText:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1582
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    .line 1560
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "isPasswordHex":Z
    .end local v3    # "mPasswordValid":Z
    :goto_1
    return-void

    .line 1565
    .restart local v1    # "isPasswordHex":Z
    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 1568
    .restart local v3    # "mPasswordValid":Z
    :cond_4
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    const/4 v7, 0x0

    const/16 v8, 0xd

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1569
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v6}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1570
    .restart local v0    # "context":Landroid/content/Context;
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordErrorText:Landroid/widget/TextView;

    const v7, 0x7f0b0cf7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 1571
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1572
    const v8, 0x7f0d022a

    .line 1571
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1573
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordErrorText:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1574
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_1

    .line 1584
    .end local v0    # "context":Landroid/content/Context;
    :cond_5
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v6}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1585
    .restart local v0    # "context":Landroid/content/Context;
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordErrorText:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1586
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1587
    const v8, 0x7f0d011e

    .line 1586
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 1590
    .end local v0    # "context":Landroid/content/Context;
    :cond_6
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v6}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1591
    .restart local v0    # "context":Landroid/content/Context;
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordErrorText:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1592
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1593
    const v8, 0x7f0d011e

    .line 1592
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_1

    .line 1597
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "isPasswordHex":Z
    .end local v3    # "mPasswordValid":Z
    :cond_7
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPointSecurity:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_8

    .line 1598
    const/16 v4, 0xc8

    .line 1602
    .local v4, "maxPasswordLength":I
    :goto_2
    if-le v2, v4, :cond_9

    .line 1603
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1604
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordErrorText:Landroid/widget/TextView;

    const v7, 0x7f0b0cf7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 1605
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1606
    const v8, 0x7f0d022a

    .line 1605
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1607
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordErrorText:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1608
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_1

    .line 1600
    .end local v4    # "maxPasswordLength":I
    :cond_8
    const/16 v4, 0x40

    .restart local v4    # "maxPasswordLength":I
    goto :goto_2

    .line 1610
    :cond_9
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordErrorText:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1611
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1612
    const v8, 0x7f0d011e

    .line 1611
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_1
.end method
