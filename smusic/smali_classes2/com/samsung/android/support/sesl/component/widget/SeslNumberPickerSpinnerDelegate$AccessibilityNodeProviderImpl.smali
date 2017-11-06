.class Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "SeslNumberPickerSpinnerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccessibilityNodeProviderImpl"
.end annotation


# static fields
.field private static final UNDEFINED:I = -0x80000000

.field private static final VIRTUAL_VIEW_ID_DECREMENT:I = 0x2

.field private static final VIRTUAL_VIEW_ID_DECREMENT_EX:I = 0x1

.field private static final VIRTUAL_VIEW_ID_INCREMENT:I = 0x4

.field private static final VIRTUAL_VIEW_ID_INCREMENT_EX:I = 0x5

.field private static final VIRTUAL_VIEW_ID_INPUT:I = 0x3


# instance fields
.field private mAccessibilityFocusedView:I

.field private final mTempArray:[I

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    .prologue
    .line 2750
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    .line 2763
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 2765
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 2767
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    return-void
.end method

.method private createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 9
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 3242
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    .line 3243
    .local v3, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    const-class v5, Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 3244
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v5, v5, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 3245
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v5, v5, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    .line 3247
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->hasVirtualDecrementExButton()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3248
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v5, v5, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v3, v5, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 3250
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3251
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v5, v5, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 3253
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v5, v5, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    const/4 v6, 0x3

    invoke-virtual {v3, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 3254
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3255
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v5, v5, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    const/4 v6, 0x4

    invoke-virtual {v3, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 3257
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->hasVirtualIncrementExButton()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3258
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v5, v5, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    const/4 v6, 0x5

    invoke-virtual {v3, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 3261
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v5, v5, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 3262
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v5, v5, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->isEnabled()Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 3263
    invoke-virtual {v3, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 3265
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v5, v5, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    .line 3266
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 3265
    invoke-static {v5}, Lcom/samsung/android/support/sesl/core/content/res/SeslCompatibilityInfoReflector;->getField_applicationScale(Landroid/content/res/Resources;)F

    move-result v0

    .line 3268
    .local v0, "applicationScale":F
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 3269
    .local v1, "boundsInParent":Landroid/graphics/Rect;
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3270
    invoke-static {v1, v0}, Lcom/samsung/android/support/sesl/core/graphics/SeslRectReflector;->scale(Landroid/graphics/Rect;F)V

    .line 3271
    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 3272
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v5, v5, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->isVisibleToUserWrapper()Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 3274
    move-object v2, v1

    .line 3275
    .local v2, "boundsInScreen":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 3276
    .local v4, "locationOnScreen":[I
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v5, v5, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v5, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getLocationOnScreen([I)V

    .line 3277
    const/4 v5, 0x0

    aget v5, v4, v5

    aget v6, v4, v7

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 3278
    invoke-static {v2, v0}, Lcom/samsung/android/support/sesl/core/graphics/SeslRectReflector;->scale(Landroid/graphics/Rect;F)V

    .line 3279
    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 3281
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v5, v8, :cond_4

    .line 3282
    const/16 v5, 0x40

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3284
    :cond_4
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v5, v8, :cond_5

    .line 3285
    const/16 v5, 0x80

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3287
    :cond_5
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v5, v5, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 3288
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getWrapSelectorWheel()Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getMaxValue()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 3289
    :cond_6
    const/16 v5, 0x1000

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3291
    :cond_7
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getWrapSelectorWheel()Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v6

    if-le v5, v6, :cond_9

    .line 3292
    :cond_8
    const/16 v5, 0x2000

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3296
    :cond_9
    return-object v3
.end method

.method private createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 6
    .param p1, "virtualViewId"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I

    .prologue
    const/4 v5, 0x1

    .line 3208
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 3209
    .local v2, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    const-class v4, Landroid/widget/Button;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 3210
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 3211
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v2, v4, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 3212
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 3213
    invoke-virtual {v2, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 3214
    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 3215
    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 3216
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->isEnabled()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 3217
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 3218
    .local v0, "boundsInParent":Landroid/graphics/Rect;
    invoke-virtual {v0, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    .line 3219
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v4, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->isVisibleToUserWrapper(Landroid/graphics/Rect;)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 3220
    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 3221
    move-object v1, v0

    .line 3222
    .local v1, "boundsInScreen":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 3223
    .local v3, "locationOnScreen":[I
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v4, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getLocationOnScreen([I)V

    .line 3224
    const/4 v4, 0x0

    aget v4, v3, v4

    aget v5, v3, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 3225
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 3227
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v4, p1, :cond_0

    .line 3228
    const/16 v4, 0x40

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3230
    :cond_0
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v4, p1, :cond_1

    .line 3231
    const/16 v4, 0x80

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3233
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3234
    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3237
    :cond_2
    return-object v2
.end method

.method private createAccessibiltyNodeInfoForInputText(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/4 v5, 0x3

    .line 3182
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 3183
    .local v2, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v2, v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 3184
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v4, v5, :cond_0

    .line 3185
    const/16 v4, 0x40

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3187
    :cond_0
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v4, v5, :cond_1

    .line 3188
    const/16 v4, 0x80

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3190
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$900(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3191
    const-class v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 3192
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualCurrentButtonText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 3194
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 3195
    .local v0, "boundsInParent":Landroid/graphics/Rect;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3196
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v4, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->isVisibleToUserWrapper(Landroid/graphics/Rect;)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 3197
    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 3198
    move-object v1, v0

    .line 3199
    .local v1, "boundsInScreen":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 3200
    .local v3, "locationOnScreen":[I
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v4, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getLocationOnScreen([I)V

    .line 3201
    const/4 v4, 0x0

    aget v4, v3, v4

    const/4 v5, 0x1

    aget v5, v3, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 3202
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 3203
    return-object v2
.end method

.method private findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V
    .locals 4
    .param p1, "searchedLowerCase"    # Ljava/lang/String;
    .param p2, "virtualViewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "outResult":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    const/4 v3, 0x3

    .line 3134
    packed-switch p2, :pswitch_data_0

    .line 3178
    :cond_0
    :goto_0
    return-void

    .line 3136
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualDecrementExButtonText()Ljava/lang/String;

    move-result-object v1

    .line 3137
    .local v1, "text":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3138
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3139
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3143
    .end local v1    # "text":Ljava/lang/String;
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v1

    .line 3144
    .restart local v1    # "text":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3145
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3146
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3150
    .end local v1    # "text":Ljava/lang/String;
    :pswitch_2
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 3151
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3152
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3153
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3156
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 3157
    .local v0, "contentDesc":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3158
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3159
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3164
    .end local v0    # "contentDesc":Ljava/lang/CharSequence;
    .end local v1    # "text":Ljava/lang/CharSequence;
    :pswitch_3
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v1

    .line 3165
    .local v1, "text":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3166
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3167
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3171
    .end local v1    # "text":Ljava/lang/String;
    :pswitch_4
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualIncrementExButtonText()Ljava/lang/String;

    move-result-object v1

    .line 3172
    .restart local v1    # "text":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3173
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3174
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3134
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getVirtualCurrentButtonText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3364
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$3600(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v0

    .line 3365
    .local v0, "value":I
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$3700(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3366
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$3800(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;I)I

    move-result v0

    .line 3368
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$2000(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 3369
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$1800(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$2100(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;I)Ljava/lang/String;

    move-result-object v1

    .line 3370
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$4000(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3372
    :goto_1
    return-object v1

    .line 3369
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    .line 3370
    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$1800(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$3900(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v3

    sub-int v3, v0, v3

    aget-object v1, v1, v3

    goto :goto_0

    .line 3372
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getVirtualDecrementButtonText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3328
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$3600(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 3329
    .local v0, "value":I
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$3700(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3330
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$3800(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;I)I

    move-result v0

    .line 3332
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$3900(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 3333
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$1800(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$2100(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;I)Ljava/lang/String;

    move-result-object v1

    .line 3334
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$4000(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3336
    :goto_1
    return-object v1

    .line 3333
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    .line 3334
    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$1800(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$3900(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v3

    sub-int v3, v0, v3

    aget-object v1, v1, v3

    goto :goto_0

    .line 3336
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getVirtualDecrementExButtonText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3316
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$3600(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v1

    add-int/lit8 v0, v1, -0x2

    .line 3317
    .local v0, "value":I
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$3700(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3318
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$3800(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;I)I

    move-result v0

    .line 3320
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$3900(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 3321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$1800(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$2100(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;I)Ljava/lang/String;

    move-result-object v1

    .line 3322
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$4000(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3324
    :goto_1
    return-object v1

    .line 3321
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    .line 3322
    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$1800(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$3900(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v3

    sub-int v3, v0, v3

    aget-object v1, v1, v3

    goto :goto_0

    .line 3324
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getVirtualIncrementButtonText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3340
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$3600(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 3341
    .local v0, "value":I
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$3700(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3342
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$3800(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;I)I

    move-result v0

    .line 3344
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$2000(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 3345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$1800(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$2100(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;I)Ljava/lang/String;

    move-result-object v1

    .line 3346
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$4000(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3348
    :goto_1
    return-object v1

    .line 3345
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    .line 3346
    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$1800(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$3900(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v3

    sub-int v3, v0, v3

    aget-object v1, v1, v3

    goto :goto_0

    .line 3348
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getVirtualIncrementExButtonText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3352
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$3600(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v1

    add-int/lit8 v0, v1, 0x2

    .line 3353
    .local v0, "value":I
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$3700(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3354
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$3800(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;I)I

    move-result v0

    .line 3356
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$2000(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 3357
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$1800(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$2100(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;I)Ljava/lang/String;

    move-result-object v1

    .line 3358
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$4000(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3360
    :goto_1
    return-object v1

    .line 3357
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    .line 3358
    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$1800(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$3900(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v3

    sub-int v3, v0, v3

    aget-object v1, v1, v3

    goto :goto_0

    .line 3360
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private hasVirtualDecrementButton()Z
    .locals 2

    .prologue
    .line 3304
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasVirtualDecrementExButton()Z
    .locals 2

    .prologue
    .line 3300
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasVirtualIncrementButton()Z
    .locals 2

    .prologue
    .line 3308
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getMaxValue()I

    move-result v1

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasVirtualIncrementExButton()Z
    .locals 2

    .prologue
    .line 3312
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getMaxValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V
    .locals 3
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 3121
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3122
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 3123
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    const-class v1, Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 3124
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 3125
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3126
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 3127
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 3128
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 3130
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method

.method private sendAccessibilityEventForVirtualText(I)V
    .locals 3
    .param p1, "eventType"    # I

    .prologue
    .line 3110
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3111
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 3112
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3113
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3114
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 3115
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 3117
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 18
    .param p1, "virtualViewId"    # I

    .prologue
    .line 2771
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getLeft()I

    move-result v15

    .line 2772
    .local v15, "left":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getRight()I

    move-result v16

    .line 2773
    .local v16, "right":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getTop()I

    move-result v17

    .line 2774
    .local v17, "top":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getBottom()I

    move-result v13

    .line 2775
    .local v13, "bottom":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getScrollX()I

    move-result v4

    .line 2776
    .local v4, "scrollX":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getScrollY()I

    move-result v5

    .line 2777
    .local v5, "scrollY":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$3000(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    .line 2778
    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$3100(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v1

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    .line 2779
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 2810
    :cond_1
    :pswitch_0
    invoke-super/range {p0 .. p1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v14

    .line 2811
    .local v14, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v14, :cond_2

    .line 2812
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v14

    .line 2814
    .end local v14    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_2
    :goto_0
    return-object v14

    .line 2781
    :pswitch_1
    sub-int v1, v16, v15

    add-int/2addr v1, v4

    sub-int v2, v13, v17

    add-int/2addr v2, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v14

    goto :goto_0

    .line 2784
    :pswitch_2
    const/4 v2, 0x1

    .line 2785
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualDecrementExButtonText()Ljava/lang/String;

    move-result-object v3

    sub-int v1, v16, v15

    add-int v6, v4, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    .line 2787
    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$3200(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$3300(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v7

    add-int/2addr v7, v1

    move-object/from16 v1, p0

    .line 2784
    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v14

    goto :goto_0

    .line 2789
    :pswitch_3
    const/4 v7, 0x2

    .line 2790
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$3200(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v1

    add-int v10, v1, v5

    sub-int v1, v16, v15

    add-int v11, v4, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    .line 2792
    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$2700(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$3300(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v2

    add-int v12, v1, v2

    move-object/from16 v6, p0

    move v9, v4

    .line 2789
    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v14

    goto :goto_0

    .line 2794
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    .line 2795
    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$2700(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$3300(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v2

    add-int/2addr v1, v2

    sub-int v2, v16, v15

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    .line 2797
    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$2500(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$3300(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v6

    sub-int/2addr v3, v6

    .line 2794
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibiltyNodeInfoForInputText(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v14

    goto/16 :goto_0

    .line 2799
    :pswitch_5
    const/4 v7, 0x4

    .line 2800
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    .line 2801
    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$2500(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$3300(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v2

    sub-int v10, v1, v2

    sub-int v1, v16, v15

    add-int v11, v4, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    .line 2802
    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$3400(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v12

    move-object/from16 v6, p0

    move v9, v4

    .line 2799
    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v14

    goto/16 :goto_0

    .line 2804
    :pswitch_6
    const/4 v7, 0x5

    .line 2805
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualIncrementExButtonText()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    .line 2806
    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$3400(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$3300(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v2

    sub-int v10, v1, v2

    sub-int v1, v16, v15

    add-int v11, v4, v1

    sub-int v1, v13, v17

    add-int v12, v5, v1

    move-object/from16 v6, p0

    move v9, v4

    .line 2804
    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v14

    goto/16 :goto_0

    .line 2779
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .param p1, "searched"    # Ljava/lang/String;
    .param p2, "virtualViewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2820
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2821
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 2849
    :goto_0
    return-object v0

    .line 2823
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 2824
    .local v1, "searchedLowerCase":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2825
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    packed-switch p2, :pswitch_data_0

    .line 2849
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 2827
    :pswitch_1
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 2829
    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 2831
    const/4 v2, 0x3

    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 2833
    const/4 v2, 0x4

    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 2835
    const/4 v2, 0x5

    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    goto :goto_0

    .line 2844
    :pswitch_2
    invoke-direct {p0, v1, p2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    goto :goto_0

    .line 2825
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 8
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/high16 v7, 0x10000

    const v6, 0x8000

    const/high16 v5, -0x80000000

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2854
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$600(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3074
    :cond_0
    :goto_0
    return v2

    .line 2858
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getRight()I

    move-result v1

    .line 2859
    .local v1, "right":I
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getBottom()I

    move-result v0

    .line 2861
    .local v0, "bottom":I
    packed-switch p1, :pswitch_data_0

    .line 3074
    :goto_1
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result v2

    goto :goto_0

    .line 2863
    :pswitch_1
    sparse-switch p2, :sswitch_data_0

    goto :goto_1

    .line 2865
    :sswitch_0
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v4, p1, :cond_0

    .line 2866
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2869
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->requestAccessibilityFocus(Landroid/view/View;)Z

    move v2, v3

    .line 2871
    goto :goto_0

    .line 2875
    :sswitch_1
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v4, p1, :cond_0

    .line 2876
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2879
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->clearAccessibilityFocus(Landroid/view/View;)V

    move v2, v3

    .line 2882
    goto :goto_0

    .line 2887
    :sswitch_2
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    .line 2888
    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getWrapSelectorWheel()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getMaxValue()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 2889
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$2800(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;Z)V

    move v2, v3

    .line 2890
    goto :goto_0

    .line 2894
    :sswitch_3
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    .line 2895
    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getWrapSelectorWheel()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 2896
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v4, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$2800(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;Z)V

    move v2, v3

    .line 2897
    goto/16 :goto_0

    .line 2903
    :pswitch_2
    sparse-switch p2, :sswitch_data_1

    .line 2949
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Landroid/widget/EditText;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v2

    goto/16 :goto_0

    .line 2905
    :sswitch_4
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->isFocused()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2906
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    move-result v2

    goto/16 :goto_0

    .line 2910
    :sswitch_5
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2911
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->clearFocus()V

    move v2, v3

    .line 2912
    goto/16 :goto_0

    .line 2917
    :sswitch_6
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2918
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->performClick()V

    move v2, v3

    .line 2919
    goto/16 :goto_0

    .line 2924
    :sswitch_7
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2925
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->performLongClick()V

    move v2, v3

    .line 2926
    goto/16 :goto_0

    .line 2931
    :sswitch_8
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v4, p1, :cond_0

    .line 2932
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2933
    invoke-virtual {p0, p1, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2935
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$2700(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$2500(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v6

    invoke-virtual {v4, v2, v5, v1, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->invalidate(IIII)V

    move v2, v3

    .line 2936
    goto/16 :goto_0

    .line 2940
    :sswitch_9
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v4, p1, :cond_0

    .line 2941
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2942
    invoke-virtual {p0, p1, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2944
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$2700(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$2500(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v6

    invoke-virtual {v4, v2, v5, v1, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->invalidate(IIII)V

    move v2, v3

    .line 2945
    goto/16 :goto_0

    .line 2954
    :pswitch_3
    sparse-switch p2, :sswitch_data_2

    goto/16 :goto_0

    .line 2956
    :sswitch_a
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2957
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$2800(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;Z)V

    .line 2958
    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    move v2, v3

    .line 2960
    goto/16 :goto_0

    .line 2964
    :sswitch_b
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v4, p1, :cond_0

    .line 2965
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2966
    invoke-virtual {p0, p1, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2968
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$2500(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$3400(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v6

    invoke-virtual {v4, v2, v5, v1, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->invalidate(IIII)V

    move v2, v3

    .line 2969
    goto/16 :goto_0

    .line 2973
    :sswitch_c
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v4, p1, :cond_0

    .line 2974
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2975
    invoke-virtual {p0, p1, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2977
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$2500(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$3400(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v6

    invoke-virtual {v4, v2, v5, v1, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->invalidate(IIII)V

    move v2, v3

    .line 2978
    goto/16 :goto_0

    .line 2984
    :pswitch_4
    sparse-switch p2, :sswitch_data_3

    goto/16 :goto_0

    .line 2986
    :sswitch_d
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2987
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$3500(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;Z)V

    .line 2988
    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    move v2, v3

    .line 2990
    goto/16 :goto_0

    .line 2994
    :sswitch_e
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v4, p1, :cond_0

    .line 2995
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2996
    invoke-virtual {p0, p1, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2998
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$3400(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v5

    invoke-virtual {v4, v2, v5, v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->invalidate(IIII)V

    move v2, v3

    .line 2999
    goto/16 :goto_0

    .line 3003
    :sswitch_f
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v4, p1, :cond_0

    .line 3004
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 3005
    invoke-virtual {p0, p1, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 3007
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$3400(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v5

    invoke-virtual {v4, v2, v5, v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->invalidate(IIII)V

    move v2, v3

    .line 3008
    goto/16 :goto_0

    .line 3014
    :pswitch_5
    sparse-switch p2, :sswitch_data_4

    goto/16 :goto_0

    .line 3016
    :sswitch_10
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3017
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v4, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$2800(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;Z)V

    .line 3018
    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    move v2, v3

    .line 3020
    goto/16 :goto_0

    .line 3024
    :sswitch_11
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v4, p1, :cond_0

    .line 3025
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 3026
    invoke-virtual {p0, p1, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 3028
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$3200(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$2700(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v6

    invoke-virtual {v4, v2, v5, v1, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->invalidate(IIII)V

    move v2, v3

    .line 3029
    goto/16 :goto_0

    .line 3033
    :sswitch_12
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v4, p1, :cond_0

    .line 3034
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 3035
    invoke-virtual {p0, p1, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 3037
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$3200(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$2700(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v6

    invoke-virtual {v4, v2, v5, v1, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->invalidate(IIII)V

    move v2, v3

    .line 3038
    goto/16 :goto_0

    .line 3044
    :pswitch_6
    sparse-switch p2, :sswitch_data_5

    goto/16 :goto_0

    .line 3046
    :sswitch_13
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3047
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v4, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$3500(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;Z)V

    .line 3048
    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    move v2, v3

    .line 3050
    goto/16 :goto_0

    .line 3054
    :sswitch_14
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v4, p1, :cond_0

    .line 3055
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 3056
    invoke-virtual {p0, p1, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 3058
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$3200(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v5

    invoke-virtual {v4, v2, v2, v1, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->invalidate(IIII)V

    move v2, v3

    .line 3059
    goto/16 :goto_0

    .line 3063
    :sswitch_15
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v4, p1, :cond_0

    .line 3064
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 3065
    invoke-virtual {p0, p1, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 3067
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$3200(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v5

    invoke-virtual {v4, v2, v2, v1, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->invalidate(IIII)V

    move v2, v3

    .line 3068
    goto/16 :goto_0

    .line 2861
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 2863
    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_0
        0x80 -> :sswitch_1
        0x1000 -> :sswitch_2
        0x2000 -> :sswitch_3
    .end sparse-switch

    .line 2903
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_5
        0x10 -> :sswitch_6
        0x20 -> :sswitch_7
        0x40 -> :sswitch_8
        0x80 -> :sswitch_9
    .end sparse-switch

    .line 2954
    :sswitch_data_2
    .sparse-switch
        0x10 -> :sswitch_a
        0x40 -> :sswitch_b
        0x80 -> :sswitch_c
    .end sparse-switch

    .line 2984
    :sswitch_data_3
    .sparse-switch
        0x10 -> :sswitch_d
        0x40 -> :sswitch_e
        0x80 -> :sswitch_f
    .end sparse-switch

    .line 3014
    :sswitch_data_4
    .sparse-switch
        0x10 -> :sswitch_10
        0x40 -> :sswitch_11
        0x80 -> :sswitch_12
    .end sparse-switch

    .line 3044
    :sswitch_data_5
    .sparse-switch
        0x10 -> :sswitch_13
        0x40 -> :sswitch_14
        0x80 -> :sswitch_15
    .end sparse-switch
.end method

.method public sendAccessibilityEventForVirtualView(II)V
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    .prologue
    .line 3078
    packed-switch p1, :pswitch_data_0

    .line 3107
    :cond_0
    :goto_0
    return-void

    .line 3080
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->hasVirtualDecrementExButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3082
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v0

    .line 3081
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    goto :goto_0

    .line 3086
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3088
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v0

    .line 3087
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    goto :goto_0

    .line 3092
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualText(I)V

    goto :goto_0

    .line 3095
    :pswitch_3
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3097
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v0

    .line 3096
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    goto :goto_0

    .line 3101
    :pswitch_4
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->hasVirtualIncrementExButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3103
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v0

    .line 3102
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    goto :goto_0

    .line 3078
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
