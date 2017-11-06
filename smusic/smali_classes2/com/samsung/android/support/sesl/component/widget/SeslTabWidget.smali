.class public Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;
.super Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat;
.source "SeslTabWidget.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget$OnTabSelectionChanged;,
        Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget$TabClickListener;
    }
.end annotation


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private mDefaultTextSize:F

.field private mDrawBottomStrips:Z

.field private mImposedTabWidths:[I

.field private mImposedTabsHeight:I

.field private mLeftStrip:Landroid/graphics/drawable/Drawable;

.field private mMaxFontScale:F

.field private mRightStrip:Landroid/graphics/drawable/Drawable;

.field private mSelectedTab:I

.field private mSelectionChangedListener:Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget$OnTabSelectionChanged;

.field private mStripMoved:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 84
    const v0, 0x1010083

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x1

    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mSelectedTab:I

    .line 65
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mDrawBottomStrips:Z

    .line 68
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mBounds:Landroid/graphics/Rect;

    .line 71
    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mImposedTabsHeight:I

    .line 75
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mDefaultTextSize:F

    .line 76
    const v2, 0x3f99999a    # 1.2f

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mMaxFontScale:F

    .line 94
    sget-object v2, Lcom/samsung/android/support/sesl/R$styleable;->SeslTabWidget:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 97
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/samsung/android/support/sesl/R$styleable;->SeslTabWidget_android_tabStripEnabled:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->setStripEnabled(Z)V

    .line 98
    sget v2, Lcom/samsung/android/support/sesl/R$styleable;->SeslTabWidget_android_tabStripLeft:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->setLeftStripDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    sget v2, Lcom/samsung/android/support/sesl/R$styleable;->SeslTabWidget_android_tabStripRight:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->setRightStripDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->initTabWidget()V

    .line 105
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 106
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10102f5

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 107
    iget v2, v1, Landroid/util/TypedValue;->data:I

    sget-object v3, Lcom/samsung/android/support/sesl/R$styleable;->SeslTextAppearance:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 108
    sget v2, Lcom/samsung/android/support/sesl/R$styleable;->SeslTextAppearance_android_textSize:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    .line 110
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 112
    iget v2, v1, Landroid/util/TypedValue;->data:I

    invoke-static {v2}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mDefaultTextSize:F

    .line 113
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;)Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget$OnTabSelectionChanged;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mSelectionChangedListener:Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget$OnTabSelectionChanged;

    return-object v0
.end method

.method private initTabWidget()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 163
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->setChildrenDrawingOrderEnabled(Z)V

    .line 165
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 166
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 173
    .local v1, "resources":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 174
    sget v2, Lcom/samsung/android/support/sesl/R$drawable;->sesl_action_bar_divider:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    .line 177
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    .line 178
    sget v2, Lcom/samsung/android/support/sesl/R$drawable;->sesl_action_bar_divider:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    .line 185
    :cond_1
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->setFocusable(Z)V

    .line 186
    invoke-virtual {p0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 187
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 547
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_0

    .line 548
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat$LayoutParams;

    const/4 v1, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat$LayoutParams;-><init>(IIF)V

    .line 551
    .local v0, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat$LayoutParams;
    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat$LayoutParams;->setMargins(IIII)V

    .line 552
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 556
    .end local v0    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat$LayoutParams;
    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 557
    invoke-virtual {p1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 559
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat;->addView(Landroid/view/View;)V

    .line 563
    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget$TabClickListener;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->getTabCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget$TabClickListener;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;ILcom/samsung/android/support/sesl/component/widget/SeslTabWidget$1;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 564
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 565
    return-void
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 352
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mSelectedTab:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->getTabCount()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 355
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->invalidate()V

    .line 358
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat;->childDrawableStateChanged(Landroid/view/View;)V

    .line 359
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x0

    .line 363
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 366
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->getTabCount()I

    move-result v5

    if-nez v5, :cond_1

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mDrawBottomStrips:Z

    if-eqz v5, :cond_0

    .line 375
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v4

    .line 377
    .local v4, "selectedChild":Landroid/view/View;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    .line 378
    .local v1, "leftStrip":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    .line 380
    .local v3, "rightStrip":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/view/View;->getDrawableState()[I

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 381
    invoke-virtual {v4}, Landroid/view/View;->getDrawableState()[I

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 383
    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mStripMoved:Z

    if-eqz v5, :cond_2

    .line 384
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mBounds:Landroid/graphics/Rect;

    .line 385
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    iput v5, v0, Landroid/graphics/Rect;->left:I

    .line 386
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    iput v5, v0, Landroid/graphics/Rect;->right:I

    .line 387
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->getHeight()I

    move-result v2

    .line 388
    .local v2, "myHeight":I
    iget v5, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 389
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sub-int v6, v2, v6

    iget v7, v0, Landroid/graphics/Rect;->left:I

    .line 388
    invoke-virtual {v1, v5, v6, v7, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 390
    iget v5, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sub-int v6, v2, v6

    .line 391
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->getWidth()I

    move-result v7

    iget v8, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 390
    invoke-virtual {v3, v5, v6, v7, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 392
    iput-boolean v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mStripMoved:Z

    .line 395
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v2    # "myHeight":I
    :cond_2
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 396
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public focusCurrentTab(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 523
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mSelectedTab:I

    .line 526
    .local v0, "oldTab":I
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->setCurrentTab(I)V

    .line 529
    if-eq v0, p1, :cond_0

    .line 530
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 532
    :cond_0
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 482
    const-class v0, Landroid/widget/TabWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 147
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mSelectedTab:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 157
    .end local p2    # "i":I
    :cond_0
    :goto_0
    return p2

    .line 152
    .restart local p2    # "i":I
    :cond_1
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_2

    .line 153
    iget p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mSelectedTab:I

    goto :goto_0

    .line 154
    :cond_2
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mSelectedTab:I

    if-lt p2, v0, :cond_0

    .line 155
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public getChildTabViewAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 259
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->getChildCount()I

    move-result v0

    return v0
.end method

.method public isStripEnabled()Z
    .locals 1

    .prologue
    .line 347
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mDrawBottomStrips:Z

    return v0
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "totalWidth"    # I
    .param p5, "heightMeasureSpec"    # I
    .param p6, "totalHeight"    # I

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 193
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->isMeasureWithLargestChildEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mImposedTabsHeight:I

    if-ltz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mImposedTabWidths:[I

    aget v0, v0, p2

    add-int/2addr v0, p4

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 196
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mImposedTabsHeight:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p5

    .line 200
    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 202
    return-void
.end method

.method measureHorizontal(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 206
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    if-nez v10, :cond_0

    .line 207
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat;->measureHorizontal(II)V

    .line 250
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 213
    .local v9, "width":I
    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 215
    .local v8, "unspecifiedWidth":I
    const/4 v10, -0x1

    iput v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mImposedTabsHeight:I

    .line 216
    invoke-super {p0, v8, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat;->measureHorizontal(II)V

    .line 218
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->getMeasuredWidth()I

    move-result v10

    sub-int v5, v10, v9

    .line 219
    .local v5, "extraWidth":I
    if-lez v5, :cond_6

    .line 220
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->getChildCount()I

    move-result v3

    .line 222
    .local v3, "count":I
    const/4 v1, 0x0

    .line 223
    .local v1, "childCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v3, :cond_2

    .line 224
    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 225
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_1

    .line 223
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 226
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 229
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    if-lez v1, :cond_6

    .line 230
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mImposedTabWidths:[I

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mImposedTabWidths:[I

    array-length v10, v10

    if-eq v10, v3, :cond_4

    .line 231
    :cond_3
    new-array v10, v3, [I

    iput-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mImposedTabWidths:[I

    .line 233
    :cond_4
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v3, :cond_6

    .line 234
    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 235
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_5

    .line 233
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 236
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 237
    .local v2, "childWidth":I
    div-int v4, v5, v1

    .line 238
    .local v4, "delta":I
    const/4 v10, 0x0

    sub-int v11, v2, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 239
    .local v7, "newWidth":I
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mImposedTabWidths:[I

    aput v7, v10, v6

    .line 241
    sub-int v10, v2, v7

    sub-int/2addr v5, v10

    .line 242
    add-int/lit8 v1, v1, -0x1

    .line 243
    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mImposedTabsHeight:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mImposedTabsHeight:I

    goto :goto_4

    .line 249
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v2    # "childWidth":I
    .end local v3    # "count":I
    .end local v4    # "delta":I
    .end local v6    # "i":I
    .end local v7    # "newWidth":I
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat;->measureHorizontal(II)V

    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 582
    if-ne p1, p0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->getTabCount()I

    move-result v2

    if-lez v2, :cond_1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mSelectedTab:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 583
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 587
    :cond_1
    if-eqz p2, :cond_0

    .line 588
    const/4 v0, 0x0

    .line 589
    .local v0, "i":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->getTabCount()I

    move-result v1

    .line 590
    .local v1, "numTabs":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 591
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 592
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->setCurrentTab(I)V

    .line 593
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mSelectionChangedListener:Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget$OnTabSelectionChanged;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget$OnTabSelectionChanged;->onTabSelectionChanged(IZ)V

    .line 594
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 596
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 600
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 118
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat;->onMeasure(II)V

    .line 120
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v2, v6, Landroid/content/res/Configuration;->fontScale:F

    .line 121
    .local v2, "fontScale":F
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mMaxFontScale:F

    cmpl-float v6, v2, v6

    if-lez v6, :cond_0

    .line 122
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mMaxFontScale:F

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->getTabCount()I

    move-result v1

    .line 126
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 127
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 128
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 129
    const v6, 0x1020016

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 130
    .local v5, "vTextView":Landroid/view/View;
    if-eqz v5, :cond_1

    instance-of v6, v5, Landroid/widget/TextView;

    if-eqz v6, :cond_1

    move-object v4, v5

    .line 131
    check-cast v4, Landroid/widget/TextView;

    .line 132
    .local v4, "textView":Landroid/widget/TextView;
    const/4 v6, 0x1

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mDefaultTextSize:F

    mul-float/2addr v7, v2

    invoke-virtual {v4, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 126
    .end local v4    # "textView":Landroid/widget/TextView;
    .end local v5    # "vTextView":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 137
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mStripMoved:Z

    .line 142
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat;->onSizeChanged(IIII)V

    .line 143
    return-void
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 569
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat;->removeAllViews()V

    .line 570
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mSelectedTab:I

    .line 571
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 7
    .param p1, "index"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 427
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->getTabCount()I

    move-result v2

    if-ge p1, v2, :cond_0

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mSelectedTab:I

    if-ne p1, v2, :cond_1

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mSelectedTab:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 432
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setSelected(Z)V

    .line 434
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 435
    .local v0, "tabLayout":Landroid/view/View;
    instance-of v2, v0, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2

    move-object v2, v0

    .line 436
    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-le v2, v4, :cond_2

    .line 437
    check-cast v0, Landroid/widget/LinearLayout;

    .end local v0    # "tabLayout":Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 438
    .local v1, "tabText":Landroid/view/View;
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 439
    check-cast v1, Landroid/widget/TextView;

    .end local v1    # "tabText":Landroid/view/View;
    invoke-virtual {v1, v6, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 444
    :cond_2
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mSelectedTab:I

    .line 445
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setSelected(Z)V

    .line 446
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mStripMoved:Z

    .line 449
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 450
    .restart local v0    # "tabLayout":Landroid/view/View;
    instance-of v2, v0, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_3

    move-object v2, v0

    .line 451
    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-le v2, v4, :cond_3

    .line 452
    check-cast v0, Landroid/widget/LinearLayout;

    .end local v0    # "tabLayout":Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 453
    .restart local v1    # "tabText":Landroid/view/View;
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 454
    check-cast v1, Landroid/widget/TextView;

    .end local v1    # "tabText":Landroid/view/View;
    invoke-virtual {v1, v6, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 459
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 460
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method public setDividerDrawable(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 286
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 276
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 277
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 536
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat;->setEnabled(Z)V

    .line 538
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->getTabCount()I

    move-result v1

    .line 539
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 540
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 541
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 539
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 543
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setLeftStripDrawable(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->setLeftStripDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 307
    return-void
.end method

.method public setLeftStripDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    .line 295
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->requestLayout()V

    .line 296
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->invalidate()V

    .line 297
    return-void
.end method

.method public setRightStripDrawable(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->setRightStripDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 328
    return-void
.end method

.method public setRightStripDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    .line 316
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->requestLayout()V

    .line 317
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->invalidate()V

    .line 318
    return-void
.end method

.method public setStripEnabled(Z)V
    .locals 0
    .param p1, "stripEnabled"    # Z

    .prologue
    .line 338
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mDrawBottomStrips:Z

    .line 339
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->invalidate()V

    .line 340
    return-void
.end method

.method setTabSelectionListener(Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget$OnTabSelectionChanged;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget$OnTabSelectionChanged;

    .prologue
    .line 577
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->mSelectionChangedListener:Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget$OnTabSelectionChanged;

    .line 578
    return-void
.end method
