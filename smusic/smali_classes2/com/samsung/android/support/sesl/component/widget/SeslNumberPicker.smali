.class public Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;
.super Landroid/widget/LinearLayout;
.source "SeslNumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$AbstractSeslNumberPickerDelegate;,
        Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;,
        Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$CustomEditText;,
        Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$Formatter;,
        Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnScrollListener;,
        Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnEditTextModeChangedListener;,
        Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnValueChangeListener;,
        Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$TwoDigitFormatter;
    }
.end annotation


# static fields
.field private static final sTwoDigitFormatter:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$TwoDigitFormatter;


# instance fields
.field private mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$TwoDigitFormatter;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$TwoDigitFormatter;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->sTwoDigitFormatter:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$TwoDigitFormatter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 218
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 219
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 228
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 229
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 242
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 258
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 260
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    .line 262
    return-void
.end method

.method public static final getTwoDigitFormatter()Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$Formatter;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->sTwoDigitFormatter:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$TwoDigitFormatter;

    return-object v0
.end method


# virtual methods
.method public computeScroll()V
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->computeScroll()V

    .line 431
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->computeVerticalScrollOffset()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 411
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->isEditTextModeNotAmPm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 414
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 395
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    const/4 v0, 0x1

    .line 398
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 337
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    const/4 v0, 0x1

    .line 340
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 365
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 366
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 404
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->dispatchTrackballEvent(Landroid/view/MotionEvent;)V

    .line 405
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->isEditTextModeNotAmPm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 765
    invoke-super {p0}, Landroid/widget/LinearLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 767
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    goto :goto_0
.end method

.method public getAmPm()Z
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->getAmPm()Z

    move-result v0

    return v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->getDisplayedValues()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method getEnableStateSet()[I
    .locals 1

    .prologue
    .line 804
    sget-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->ENABLED_STATE_SET:[I

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->getMaxValue()I

    move-result v0

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->getMinValue()I

    move-result v0

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->getValue()I

    move-result v0

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->getWrapSelectorWheel()Z

    move-result v0

    return v0
.end method

.method public isEditTextMode()Z
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->isEditTextMode()Z

    move-result v0

    return v0
.end method

.method isVisibleToUserWrapper()Z
    .locals 1

    .prologue
    .line 808
    invoke-static {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->isVisibleToUser(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method isVisibleToUserWrapper(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "boundInView"    # Landroid/graphics/Rect;

    .prologue
    .line 812
    invoke-static {p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->isVisibleToUser(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 739
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 740
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->onAttachedToWindow()V

    .line 741
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 381
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 382
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 383
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 732
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 733
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->onDetachedFromWindow()V

    .line 734
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 746
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->isEditTextModeNotAmPm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 747
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 752
    :goto_0
    return-void

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 388
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 389
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 390
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 372
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    const/4 v0, 0x1

    .line 375
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 757
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 758
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 759
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 353
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 316
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->onLayout(ZIIII)V

    .line 317
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 331
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->onMeasure(II)V

    .line 332
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 346
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 347
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->onWindowFocusChanged(Z)V

    .line 348
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 309
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->onWindowVisibilityChanged(I)V

    .line 310
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowVisibilityChanged(I)V

    .line 311
    return-void
.end method

.method public performClick(Z)V
    .locals 1
    .param p1, "toIncrement"    # Z

    .prologue
    .line 552
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->performClick(Z)V

    .line 553
    return-void
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->isEditTextModeNotAmPm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    .line 547
    :goto_0
    return v0

    .line 544
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    if-nez v0, :cond_1

    .line 545
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->performClick()V

    .line 547
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 1

    .prologue
    .line 558
    invoke-super {p0}, Landroid/widget/LinearLayout;->performLongClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->performLongClick()V

    .line 561
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public scrollBy(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 442
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->scrollBy(II)V

    .line 443
    return-void
.end method

.method public setAmPm(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 280
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->setAmPm(Z)V

    .line 281
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 1
    .param p1, "displayedValues"    # [Ljava/lang/String;

    .prologue
    .line 687
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->setDisplayedValues([Ljava/lang/String;)V

    .line 688
    return-void
.end method

.method public setEditTextMode(Z)V
    .locals 1
    .param p1, "isEditTextMode"    # Z

    .prologue
    .line 294
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->setEditTextMode(Z)V

    .line 295
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 435
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 436
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->setEnabled(Z)V

    .line 437
    return-void
.end method

.method public setFormatter(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$Formatter;)V
    .locals 1
    .param p1, "formatter"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$Formatter;

    .prologue
    .line 503
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->setFormatter(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$Formatter;)V

    .line 504
    return-void
.end method

.method public setImeOptions(I)V
    .locals 1
    .param p1, "imeOptions"    # I

    .prologue
    .line 275
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->setImeOptions(I)V

    .line 276
    return-void
.end method

.method public setMaxInputLength(I)V
    .locals 1
    .param p1, "limit"    # I

    .prologue
    .line 776
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->setMaxInputLength(I)V

    .line 777
    return-void
.end method

.method public setMaxValue(I)V
    .locals 1
    .param p1, "maxValue"    # I

    .prologue
    .line 664
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->setMaxValue(I)V

    .line 665
    return-void
.end method

.method public setMeasuredDimensionWrapper(II)V
    .locals 0
    .param p1, "measuredWidth"    # I
    .param p2, "measuredHeight"    # I

    .prologue
    .line 325
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setMeasuredDimension(II)V

    .line 326
    return-void
.end method

.method public setMinValue(I)V
    .locals 1
    .param p1, "minValue"    # I

    .prologue
    .line 641
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->setMinValue(I)V

    .line 642
    return-void
.end method

.method public setMonthInputMode()V
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->setMonthInputMode()V

    .line 793
    return-void
.end method

.method public setOnEditTextModeChangedListener(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnEditTextModeChangedListener;)V
    .locals 1
    .param p1, "onEditTextModeChangedListener"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnEditTextModeChangedListener;

    .prologue
    .line 488
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->setOnEditTextModeChangedListener(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnEditTextModeChangedListener;)V

    .line 489
    return-void
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 1
    .param p1, "intervalMillis"    # J

    .prologue
    .line 609
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->setOnLongPressUpdateInterval(J)V

    .line 610
    return-void
.end method

.method public setOnScrollListener(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnScrollListener;)V
    .locals 1
    .param p1, "onScrollListener"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnScrollListener;

    .prologue
    .line 479
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->setOnScrollListener(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnScrollListener;)V

    .line 480
    return-void
.end method

.method public setOnValueChangedListener(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnValueChangeListener;)V
    .locals 1
    .param p1, "onValueChangedListener"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnValueChangeListener;

    .prologue
    .line 469
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->setOnValueChangedListener(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnValueChangeListener;)V

    .line 470
    return-void
.end method

.method public setPickerContentDescription(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 270
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->setPickerContentDescription(Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public setSkipValuesOnLongPressEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 424
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->setSkipValuesOnLongPressEnabled(Z)V

    .line 425
    return-void
.end method

.method public setSubTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 707
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->setSubTextSize(F)V

    .line 708
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 697
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->setTextSize(F)V

    .line 698
    return-void
.end method

.method public setTextTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 716
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->setTextTypeface(Landroid/graphics/Typeface;)V

    .line 717
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 535
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->setValue(I)V

    .line 536
    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 1
    .param p1, "wrapSelectorWheel"    # Z

    .prologue
    .line 595
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->setWrapSelectorWheel(Z)V

    .line 596
    return-void
.end method

.method public setYearDateTimeInputMode()V
    .locals 1

    .prologue
    .line 800
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->setYearDateTimeInputMode()V

    .line 801
    return-void
.end method

.method public startAnimation(ILcom/samsung/android/support/sesl/component/widget/SeslAnimationListener;)V
    .locals 1
    .param p1, "delayTime"    # I
    .param p2, "listener"    # Lcom/samsung/android/support/sesl/component/widget/SeslAnimationListener;

    .prologue
    .line 726
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->mDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;->startAnimation(ILcom/samsung/android/support/sesl/component/widget/SeslAnimationListener;)V

    .line 727
    return-void
.end method

.method superOnMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 320
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 321
    return-void
.end method
