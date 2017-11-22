.class public Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;
.super Ljava/lang/Object;
.source "SemTimePickerSpinnerDelegate.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SemTextWatcher"
.end annotation


# instance fields
.field private changedLen:I

.field private mId:I

.field private mMaxLen:I

.field private mNext:I

.field private prevText:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;


# direct methods
.method public constructor <init>(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;II)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;
    .param p2, "maxLen"    # I
    .param p3, "id"    # I

    .prologue
    .line 940
    iput-object p1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 936
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->changedLen:I

    .line 941
    iput p2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mMaxLen:I

    .line 942
    iput p3, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mId:I

    .line 944
    iget v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mId:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mNext:I

    .line 940
    return-void

    .line 944
    :cond_0
    iget v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mId:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private changeFocus()V
    .locals 4

    .prologue
    .line 1008
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    iget-object v1, v1, Lcom/samsung/android/widget/SemTimePicker$AbstractSemTimePickerDelegate;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 1009
    .local v0, "manager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1010
    return-void

    .line 1013
    :cond_0
    iget v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mNext:I

    if-ltz v1, :cond_2

    .line 1014
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-get7(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mNext:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1016
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-get7(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1017
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-get7(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 1007
    :cond_1
    :goto_0
    return-void

    .line 1019
    :cond_2
    iget v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1020
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    iget-object v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-get7(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mId:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->setMinute(I)V

    .line 1021
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-get7(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0
.end method

.method private convertDigitCharacterToNumber(Ljava/lang/String;)I
    .locals 6
    .param p1, "digitCharacter"    # Ljava/lang/String;

    .prologue
    .line 1026
    const/4 v0, 0x0

    .line 1027
    .local v0, "idx":I
    invoke-static {}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-get0()[C

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-char v1, v3, v2

    .line 1028
    .local v1, "val":C
    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1029
    rem-int/lit8 v2, v0, 0xa

    return v2

    .line 1031
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 1027
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1033
    .end local v1    # "val":C
    :cond_1
    const/4 v2, -0x1

    return v2
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "view"    # Landroid/text/Editable;

    .prologue
    .line 948
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-get1(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Picker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "aftertextchanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 952
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-get1(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Picker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

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

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->prevText:Ljava/lang/String;

    .line 954
    iput p4, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->changedLen:I

    .line 951
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v5, 0x1

    .line 958
    iget-object v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-get1(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "Picker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onTextChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-get1(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "Picker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onTextChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-get7(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mId:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 962
    .local v1, "tag":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 963
    const-string/jumbo v2, "onClick"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "onLongClick"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 964
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-get7(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mId:I

    aget-object v2, v2, v3

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 965
    return-void

    .line 968
    :cond_3
    iget v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mId:I

    if-nez v2, :cond_7

    .line 969
    iget v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->changedLen:I

    if-ne v2, v5, :cond_4

    .line 970
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mMaxLen:I

    if-ne v2, v3, :cond_5

    .line 971
    iget-object v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-get7(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mId:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 972
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->changeFocus()V

    .line 957
    :cond_4
    :goto_0
    return-void

    .line 974
    :cond_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 975
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->convertDigitCharacterToNumber(Ljava/lang/String;)I

    move-result v0

    .line 976
    .local v0, "number":I
    const/4 v2, 0x2

    if-gt v0, v2, :cond_6

    if-le v0, v5, :cond_4

    iget-object v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->is24HourView()Z

    move-result v2

    if-nez v2, :cond_4

    .line 977
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-get7(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mId:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 978
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->changeFocus()V

    goto :goto_0

    .line 983
    .end local v0    # "number":I
    :cond_7
    iget v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mId:I

    if-ne v2, v5, :cond_9

    .line 984
    iget v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->changedLen:I

    if-ne v2, v5, :cond_4

    .line 985
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mMaxLen:I

    if-ne v2, v3, :cond_8

    .line 986
    iget-object v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-get7(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mId:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 987
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->changeFocus()V

    goto :goto_0

    .line 989
    :cond_8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 990
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->convertDigitCharacterToNumber(Ljava/lang/String;)I

    move-result v0

    .line 991
    .restart local v0    # "number":I
    const/4 v2, 0x6

    if-lt v0, v2, :cond_4

    const/16 v2, 0x9

    if-gt v0, v2, :cond_4

    .line 992
    iget-object v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-get7(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mId:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 993
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->changeFocus()V

    goto :goto_0

    .line 999
    .end local v0    # "number":I
    :cond_9
    iget-object v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mMaxLen:I

    if-ne v2, v3, :cond_4

    .line 1000
    iget-object v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-get7(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mId:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1001
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->changeFocus()V

    goto/16 :goto_0
.end method
