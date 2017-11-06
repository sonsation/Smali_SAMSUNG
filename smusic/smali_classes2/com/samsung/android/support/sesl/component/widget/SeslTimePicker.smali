.class public Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;
.super Landroid/widget/FrameLayout;
.source "SeslTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$AbstractTimePickerDelegate;,
        Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;,
        Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$OnEditTextModeChangedListener;,
        Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$OnTimeChangedListener;
    }
.end annotation


# static fields
.field public static final PICKER_AMPM:I = 0x2

.field public static final PICKER_HOUR:I = 0x0

.field public static final PICKER_MINUTE:I = 0x1


# instance fields
.field private mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 109
    const v0, 0x101049d

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 139
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 141
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;

    .line 143
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 328
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 307
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 308
    return-void
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getEditText(I)Landroid/widget/EditText;
    .locals 1
    .param p1, "picker"    # I

    .prologue
    .line 378
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;->getEditText(I)Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method public getHour()I
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;->getHour()I

    move-result v0

    return v0
.end method

.method public getMinute()I
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;->getMinute()I

    move-result v0

    return v0
.end method

.method public getNumberPicker(I)Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;
    .locals 1
    .param p1, "picker"    # I

    .prologue
    .line 383
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;->getNumberPicker(I)Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    move-result-object v0

    return-object v0
.end method

.method public is24HourView()Z
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;->is24Hour()Z

    move-result v0

    return v0
.end method

.method public isEditTextMode()Z
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;->isEditTextMode()Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 298
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 299
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 300
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 341
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 342
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 343
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 348
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 349
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 350
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, -0x80000000

    .line 156
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 157
    .local v3, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 158
    .local v2, "heightMode":I
    if-ne v3, v5, :cond_0

    .line 159
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;

    invoke-interface {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;->getDefaultWidth()I

    move-result v1

    .line 160
    .local v1, "defaultWidth":I
    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 162
    .end local v1    # "defaultWidth":I
    :cond_0
    if-ne v2, v5, :cond_1

    .line 163
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;

    invoke-interface {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;->getDefaultHeight()I

    move-result v0

    .line 164
    .local v0, "defaultHeight":I
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 166
    .end local v0    # "defaultHeight":I
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 167
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 334
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 335
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 336
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 320
    move-object v0, p1

    check-cast v0, Landroid/view/View$BaseSavedState;

    .line 321
    .local v0, "ss":Landroid/view/View$BaseSavedState;
    invoke-virtual {v0}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 322
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;

    invoke-interface {v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 323
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 313
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 314
    .local v0, "superState":Landroid/os/Parcelable;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;

    invoke-interface {v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;->onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v1

    return-object v1
.end method

.method public setEditTextMode(Z)V
    .locals 1
    .param p1, "editTextMode"    # Z

    .prologue
    .line 175
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;->setEditTextMode(Z)V

    .line 176
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 269
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 270
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;->setEnabled(Z)V

    .line 271
    return-void
.end method

.method public setHour(I)V
    .locals 3
    .param p1, "hour"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x17L
        .end annotation
    .end param

    .prologue
    .line 194
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;

    const/4 v1, 0x0

    const/16 v2, 0x17

    invoke-static {p1, v1, v2}, Lcom/samsung/android/support/sesl/component/util/SeslMathUtils;->constrain(III)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;->setHour(I)V

    .line 195
    return-void
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "is24HourView"    # Ljava/lang/Boolean;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 236
    if-nez p1, :cond_0

    .line 241
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;->setIs24Hour(Z)V

    goto :goto_0
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 360
    return-void
.end method

.method public setMinute(I)V
    .locals 3
    .param p1, "minute"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x3bL
        .end annotation
    .end param

    .prologue
    .line 214
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;

    const/4 v1, 0x0

    const/16 v2, 0x3b

    invoke-static {p1, v1, v2}, Lcom/samsung/android/support/sesl/component/util/SeslMathUtils;->constrain(III)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;->setMinute(I)V

    .line 215
    return-void
.end method

.method public setOnEditTextModeChangedListener(Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$OnEditTextModeChangedListener;)V
    .locals 1
    .param p1, "onEditTextModeChangedListener"    # Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$OnEditTextModeChangedListener;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;->setOnEditTextModeChangedListener(Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$OnEditTextModeChangedListener;)V

    .line 152
    return-void
.end method

.method public setOnTimeChangedListener(Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$OnTimeChangedListener;)V
    .locals 1
    .param p1, "onTimeChangedListener"    # Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$OnTimeChangedListener;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;->setOnTimeChangedListener(Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$OnTimeChangedListener;)V

    .line 260
    return-void
.end method

.method public startAnimation(ILcom/samsung/android/support/sesl/component/widget/SeslAnimationListener;)V
    .locals 1
    .param p1, "delayTime"    # I
    .param p2, "listener"    # Lcom/samsung/android/support/sesl/component/widget/SeslAnimationListener;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;->startAnimation(ILcom/samsung/android/support/sesl/component/widget/SeslAnimationListener;)V

    .line 370
    return-void
.end method
