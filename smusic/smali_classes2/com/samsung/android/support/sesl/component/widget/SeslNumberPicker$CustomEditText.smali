.class public Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$CustomEditText;
.super Landroid/widget/EditText;
.source "SeslNumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomEditText"
.end annotation


# instance fields
.field private mAdjustEditTextPosition:I

.field private mPickerContentDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 823
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 824
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$CustomEditText;->mPickerContentDescription:Ljava/lang/String;

    .line 825
    return-void
.end method

.method private getTextForAccessibility()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 872
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 873
    .local v0, "text":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$CustomEditText;->mPickerContentDescription:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 874
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 875
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$CustomEditText;->mPickerContentDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 880
    :cond_0
    :goto_0
    return-object v0

    .line 877
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$CustomEditText;->mPickerContentDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 885
    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$CustomEditText;->mAdjustEditTextPosition:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 886
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 887
    return-void
.end method

.method public onEditorAction(I)V
    .locals 1
    .param p1, "actionCode"    # I

    .prologue
    .line 837
    invoke-super {p0, p1}, Landroid/widget/EditText;->onEditorAction(I)V

    .line 838
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 839
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$CustomEditText;->clearFocus()V

    .line 841
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 867
    invoke-super {p0, p1}, Landroid/widget/EditText;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 868
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$CustomEditText;->getTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 869
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 845
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 846
    .local v2, "oldSize":I
    invoke-super {p0, p1}, Landroid/widget/EditText;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 847
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 849
    .local v1, "newSize":I
    if-le v1, v2, :cond_0

    .line 850
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    add-int/lit8 v5, v1, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 852
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 854
    .local v0, "eventType":I
    const/16 v4, 0x10

    if-eq v0, v4, :cond_1

    const/16 v4, 0x2000

    if-ne v0, v4, :cond_3

    .line 856
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 860
    .local v3, "text":Ljava/lang/CharSequence;
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 861
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 863
    :cond_2
    return-void

    .line 858
    .end local v3    # "text":Ljava/lang/CharSequence;
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$CustomEditText;->getTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v3

    .restart local v3    # "text":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method public setEditTextPosition(I)V
    .locals 0
    .param p1, "pixel"    # I

    .prologue
    .line 832
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$CustomEditText;->mAdjustEditTextPosition:I

    .line 833
    return-void
.end method

.method public setPickerContentDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 828
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$CustomEditText;->mPickerContentDescription:Ljava/lang/String;

    .line 829
    return-void
.end method
