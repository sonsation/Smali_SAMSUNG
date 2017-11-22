.class public Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;
.super Ljava/lang/Object;
.source "SemDatePickerSpinnerLayout.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TwTextWatcher"
.end annotation


# instance fields
.field private changedLen:I

.field private isMonth:Z

.field private mCheck:I

.field private mId:I

.field private mMaxLen:I

.field private mNext:I

.field private prevText:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;
    .param p2, "maxLen"    # I
    .param p3, "id"    # I
    .param p4, "month"    # Z

    .prologue
    const/4 v0, 0x0

    .line 951
    iput-object p1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 948
    iput v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->changedLen:I

    .line 952
    iput p2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mMaxLen:I

    .line 953
    iput p3, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    .line 954
    iput-boolean p4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->isMonth:Z

    .line 955
    iget v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mCheck:I

    .line 956
    iget v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mCheck:I

    if-gez v0, :cond_0

    .line 957
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mCheck:I

    .line 958
    :cond_0
    iget v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mNext:I

    .line 951
    return-void

    .line 958
    :cond_1
    iget v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private changeFocus()V
    .locals 4

    .prologue
    .line 1161
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get0(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 1162
    .local v0, "manager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1163
    return-void

    .line 1165
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "changeFocus() mNext : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mNext:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1166
    const-string/jumbo v3, ", mCheck : "

    .line 1165
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1166
    iget v3, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mCheck:I

    .line 1165
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap5(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Ljava/lang/String;)V

    .line 1167
    iget v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mNext:I

    if-ltz v1, :cond_2

    .line 1168
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get10(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mCheck:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1169
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get10(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mNext:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1172
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get10(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1173
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get10(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 1160
    :cond_2
    return-void
.end method

.method private isFarsiLanguage()Z
    .locals 2

    .prologue
    .line 1139
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get2(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1140
    .local v0, "language":Ljava/lang/String;
    const-string/jumbo v1, "fa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1141
    const/4 v1, 0x1

    return v1

    .line 1143
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isMeaLanguage()Z
    .locals 2

    .prologue
    .line 1129
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get2(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1130
    .local v0, "language":Ljava/lang/String;
    const-string/jumbo v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "fa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1131
    const-string/jumbo v1, "ur"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1130
    if-eqz v1, :cond_1

    .line 1132
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 1134
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private isMonthStr(Ljava/lang/String;)Z
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1151
    const/4 v1, 0x0

    .line 1152
    .local v1, "result":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get9(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1153
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get11(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1154
    const/4 v1, 0x1

    .line 1152
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1157
    :cond_1
    return v1
.end method

.method private isNumericStr(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 1147
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    return v0
.end method

.method private isSwaLanguage()Z
    .locals 2

    .prologue
    .line 1114
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get2(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1115
    .local v0, "language":Ljava/lang/String;
    const-string/jumbo v1, "hi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ta"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1116
    const-string/jumbo v1, "ml"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1115
    if-nez v1, :cond_0

    .line 1116
    const-string/jumbo v1, "te"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1115
    if-nez v1, :cond_0

    .line 1117
    const-string/jumbo v1, "or"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1115
    if-nez v1, :cond_0

    .line 1117
    const-string/jumbo v1, "ne"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1115
    if-nez v1, :cond_0

    .line 1118
    const-string/jumbo v1, "as"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1115
    if-nez v1, :cond_0

    .line 1118
    const-string/jumbo v1, "bn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1115
    if-nez v1, :cond_0

    .line 1119
    const-string/jumbo v1, "gu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1115
    if-nez v1, :cond_0

    .line 1119
    const-string/jumbo v1, "si"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1115
    if-nez v1, :cond_0

    .line 1120
    const-string/jumbo v1, "pa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1115
    if-nez v1, :cond_0

    .line 1120
    const-string/jumbo v1, "kn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1115
    if-nez v1, :cond_0

    .line 1121
    const-string/jumbo v1, "mr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1115
    if-eqz v1, :cond_1

    .line 1122
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 1124
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private showInvalidValueEnteredToast(Ljava/lang/String;I)V
    .locals 3
    .param p1, "setValue"    # Ljava/lang/String;
    .param p2, "selection"    # I

    .prologue
    const/4 v2, 0x0

    .line 1106
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get10(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1107
    if-eqz p2, :cond_0

    .line 1108
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get10(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1110
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get0(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get14(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1105
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "view"    # Landroid/text/Editable;

    .prologue
    .line 962
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "aftertextchanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap5(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Ljava/lang/String;)V

    .line 961
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 967
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "beforeTextChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 968
    const-string/jumbo v2, ", "

    .line 967
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 968
    const-string/jumbo v2, ", "

    .line 967
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap5(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Ljava/lang/String;)V

    .line 969
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->prevText:Ljava/lang/String;

    .line 970
    iput p4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->changedLen:I

    .line 966
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 10
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 975
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "onTextChanged: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap5(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Ljava/lang/String;)V

    .line 977
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get10(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 978
    .local v5, "tag":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 979
    const-string/jumbo v6, "onClick"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "onLongClick"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 980
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "TAG exists: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap5(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Ljava/lang/String;)V

    .line 981
    return-void

    .line 984
    :cond_1
    iget-boolean v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->isMonth:Z

    if-eqz v6, :cond_c

    .line 985
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap0(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 986
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "Samsung Keypad Num Month"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap5(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Ljava/lang/String;)V

    .line 987
    iget v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->changedLen:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 988
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    iget v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mMaxLen:I

    if-ne v6, v7, :cond_5

    .line 989
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get10(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 990
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 991
    .local v3, "month":I
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get8(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/widget/SemNumberPicker;->getMinValue()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 992
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v6

    const/4 v7, 0x2

    if-ge v6, v7, :cond_2

    .line 993
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    .line 997
    :goto_0
    return-void

    .line 995
    :cond_2
    const-string/jumbo v6, ""

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    goto :goto_0

    .line 999
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->changeFocus()V

    .line 974
    .end local v3    # "month":I
    :cond_4
    :goto_1
    return-void

    .line 1001
    :cond_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 1002
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get8(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/widget/SemNumberPicker;->getMinValue()I

    move-result v6

    const/16 v7, 0xa

    if-lt v6, v7, :cond_6

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1003
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get10(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1004
    const-string/jumbo v6, ""

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    .line 1005
    return-void

    .line 1009
    :cond_6
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1010
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get10(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1011
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1012
    .restart local v3    # "month":I
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get8(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/widget/SemNumberPicker;->getMinValue()I

    move-result v6

    if-ge v3, v6, :cond_7

    .line 1013
    const-string/jumbo v6, ""

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    .line 1014
    return-void

    .line 1016
    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->changeFocus()V

    goto/16 :goto_1

    .line 1022
    .end local v3    # "month":I
    :cond_8
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get10(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1023
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string/jumbo v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string/jumbo v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string/jumbo v7, "2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string/jumbo v7, "3"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1024
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string/jumbo v7, "4"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1023
    if-nez v6, :cond_4

    .line 1024
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string/jumbo v7, "5"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1023
    if-nez v6, :cond_4

    .line 1024
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string/jumbo v7, "6"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1023
    if-nez v6, :cond_4

    .line 1024
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string/jumbo v7, "7"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1023
    if-nez v6, :cond_4

    .line 1025
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string/jumbo v7, "8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1023
    if-nez v6, :cond_4

    .line 1025
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string/jumbo v7, "9"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1023
    if-nez v6, :cond_4

    .line 1025
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string/jumbo v7, "10"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1023
    if-nez v6, :cond_4

    .line 1025
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string/jumbo v7, "11"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1023
    if-nez v6, :cond_4

    .line 1026
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    iget v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mMaxLen:I

    if-lt v6, v7, :cond_a

    .line 1027
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->isMeaLanguage()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1028
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->prevText:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->isMonthStr(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1029
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->changeFocus()V

    goto/16 :goto_1

    .line 1032
    :cond_9
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->changeFocus()V

    goto/16 :goto_1

    .line 1034
    :cond_a
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->isSwaLanguage()Z

    move-result v6

    if-nez v6, :cond_b

    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->isFarsiLanguage()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1035
    :cond_b
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_4

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->isNumericStr(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1036
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->changeFocus()V

    goto/16 :goto_1

    .line 1041
    :cond_c
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v6, v7, :cond_11

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    iget v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mMaxLen:I

    if-ne v6, v7, :cond_11

    .line 1042
    iget v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->changedLen:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_11

    .line 1043
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get10(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1044
    iget v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mMaxLen:I

    const/4 v7, 0x3

    if-ge v6, v7, :cond_e

    .line 1045
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1046
    .local v0, "day":I
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get4(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/widget/SemNumberPicker;->getMinValue()I

    move-result v6

    if-ge v0, v6, :cond_10

    .line 1047
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v6

    const/4 v7, 0x4

    if-ge v6, v7, :cond_d

    .line 1048
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    .line 1052
    :goto_2
    return-void

    .line 1050
    :cond_d
    const-string/jumbo v6, ""

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    goto :goto_2

    .line 1055
    .end local v0    # "day":I
    :cond_e
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get15(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/widget/SemNumberPicker;->getMinValue()I

    move-result v7

    if-lt v6, v7, :cond_f

    .line 1056
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get15(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/widget/SemNumberPicker;->getMaxValue()I

    move-result v7

    if-le v6, v7, :cond_10

    .line 1057
    :cond_f
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    .line 1058
    return-void

    .line 1061
    :cond_10
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->changeFocus()V

    .line 1066
    :cond_11
    iget v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->changedLen:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 1067
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get10(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1068
    iget v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mMaxLen:I

    const/4 v7, 0x3

    if-ge v6, v7, :cond_17

    .line 1069
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get4(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/widget/SemNumberPicker;->getMinValue()I

    move-result v6

    const/16 v7, 0xa

    if-lt v6, v7, :cond_12

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    .line 1070
    :cond_12
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get4(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/widget/SemNumberPicker;->getMinValue()I

    move-result v6

    const/16 v7, 0x14

    if-lt v6, v7, :cond_13

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1069
    if-nez v6, :cond_14

    .line 1071
    :cond_13
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get4(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/widget/SemNumberPicker;->getMinValue()I

    move-result v6

    const/16 v7, 0x1e

    if-lt v6, v7, :cond_15

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1069
    if-eqz v6, :cond_15

    .line 1073
    :cond_14
    const-string/jumbo v6, ""

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    .line 1074
    return-void

    .line 1077
    :cond_15
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "3"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1078
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1079
    .restart local v0    # "day":I
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get4(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/widget/SemNumberPicker;->getMinValue()I

    move-result v6

    if-ge v0, v6, :cond_16

    .line 1080
    const-string/jumbo v6, ""

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    .line 1081
    return-void

    .line 1083
    :cond_16
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->changeFocus()V

    goto/16 :goto_1

    .line 1086
    .end local v0    # "day":I
    :cond_17
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1087
    .local v2, "len":I
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    add-int/lit8 v8, v2, -0x1

    int-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double v6, v8, v6

    double-to-int v1, v6

    .line 1088
    .local v1, "devider":I
    const-string/jumbo v4, ""

    .line 1090
    .local v4, "setValue":Ljava/lang/String;
    const/4 v6, 0x1

    if-eq v2, v6, :cond_18

    .line 1091
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v2, -0x1

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1094
    :cond_18
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get15(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/widget/SemNumberPicker;->getMinValue()I

    move-result v7

    div-int/2addr v7, v1

    if-lt v6, v7, :cond_19

    .line 1095
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get15(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/widget/SemNumberPicker;->getMaxValue()I

    move-result v7

    div-int/2addr v7, v1

    if-le v6, v7, :cond_4

    .line 1096
    :cond_19
    add-int/lit8 v6, v2, -0x1

    invoke-direct {p0, v4, v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    .line 1097
    return-void
.end method
