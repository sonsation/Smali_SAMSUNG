.class Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "SemNumberPickerSpinnerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;
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

.field final synthetic this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;


# direct methods
.method constructor <init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    .prologue
    .line 2788
    iput-object p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    .line 2801
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 2803
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 2805
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2788
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

    .line 3267
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    .line 3268
    .local v3, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    const-class v5, Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 3269
    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v5, v5, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 3270
    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v5, v5, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    .line 3272
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->hasVirtualDecrementExButton()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3273
    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v5, v5, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v3, v5, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 3275
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3276
    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v5, v5, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 3278
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v5, v5, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    const/4 v6, 0x3

    invoke-virtual {v3, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 3279
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3280
    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v5, v5, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    const/4 v6, 0x4

    invoke-virtual {v3, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 3282
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->hasVirtualIncrementExButton()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3283
    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v5, v5, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    const/4 v6, 0x5

    invoke-virtual {v3, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 3286
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v5, v5, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v5}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 3287
    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v5, v5, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v5}, Landroid/view/View;->isEnabled()Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 3288
    invoke-virtual {v3, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 3291
    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v5, v5, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v5

    .line 3290
    iget v0, v5, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 3293
    .local v0, "applicationScale":F
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 3294
    .local v1, "boundsInParent":Landroid/graphics/Rect;
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3295
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 3296
    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 3298
    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v5, v5, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v5}, Lcom/samsung/android/widget/SemNumberPicker;->isVisibleToUserWrapper()Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 3300
    move-object v2, v1

    .line 3301
    .local v2, "boundsInScreen":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 3302
    .local v4, "locationOnScreen":[I
    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v5, v5, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v5, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 3303
    const/4 v5, 0x0

    aget v5, v4, v5

    aget v6, v4, v7

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 3304
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 3305
    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 3307
    iget v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v5, v8, :cond_4

    .line 3308
    const/16 v5, 0x40

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3310
    :cond_4
    iget v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v5, v8, :cond_5

    .line 3311
    const/16 v5, 0x80

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3313
    :cond_5
    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v5, v5, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v5}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 3314
    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getWrapSelectorWheel()Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v6}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMaxValue()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 3315
    :cond_6
    const/16 v5, 0x1000

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3317
    :cond_7
    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getWrapSelectorWheel()Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v6}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v6

    if-le v5, v6, :cond_9

    .line 3318
    :cond_8
    const/16 v5, 0x2000

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3322
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

    .line 3233
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 3234
    .local v2, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    const-class v4, Landroid/widget/Button;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 3235
    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v4, v4, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 3236
    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v4, v4, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2, v4, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 3237
    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v4, v4, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 3238
    invoke-virtual {v2, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 3239
    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 3240
    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 3241
    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v4, v4, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 3242
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 3243
    .local v0, "boundsInParent":Landroid/graphics/Rect;
    invoke-virtual {v0, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    .line 3244
    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v4, v4, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4, v0}, Lcom/samsung/android/widget/SemNumberPicker;->isVisibleToUserWrapper(Landroid/graphics/Rect;)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 3245
    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 3246
    move-object v1, v0

    .line 3247
    .local v1, "boundsInScreen":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 3248
    .local v3, "locationOnScreen":[I
    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v4, v4, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 3249
    const/4 v4, 0x0

    aget v4, v3, v4

    aget v5, v3, v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 3250
    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 3252
    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v4, p1, :cond_0

    .line 3253
    const/16 v4, 0x40

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3255
    :cond_0
    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v4, p1, :cond_1

    .line 3256
    const/16 v4, 0x80

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3258
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v4, v4, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3259
    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3262
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

    .line 3207
    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get10(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 3208
    .local v2, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v4, v4, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2, v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 3209
    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v4, v5, :cond_0

    .line 3210
    const/16 v4, 0x40

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3212
    :cond_0
    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v4, v5, :cond_1

    .line 3213
    const/16 v4, 0x80

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3215
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get11(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3216
    const-class v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 3217
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualCurrentButtonText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 3219
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 3220
    .local v0, "boundsInParent":Landroid/graphics/Rect;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3221
    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v4, v4, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4, v0}, Lcom/samsung/android/widget/SemNumberPicker;->isVisibleToUserWrapper(Landroid/graphics/Rect;)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 3222
    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 3223
    move-object v1, v0

    .line 3224
    .local v1, "boundsInScreen":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 3225
    .local v3, "locationOnScreen":[I
    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v4, v4, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 3226
    const/4 v4, 0x0

    aget v4, v3, v4

    const/4 v5, 0x1

    aget v5, v3, v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 3227
    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 3228
    return-object v2
.end method

.method private findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V
    .locals 5
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
    const/4 v4, 0x3

    .line 3159
    packed-switch p2, :pswitch_data_0

    .line 3158
    :cond_0
    return-void

    .line 3161
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualDecrementExButtonText()Ljava/lang/String;

    move-result-object v2

    .line 3162
    .local v2, "text":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3163
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 3162
    if-eqz v3, :cond_1

    .line 3164
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3166
    :cond_1
    return-void

    .line 3168
    .end local v2    # "text":Ljava/lang/String;
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v2

    .line 3169
    .restart local v2    # "text":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3170
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 3169
    if-eqz v3, :cond_2

    .line 3171
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3173
    :cond_2
    return-void

    .line 3175
    .end local v2    # "text":Ljava/lang/String;
    :pswitch_2
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get10(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 3176
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3177
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 3176
    if-eqz v3, :cond_3

    .line 3178
    invoke-virtual {p0, v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3179
    return-void

    .line 3181
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get10(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 3182
    .local v0, "contentDesc":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3183
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 3182
    if-eqz v3, :cond_0

    .line 3184
    invoke-virtual {p0, v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3185
    return-void

    .line 3189
    .end local v0    # "contentDesc":Ljava/lang/CharSequence;
    .end local v1    # "text":Ljava/lang/CharSequence;
    :pswitch_3
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v2

    .line 3190
    .restart local v2    # "text":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 3191
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 3190
    if-eqz v3, :cond_4

    .line 3192
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3194
    :cond_4
    return-void

    .line 3196
    .end local v2    # "text":Ljava/lang/String;
    :pswitch_4
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualIncrementExButtonText()Ljava/lang/String;

    move-result-object v2

    .line 3197
    .restart local v2    # "text":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 3198
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 3197
    if-eqz v3, :cond_5

    .line 3199
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3201
    :cond_5
    return-void

    .line 3159
    nop

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
    const/4 v2, 0x0

    .line 3390
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get24(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v0

    .line 3391
    .local v0, "value":I
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get25(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3392
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-wrap4(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;I)I

    move-result v0

    .line 3394
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get16(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 3395
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get7(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-wrap5(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3396
    const-string/jumbo v2, ", "

    .line 3395
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3396
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get19(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Ljava/lang/String;

    move-result-object v2

    .line 3395
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3396
    const-string/jumbo v2, " "

    .line 3395
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3396
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get7(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get17(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v3

    sub-int v3, v0, v3

    aget-object v1, v1, v3

    goto :goto_0

    .line 3398
    :cond_2
    return-object v2
.end method

.method private getVirtualDecrementButtonText()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 3354
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get24(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 3355
    .local v0, "value":I
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get25(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3356
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-wrap4(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;I)I

    move-result v0

    .line 3358
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get17(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 3359
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get7(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-wrap5(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3360
    const-string/jumbo v2, ", "

    .line 3359
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3360
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get19(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Ljava/lang/String;

    move-result-object v2

    .line 3359
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3360
    const-string/jumbo v2, ", "

    .line 3359
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3360
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get7(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get17(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v3

    sub-int v3, v0, v3

    aget-object v1, v1, v3

    goto :goto_0

    .line 3362
    :cond_2
    return-object v2
.end method

.method private getVirtualDecrementExButtonText()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 3342
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get24(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v1

    add-int/lit8 v0, v1, -0x2

    .line 3343
    .local v0, "value":I
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get25(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3344
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-wrap4(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;I)I

    move-result v0

    .line 3346
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get17(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 3347
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get7(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-wrap5(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3348
    const-string/jumbo v2, ", "

    .line 3347
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3348
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get19(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Ljava/lang/String;

    move-result-object v2

    .line 3347
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3348
    const-string/jumbo v2, ", "

    .line 3347
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3348
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get7(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get17(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v3

    sub-int v3, v0, v3

    aget-object v1, v1, v3

    goto :goto_0

    .line 3350
    :cond_2
    return-object v2
.end method

.method private getVirtualIncrementButtonText()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 3366
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get24(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 3367
    .local v0, "value":I
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get25(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3368
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-wrap4(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;I)I

    move-result v0

    .line 3370
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get16(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 3371
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get7(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-wrap5(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3372
    const-string/jumbo v2, ", "

    .line 3371
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3372
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get19(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Ljava/lang/String;

    move-result-object v2

    .line 3371
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3372
    const-string/jumbo v2, ", "

    .line 3371
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3372
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get7(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get17(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v3

    sub-int v3, v0, v3

    aget-object v1, v1, v3

    goto :goto_0

    .line 3374
    :cond_2
    return-object v2
.end method

.method private getVirtualIncrementExButtonText()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 3378
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get24(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v1

    add-int/lit8 v0, v1, 0x2

    .line 3379
    .local v0, "value":I
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get25(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3380
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-wrap4(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;I)I

    move-result v0

    .line 3382
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get16(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 3383
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get7(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-wrap5(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3384
    const-string/jumbo v2, ", "

    .line 3383
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3384
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get19(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Ljava/lang/String;

    move-result-object v2

    .line 3383
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3384
    const-string/jumbo v2, ", "

    .line 3383
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3384
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get7(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get17(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v3

    sub-int v3, v0, v3

    aget-object v1, v1, v3

    goto :goto_0

    .line 3386
    :cond_2
    return-object v2
.end method

.method private hasVirtualDecrementButton()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3330
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getWrapSelectorWheel()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v2

    if-le v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasVirtualDecrementExButton()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3326
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getWrapSelectorWheel()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-le v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasVirtualIncrementButton()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3334
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getWrapSelectorWheel()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMaxValue()I

    move-result v2

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasVirtualIncrementExButton()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3338
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getWrapSelectorWheel()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMaxValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    :cond_0
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
    .line 3146
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v1, v1, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3147
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 3148
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    const-class v1, Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 3149
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v1, v1, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 3150
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3151
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v1, v1, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    .line 3152
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v1, v1, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    .line 3153
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v1, v1, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 3145
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method

.method private sendAccessibilityEventForVirtualText(I)V
    .locals 3
    .param p1, "eventType"    # I

    .prologue
    .line 3135
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v1, v1, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3136
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 3137
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get10(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3138
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get10(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3139
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v1, v1, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    .line 3140
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v1, v1, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 3134
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 17
    .param p1, "virtualViewId"    # I

    .prologue
    .line 2809
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v1, v1, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v14

    .line 2810
    .local v14, "mLeft":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v1, v1, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v15

    .line 2811
    .local v15, "mRight":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v1, v1, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v16

    .line 2812
    .local v16, "mTop":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v1, v1, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v13

    .line 2813
    .local v13, "mBottom":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v1, v1, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v4

    .line 2814
    .local v4, "mScrollX":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v1, v1, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v5

    .line 2816
    .local v5, "mScrollY":I
    packed-switch p1, :pswitch_data_0

    .line 2846
    :pswitch_0
    invoke-super/range {p0 .. p1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    return-object v1

    .line 2819
    :pswitch_1
    sub-int v1, v15, v14

    add-int/2addr v1, v4

    sub-int v2, v13, v16

    add-int/2addr v2, v5

    .line 2818
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v1, v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    return-object v1

    .line 2822
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualDecrementExButtonText()Ljava/lang/String;

    move-result-object v3

    .line 2823
    sub-int v1, v15, v14

    add-int v6, v4, v1

    .line 2824
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get18(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get20(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v2

    add-int v7, v1, v2

    .line 2821
    const/4 v2, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    return-object v1

    .line 2827
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get18(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v1

    add-int v10, v1, v5

    .line 2828
    sub-int v1, v15, v14

    add-int v11, v4, v1

    .line 2829
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get23(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get20(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v2

    add-int v12, v1, v2

    .line 2826
    const/4 v7, 0x2

    move-object/from16 v6, p0

    move v9, v4

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    return-object v1

    .line 2832
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get23(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get20(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v2

    add-int/2addr v1, v2

    .line 2833
    sub-int v2, v15, v14

    add-int/2addr v2, v4

    .line 2834
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get4(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v6}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get20(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v6

    sub-int/2addr v3, v6

    .line 2831
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibiltyNodeInfoForInputText(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    return-object v1

    .line 2837
    :pswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v8

    .line 2838
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get4(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get20(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v2

    sub-int v10, v1, v2

    .line 2839
    sub-int v1, v15, v14

    add-int v11, v4, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get3(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v12

    .line 2836
    const/4 v7, 0x4

    move-object/from16 v6, p0

    move v9, v4

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    return-object v1

    .line 2842
    :pswitch_6
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualIncrementExButtonText()Ljava/lang/String;

    move-result-object v8

    .line 2843
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get3(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get20(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v2

    sub-int v10, v1, v2

    .line 2844
    sub-int v1, v15, v14

    add-int v11, v4, v1

    sub-int v1, v13, v16

    add-int v12, v5, v1

    .line 2841
    const/4 v7, 0x5

    move-object/from16 v6, p0

    move v9, v4

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    return-object v1

    .line 2816
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
    .line 2852
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2853
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 2855
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 2856
    .local v1, "searchedLowerCase":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2857
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    packed-switch p2, :pswitch_data_0

    .line 2881
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 2860
    :pswitch_1
    const/4 v2, 0x1

    .line 2859
    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 2862
    const/4 v2, 0x2

    .line 2861
    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 2864
    const/4 v2, 0x3

    .line 2863
    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 2866
    const/4 v2, 0x4

    .line 2865
    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 2868
    const/4 v2, 0x5

    .line 2867
    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 2869
    return-object v0

    .line 2876
    :pswitch_2
    invoke-direct {p0, v1, p2, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 2878
    return-object v0

    .line 2857
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

    const v4, 0x8000

    const/high16 v3, -0x80000000

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2886
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get13(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2887
    return v5

    .line 2890
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v1

    .line 2891
    .local v1, "mRight":I
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2893
    .local v0, "mBottom":I
    packed-switch p1, :pswitch_data_0

    .line 3099
    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result v2

    return v2

    .line 2895
    :pswitch_1
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 2897
    :sswitch_0
    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v2, p1, :cond_1

    .line 2898
    iput p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2899
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 2900
    return v6

    .line 2902
    :cond_1
    return v5

    .line 2904
    :sswitch_1
    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v2, p1, :cond_2

    .line 2905
    iput v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2906
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 2907
    return v6

    .line 2909
    :cond_2
    return v5

    .line 2912
    :sswitch_2
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2913
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getWrapSelectorWheel()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMaxValue()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 2914
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2, v6}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-wrap6(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Z)V

    .line 2915
    return v6

    .line 2917
    :cond_4
    return v5

    .line 2919
    :sswitch_3
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2920
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getWrapSelectorWheel()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v3

    if-le v2, v3, :cond_6

    .line 2921
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2, v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-wrap6(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Z)V

    .line 2922
    return v6

    .line 2924
    :cond_6
    return v5

    .line 2928
    :pswitch_2
    sparse-switch p2, :sswitch_data_1

    .line 2974
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get10(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v2

    return v2

    .line 2930
    :sswitch_4
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get10(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2977
    :cond_7
    return v5

    .line 2931
    :cond_8
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get10(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v2

    return v2

    .line 2935
    :sswitch_5
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get10(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2936
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get10(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2937
    return v6

    .line 2939
    :cond_9
    return v5

    .line 2942
    :sswitch_6
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2943
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->performClick()V

    .line 2944
    return v6

    .line 2946
    :cond_a
    return v5

    .line 2949
    :sswitch_7
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2950
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->performLongClick()V

    .line 2951
    return v6

    .line 2953
    :cond_b
    return v5

    .line 2956
    :sswitch_8
    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v2, p1, :cond_c

    .line 2957
    iput p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2958
    invoke-virtual {p0, p1, v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2960
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get23(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get4(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v4

    invoke-virtual {v2, v5, v3, v1, v4}, Landroid/view/View;->invalidate(IIII)V

    .line 2961
    return v6

    .line 2963
    :cond_c
    return v5

    .line 2965
    :sswitch_9
    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v2, p1, :cond_d

    .line 2966
    iput v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2967
    invoke-virtual {p0, p1, v7}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2969
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get23(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get4(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v4

    invoke-virtual {v2, v5, v3, v1, v4}, Landroid/view/View;->invalidate(IIII)V

    .line 2970
    return v6

    .line 2972
    :cond_d
    return v5

    .line 2979
    :pswitch_3
    sparse-switch p2, :sswitch_data_2

    .line 3007
    return v5

    .line 2981
    :sswitch_a
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2982
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2, v6}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-wrap6(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Z)V

    .line 2983
    invoke-virtual {p0, p1, v6}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2985
    return v6

    .line 2987
    :cond_e
    return v5

    .line 2989
    :sswitch_b
    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v2, p1, :cond_f

    .line 2990
    iput p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2991
    invoke-virtual {p0, p1, v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2993
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get4(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get3(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v4

    invoke-virtual {v2, v5, v3, v1, v4}, Landroid/view/View;->invalidate(IIII)V

    .line 2994
    return v6

    .line 2996
    :cond_f
    return v5

    .line 2998
    :sswitch_c
    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v2, p1, :cond_10

    .line 2999
    iput v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 3000
    invoke-virtual {p0, p1, v7}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 3002
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get4(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get3(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v4

    invoke-virtual {v2, v5, v3, v1, v4}, Landroid/view/View;->invalidate(IIII)V

    .line 3003
    return v6

    .line 3005
    :cond_10
    return v5

    .line 3009
    :pswitch_4
    sparse-switch p2, :sswitch_data_3

    .line 3037
    return v5

    .line 3011
    :sswitch_d
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 3012
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2, v6}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-wrap7(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Z)V

    .line 3013
    invoke-virtual {p0, p1, v6}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 3015
    return v6

    .line 3017
    :cond_11
    return v5

    .line 3019
    :sswitch_e
    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v2, p1, :cond_12

    .line 3020
    iput p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 3021
    invoke-virtual {p0, p1, v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 3023
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get3(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v3

    invoke-virtual {v2, v5, v3, v1, v0}, Landroid/view/View;->invalidate(IIII)V

    .line 3024
    return v6

    .line 3026
    :cond_12
    return v5

    .line 3028
    :sswitch_f
    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v2, p1, :cond_13

    .line 3029
    iput v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 3030
    invoke-virtual {p0, p1, v7}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 3032
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get3(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v3

    invoke-virtual {v2, v5, v3, v1, v0}, Landroid/view/View;->invalidate(IIII)V

    .line 3033
    return v6

    .line 3035
    :cond_13
    return v5

    .line 3039
    :pswitch_5
    sparse-switch p2, :sswitch_data_4

    .line 3067
    return v5

    .line 3041
    :sswitch_10
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 3042
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2, v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-wrap6(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Z)V

    .line 3043
    invoke-virtual {p0, p1, v6}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 3045
    return v6

    .line 3047
    :cond_14
    return v5

    .line 3049
    :sswitch_11
    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v2, p1, :cond_15

    .line 3050
    iput p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 3051
    invoke-virtual {p0, p1, v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 3053
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get18(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get23(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v4

    invoke-virtual {v2, v5, v3, v1, v4}, Landroid/view/View;->invalidate(IIII)V

    .line 3054
    return v6

    .line 3056
    :cond_15
    return v5

    .line 3058
    :sswitch_12
    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v2, p1, :cond_16

    .line 3059
    iput v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 3060
    invoke-virtual {p0, p1, v7}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 3062
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get18(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get23(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v4

    invoke-virtual {v2, v5, v3, v1, v4}, Landroid/view/View;->invalidate(IIII)V

    .line 3063
    return v6

    .line 3065
    :cond_16
    return v5

    .line 3069
    :pswitch_6
    sparse-switch p2, :sswitch_data_5

    .line 3097
    return v5

    .line 3071
    :sswitch_13
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 3072
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2, v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-wrap7(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Z)V

    .line 3073
    invoke-virtual {p0, p1, v6}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 3075
    return v6

    .line 3077
    :cond_17
    return v5

    .line 3079
    :sswitch_14
    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v2, p1, :cond_18

    .line 3080
    iput p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 3081
    invoke-virtual {p0, p1, v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 3083
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get18(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v3

    invoke-virtual {v2, v5, v5, v1, v3}, Landroid/view/View;->invalidate(IIII)V

    .line 3084
    return v6

    .line 3086
    :cond_18
    return v5

    .line 3088
    :sswitch_15
    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v2, p1, :cond_19

    .line 3089
    iput v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 3090
    invoke-virtual {p0, p1, v7}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 3092
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get18(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v3

    invoke-virtual {v2, v5, v5, v1, v3}, Landroid/view/View;->invalidate(IIII)V

    .line 3093
    return v6

    .line 3095
    :cond_19
    return v5

    .line 2893
    nop

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

    .line 2895
    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_0
        0x80 -> :sswitch_1
        0x1000 -> :sswitch_2
        0x2000 -> :sswitch_3
    .end sparse-switch

    .line 2928
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_5
        0x10 -> :sswitch_6
        0x20 -> :sswitch_7
        0x40 -> :sswitch_8
        0x80 -> :sswitch_9
    .end sparse-switch

    .line 2979
    :sswitch_data_2
    .sparse-switch
        0x10 -> :sswitch_a
        0x40 -> :sswitch_b
        0x80 -> :sswitch_c
    .end sparse-switch

    .line 3009
    :sswitch_data_3
    .sparse-switch
        0x10 -> :sswitch_d
        0x40 -> :sswitch_e
        0x80 -> :sswitch_f
    .end sparse-switch

    .line 3039
    :sswitch_data_4
    .sparse-switch
        0x10 -> :sswitch_10
        0x40 -> :sswitch_11
        0x80 -> :sswitch_12
    .end sparse-switch

    .line 3069
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
    .line 3103
    packed-switch p1, :pswitch_data_0

    .line 3102
    :cond_0
    :goto_0
    return-void

    .line 3105
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->hasVirtualDecrementExButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3107
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v0

    .line 3106
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    goto :goto_0

    .line 3111
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3113
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v0

    .line 3112
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    goto :goto_0

    .line 3117
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualText(I)V

    goto :goto_0

    .line 3120
    :pswitch_3
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3122
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v0

    .line 3121
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    goto :goto_0

    .line 3126
    :pswitch_4
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->hasVirtualIncrementExButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3128
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v0

    .line 3127
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    goto :goto_0

    .line 3103
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
