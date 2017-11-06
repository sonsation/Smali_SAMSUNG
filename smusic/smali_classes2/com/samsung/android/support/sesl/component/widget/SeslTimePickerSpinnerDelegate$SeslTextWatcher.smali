.class public Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;
.super Ljava/lang/Object;
.source "SeslTimePickerSpinnerDelegate.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SeslTextWatcher"
.end annotation


# instance fields
.field private changedLen:I

.field private mId:I

.field private mMaxLen:I

.field private mNext:I

.field private prevText:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;II)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;
    .param p2, "maxLen"    # I
    .param p3, "id"    # I

    .prologue
    .line 903
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 899
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->changedLen:I

    .line 904
    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mMaxLen:I

    .line 905
    iput p3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    .line 907
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mNext:I

    .line 908
    return-void

    .line 907
    :cond_0
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private changeFocus()V
    .locals 4

    .prologue
    .line 980
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 981
    .local v0, "manager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 995
    :cond_0
    :goto_0
    return-void

    .line 985
    :cond_1
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mNext:I

    if-ltz v1, :cond_2

    .line 986
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->access$1300(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mNext:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 988
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->access$1300(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 989
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->access$1300(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0

    .line 991
    :cond_2
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 992
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->access$1300(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->setMinute(I)V

    .line 993
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->access$1300(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0
.end method

.method private convertDigitCharacterToNumber(Ljava/lang/String;)I
    .locals 6
    .param p1, "digitCharacter"    # Ljava/lang/String;

    .prologue
    .line 998
    const/4 v0, 0x0

    .line 999
    .local v0, "idx":I
    invoke-static {}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->access$1400()[C

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-char v1, v3, v2

    .line 1000
    .local v1, "val":C
    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1001
    rem-int/lit8 v2, v0, 0xa

    .line 1005
    .end local v1    # "val":C
    :goto_1
    return v2

    .line 1003
    .restart local v1    # "val":C
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 999
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1005
    .end local v1    # "val":C
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "view"    # Landroid/text/Editable;

    .prologue
    .line 911
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->access$1200(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 912
    const-string v0, "Picker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aftertextchanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
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
    .line 917
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->access$1200(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 918
    const-string v0, "Picker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beforeTextChanged: "

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

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->prevText:Ljava/lang/String;

    .line 921
    iput p4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->changedLen:I

    .line 922
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

    .line 925
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->access$1200(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 926
    const-string v2, "Picker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTextChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    const-string v2, "Picker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTextChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->access$1300(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 931
    .local v1, "tag":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 932
    const-string v2, "onClick"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "onLongClick"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 933
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->access$1300(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object v2, v2, v3

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 977
    :cond_2
    :goto_0
    return-void

    .line 937
    :cond_3
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    packed-switch v2, :pswitch_data_0

    .line 971
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mMaxLen:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;

    .line 972
    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->access$1300(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 973
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->changeFocus()V

    goto :goto_0

    .line 939
    :pswitch_0
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->changedLen:I

    if-ne v2, v5, :cond_2

    .line 940
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mMaxLen:I

    if-ne v2, v3, :cond_4

    .line 941
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->access$1300(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 942
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->changeFocus()V

    goto :goto_0

    .line 944
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 945
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->convertDigitCharacterToNumber(Ljava/lang/String;)I

    move-result v0

    .line 946
    .local v0, "number":I
    const/4 v2, 0x2

    if-gt v0, v2, :cond_5

    if-le v0, v5, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->is24Hour()Z

    move-result v2

    if-nez v2, :cond_2

    .line 947
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->access$1300(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 948
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->changeFocus()V

    goto :goto_0

    .line 955
    .end local v0    # "number":I
    :pswitch_1
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->changedLen:I

    if-ne v2, v5, :cond_2

    .line 956
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mMaxLen:I

    if-ne v2, v3, :cond_6

    .line 957
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->access$1300(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 958
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->changeFocus()V

    goto/16 :goto_0

    .line 960
    :cond_6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 961
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->convertDigitCharacterToNumber(Ljava/lang/String;)I

    move-result v0

    .line 962
    .restart local v0    # "number":I
    const/4 v2, 0x6

    if-lt v0, v2, :cond_2

    const/16 v2, 0x9

    if-gt v0, v2, :cond_2

    .line 963
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->access$1300(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 964
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->changeFocus()V

    goto/16 :goto_0

    .line 937
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
