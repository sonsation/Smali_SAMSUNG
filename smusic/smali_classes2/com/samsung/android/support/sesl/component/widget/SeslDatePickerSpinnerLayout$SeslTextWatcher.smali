.class public Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;
.super Ljava/lang/Object;
.source "SeslDatePickerSpinnerLayout.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SeslTextWatcher"
.end annotation


# instance fields
.field private final INVALID_POSITION_ID:I

.field private final LAST_POSITION_ID:I

.field private mChangedLen:I

.field private mCheck:I

.field private mId:I

.field private mIsMonth:Z

.field private mMaxLen:I

.field private mNext:I

.field private mPrevText:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;IIZ)V
    .locals 3
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;
    .param p2, "maxLen"    # I
    .param p3, "id"    # I
    .param p4, "month"    # Z

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x2

    .line 794
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 783
    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->INVALID_POSITION_ID:I

    .line 784
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->LAST_POSITION_ID:I

    .line 791
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mChangedLen:I

    .line 795
    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mMaxLen:I

    .line 796
    iput p3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    .line 797
    iput-boolean p4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mIsMonth:Z

    .line 798
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mCheck:I

    .line 799
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mCheck:I

    if-gez v1, :cond_0

    .line 800
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mCheck:I

    .line 802
    :cond_0
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    add-int/lit8 v1, v1, 0x1

    if-le v1, v2, :cond_1

    :goto_0
    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mNext:I

    .line 803
    return-void

    .line 802
    :cond_1
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private changeFocus()V
    .locals 4

    .prologue
    .line 985
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$1400(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 987
    .local v0, "manager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1001
    :cond_0
    :goto_0
    return-void

    .line 990
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] changeFocus() mNext : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mNext:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mCheck : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mCheck:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$900(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;Ljava/lang/String;)V

    .line 992
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mNext:I

    if-ltz v1, :cond_0

    .line 993
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$1000(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mCheck:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-nez v1, :cond_2

    .line 994
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$1000(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mNext:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 997
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$1000(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 998
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$1000(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0
.end method

.method private isFarsiLanguage()Z
    .locals 2

    .prologue
    .line 967
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$1600(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 968
    .local v0, "language":Ljava/lang/String;
    const-string v1, "fa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isMeaLanguage()Z
    .locals 2

    .prologue
    .line 962
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$1600(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 963
    .local v0, "language":Ljava/lang/String;
    const-string v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "fa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ur"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isMonthStr(Ljava/lang/String;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 976
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$1700(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 977
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$1800(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 978
    const/4 v1, 0x1

    .line 981
    :goto_1
    return v1

    .line 976
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 981
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private isNumericStr(Ljava/lang/String;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 972
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isSwaLanguage()Z
    .locals 2

    .prologue
    .line 953
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$1600(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 954
    .local v0, "language":Ljava/lang/String;
    const-string v1, "hi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ta"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ml"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "te"

    .line 955
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "or"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ne"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "as"

    .line 956
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "bn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "gu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "si"

    .line 957
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "pa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "kn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mr"

    .line 958
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 954
    :goto_0
    return v1

    .line 958
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showInvalidValueEnteredToast(Ljava/lang/String;I)V
    .locals 3
    .param p1, "setValue"    # Ljava/lang/String;
    .param p2, "selection"    # I

    .prologue
    .line 945
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$1000(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 946
    if-eqz p2, :cond_0

    .line 947
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$1000(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 949
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$1400(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$1500(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 950
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "view"    # Landroid/text/Editable;

    .prologue
    .line 806
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] afterTextChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$900(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;Ljava/lang/String;)V

    .line 807
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 810
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] beforeTextChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$900(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;Ljava/lang/String;)V

    .line 812
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mPrevText:Ljava/lang/String;

    .line 813
    iput p4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mChangedLen:I

    .line 814
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 20
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 817
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "] onTextChanged: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mPrevText:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " -> "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$900(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;Ljava/lang/String;)V

    .line 819
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 820
    .local v5, "length":I
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 821
    .local v10, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v14}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$1000(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    aget-object v14, v14, v15

    invoke-virtual {v14}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 822
    .local v9, "tag":Ljava/lang/String;
    if-eqz v9, :cond_0

    const-string v14, "onClick"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    :cond_0
    const-string v14, "onLongClick"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 823
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "] TAG exists: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$900(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;Ljava/lang/String;)V

    .line 942
    :cond_2
    :goto_0
    return-void

    .line 827
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v14}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$1000(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    aget-object v14, v14, v15

    invoke-virtual {v14}, Landroid/widget/EditText;->isFocused()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 831
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mIsMonth:Z

    if-eqz v14, :cond_d

    .line 833
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v14}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$1100(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)Z

    move-result v14

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mChangedLen:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_9

    .line 834
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "] Samsung Keypad Num Month"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$900(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;Ljava/lang/String;)V

    .line 835
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v14}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$300(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getMinValue()I

    move-result v7

    .line 836
    .local v7, "monthMinValue":I
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 837
    .local v6, "month":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mMaxLen:I

    if-ne v5, v14, :cond_6

    .line 838
    if-ge v6, v7, :cond_5

    .line 839
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v14

    const/4 v15, 0x2

    if-ge v14, v15, :cond_4

    .line 840
    const/4 v14, 0x0

    .line 841
    invoke-virtual {v10, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    .line 840
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 843
    :cond_4
    const-string v14, ""

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 847
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->changeFocus()V

    goto/16 :goto_0

    .line 848
    :cond_6
    if-lez v5, :cond_2

    .line 849
    const/16 v14, 0xa

    if-lt v7, v14, :cond_7

    if-nez v6, :cond_7

    .line 850
    const-string v14, ""

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 854
    :cond_7
    const/4 v14, 0x1

    if-eq v6, v14, :cond_2

    if-eqz v6, :cond_2

    .line 855
    if-ge v6, v7, :cond_8

    .line 856
    const-string v14, ""

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 859
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->changeFocus()V

    goto/16 :goto_0

    .line 862
    .end local v6    # "month":I
    .end local v7    # "monthMinValue":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mPrevText:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->isNumericStr(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 863
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mMaxLen:I

    if-lt v5, v14, :cond_b

    .line 864
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->isMeaLanguage()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 865
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mPrevText:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->isMonthStr(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 866
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->changeFocus()V

    goto/16 :goto_0

    .line 869
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->changeFocus()V

    goto/16 :goto_0

    .line 871
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->isSwaLanguage()Z

    move-result v14

    if-nez v14, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->isFarsiLanguage()Z

    move-result v14

    if-eqz v14, :cond_2

    :cond_c
    if-lez v5, :cond_2

    .line 872
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->isNumericStr(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 873
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->changeFocus()V

    goto/16 :goto_0

    .line 876
    :cond_d
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mChangedLen:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    .line 878
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mMaxLen:I

    const/4 v15, 0x3

    if-ge v14, v15, :cond_16

    .line 879
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v14}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$200(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getMinValue()I

    move-result v3

    .line 880
    .local v3, "dayMinValue":I
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 881
    .local v2, "day":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mPrevText:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v14, v5, :cond_10

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mMaxLen:I

    if-ne v5, v14, :cond_10

    .line 882
    if-ge v2, v3, :cond_f

    .line 883
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v14

    const/4 v15, 0x4

    if-ge v14, v15, :cond_e

    .line 884
    const/4 v14, 0x0

    .line 885
    invoke-virtual {v10, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    .line 884
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 887
    :cond_e
    const-string v14, ""

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 891
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->changeFocus()V

    goto/16 :goto_0

    .line 893
    :cond_10
    const/16 v14, 0xa

    if-lt v3, v14, :cond_11

    if-eqz v2, :cond_13

    :cond_11
    const/16 v14, 0x14

    if-lt v3, v14, :cond_12

    if-eqz v2, :cond_13

    const/4 v14, 0x1

    if-eq v2, v14, :cond_13

    :cond_12
    const/16 v14, 0x1e

    if-lt v3, v14, :cond_14

    if-eqz v2, :cond_13

    const/4 v14, 0x1

    if-eq v2, v14, :cond_13

    const/4 v14, 0x2

    if-ne v2, v14, :cond_14

    .line 896
    :cond_13
    const-string v14, ""

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 899
    :cond_14
    const/4 v14, 0x3

    if-le v2, v14, :cond_2

    .line 900
    if-ge v2, v3, :cond_15

    .line 901
    const-string v14, ""

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 904
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->changeFocus()V

    goto/16 :goto_0

    .line 910
    .end local v2    # "day":I
    .end local v3    # "dayMinValue":I
    :cond_16
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v14}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$400(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getMinValue()I

    move-result v13

    .line 911
    .local v13, "yearMinValue":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v14}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$400(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getMaxValue()I

    move-result v12

    .line 912
    .local v12, "yearMaxValue":I
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 913
    .local v11, "year":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mPrevText:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v14, v5, :cond_1c

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mMaxLen:I

    if-ne v5, v14, :cond_1c

    .line 914
    if-lt v11, v13, :cond_17

    if-le v11, v12, :cond_18

    .line 915
    :cond_17
    const/4 v14, 0x0

    const/4 v15, 0x3

    invoke-virtual {v10, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 919
    :cond_18
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v14}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$1100(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)Z

    move-result v14

    if-eqz v14, :cond_1a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v14}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$300(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getValue()I

    move-result v14

    add-int/lit8 v6, v14, -0x1

    .line 921
    .restart local v6    # "month":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v14}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$100(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Calendar;->clear()V

    .line 922
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v14}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$100(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v15}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$200(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    move-result-object v15

    invoke-virtual {v15}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getValue()I

    move-result v15

    invoke-virtual {v14, v11, v6, v15}, Ljava/util/Calendar;->set(III)V

    .line 923
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v14}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$100(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v15}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$1200(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_19

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v14}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$100(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v15}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$1300(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1b

    .line 924
    :cond_19
    const/4 v14, 0x0

    const/4 v15, 0x3

    invoke-virtual {v10, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 919
    .end local v6    # "month":I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    .line 920
    invoke-static {v14}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$300(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getValue()I

    move-result v6

    goto :goto_1

    .line 927
    .restart local v6    # "month":I
    :cond_1b
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->changeFocus()V

    goto/16 :goto_0

    .line 929
    .end local v6    # "month":I
    :cond_1c
    const-wide v14, 0x408f400000000000L    # 1000.0

    const-wide/high16 v16, 0x4024000000000000L    # 10.0

    add-int/lit8 v18, v5, -0x1

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    div-double v14, v14, v16

    double-to-int v4, v14

    .line 930
    .local v4, "divider":I
    const-string v8, ""

    .line 932
    .local v8, "setValue":Ljava/lang/String;
    const/4 v14, 0x1

    if-eq v5, v14, :cond_1d

    .line 933
    const/4 v14, 0x0

    add-int/lit8 v15, v5, -0x1

    invoke-virtual {v10, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 936
    :cond_1d
    div-int v14, v13, v4

    if-lt v11, v14, :cond_1e

    div-int v14, v12, v4

    if-le v11, v14, :cond_2

    .line 937
    :cond_1e
    add-int/lit8 v14, v5, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v14}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method
