.class Lcom/android/settings/wifi/WifiConfigController$WifiProxyHostNAMETextWatcher;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiConfigController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiProxyHostNAMETextWatcher"
.end annotation


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field private mErrorText:Landroid/widget/TextView;

.field private mPreviousString:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/wifi/WifiConfigController;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WifiConfigController;Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wifi/WifiConfigController;
    .param p2, "et"    # Landroid/widget/EditText;
    .param p3, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 1780
    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController$WifiProxyHostNAMETextWatcher;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1781
    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController$WifiProxyHostNAMETextWatcher;->mEditText:Landroid/widget/EditText;

    .line 1782
    iput-object p3, p0, Lcom/android/settings/wifi/WifiConfigController$WifiProxyHostNAMETextWatcher;->mErrorText:Landroid/widget/TextView;

    .line 1780
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 1815
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController$WifiProxyHostNAMETextWatcher;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 1814
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 1786
    if-eqz p1, :cond_0

    .line 1787
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v0, v1

    .line 1788
    .local v0, "sLength":I
    if-lez v0, :cond_0

    const/16 v1, 0xc8

    if-gt v0, v1, :cond_0

    .line 1789
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController$WifiProxyHostNAMETextWatcher;->mPreviousString:Ljava/lang/String;

    .line 1785
    .end local v0    # "sLength":I
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/16 v3, 0x3e8

    .line 1795
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController$WifiProxyHostNAMETextWatcher;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiConfigController;->-get0(Lcom/android/settings/wifi/WifiConfigController;)Lcom/android/settings/wifi/WifiConfigUiBase;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1796
    .local v0, "context":Landroid/content/Context;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-le v1, v3, :cond_1

    .line 1797
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController$WifiProxyHostNAMETextWatcher;->mEditText:Landroid/widget/EditText;

    const-string/jumbo v2, "inputType=PredictionOff;disableEmoticonInput=true"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 1798
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController$WifiProxyHostNAMETextWatcher;->mPreviousString:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController$WifiProxyHostNAMETextWatcher;->mPreviousString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-gt v1, v3, :cond_0

    .line 1799
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController$WifiProxyHostNAMETextWatcher;->mEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController$WifiProxyHostNAMETextWatcher;->mPreviousString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1804
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController$WifiProxyHostNAMETextWatcher;->mEditText:Landroid/widget/EditText;

    const-string/jumbo v2, "inputType=PredictionOff;disableEmoticonInput=true;defaultInputmode=english"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 1806
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController$WifiProxyHostNAMETextWatcher;->mErrorText:Landroid/widget/TextView;

    const v2, 0x7f0b0f11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1807
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController$WifiProxyHostNAMETextWatcher;->mErrorText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1808
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController$WifiProxyHostNAMETextWatcher;->mEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController$WifiProxyHostNAMETextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1794
    :goto_1
    return-void

    .line 1801
    :cond_0
    const-string/jumbo v1, "WifiConfigController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "String: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " start: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " before: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController$WifiProxyHostNAMETextWatcher;->mEditText:Landroid/widget/EditText;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1810
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController$WifiProxyHostNAMETextWatcher;->mErrorText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
