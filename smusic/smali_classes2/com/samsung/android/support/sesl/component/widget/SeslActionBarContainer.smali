.class public Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;
.super Landroid/widget/FrameLayout;
.source "SeslActionBarContainer.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer$ActionBarBackgroundDrawable;
    }
.end annotation


# instance fields
.field private mActionBarView:Landroid/view/View;

.field mBackground:Landroid/graphics/drawable/Drawable;

.field private mContextView:Landroid/view/View;

.field private mHeight:I

.field mIsSplit:Z

.field mIsStacked:Z

.field private mIsTransitioning:Z

.field mSplitBackground:Landroid/graphics/drawable/Drawable;

.field mStackedBackground:Landroid/graphics/drawable/Drawable;

.field private mTabContainer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    new-instance v3, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer$ActionBarBackgroundDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer$ActionBarBackgroundDrawable;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer$1;)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 67
    sget-object v3, Lcom/samsung/android/support/sesl/R$styleable;->SeslActionBar:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 69
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v3, Lcom/samsung/android/support/sesl/R$styleable;->SeslActionBar_android_background:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 70
    sget v3, Lcom/samsung/android/support/sesl/R$styleable;->SeslActionBar_android_backgroundStacked:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 72
    sget v3, Lcom/samsung/android/support/sesl/R$styleable;->SeslActionBar_android_height:I

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mHeight:I

    .line 74
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->getId()I

    move-result v3

    sget v4, Lcom/samsung/android/support/sesl/R$id;->split_action_bar:I

    if-ne v3, v4, :cond_0

    .line 75
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mIsSplit:Z

    .line 76
    sget v3, Lcom/samsung/android/support/sesl/R$styleable;->SeslActionBar_android_backgroundSplit:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 78
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mIsSplit:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2

    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->setWillNotDraw(Z)V

    .line 82
    return-void

    :cond_2
    move v1, v2

    .line 80
    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mActionBarView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;Landroid/view/View;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->isCollapsed(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private getMeasuredHeightWithMargins(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 235
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 236
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method private isCollapsed(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 231
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 161
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 162
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 171
    :cond_2
    return-void
.end method

.method public getTabContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mTabContainer:Landroid/view/View;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 174
    invoke-super {p0}, Landroid/widget/FrameLayout;->jumpDrawablesToCurrentState()V

    .line 175
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 184
    :cond_2
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 87
    sget v0, Lcom/samsung/android/support/sesl/R$id;->action_bar:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mActionBarView:Landroid/view/View;

    .line 88
    sget v0, Lcom/samsung/android/support/sesl/R$id;->action_context_bar:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mContextView:Landroid/view/View;

    .line 89
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mIsTransitioning:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLayout(ZIIII)V
    .locals 11
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 271
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 273
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 274
    .local v4, "tabContainer":Landroid/view/View;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_3

    const/4 v1, 0x1

    .line 276
    .local v1, "hasTabs":Z
    :goto_0
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->getMeasuredHeight()I

    move-result v0

    .line 278
    .local v0, "containerHeight":I
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 279
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 280
    .local v5, "tabHeight":I
    sub-int v6, v0, v5

    iget v7, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v6, v7

    iget v7, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v7, v0, v7

    invoke-virtual {v4, p2, v6, p4, v7}, Landroid/view/View;->layout(IIII)V

    .line 284
    .end local v0    # "containerHeight":I
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "tabHeight":I
    :cond_0
    const/4 v3, 0x0

    .line 285
    .local v3, "needsInvalidate":Z
    iget-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mIsSplit:Z

    if-eqz v6, :cond_4

    .line 286
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    .line 287
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->getMeasuredHeight()I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 288
    const/4 v3, 0x1

    .line 312
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    .line 313
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->invalidate()V

    .line 315
    :cond_2
    return-void

    .line 274
    .end local v1    # "hasTabs":Z
    .end local v3    # "needsInvalidate":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 291
    .restart local v1    # "hasTabs":Z
    .restart local v3    # "needsInvalidate":Z
    :cond_4
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_5

    .line 292
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_6

    .line 293
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mActionBarView:Landroid/view/View;

    .line 294
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    .line 293
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 302
    :goto_2
    const/4 v3, 0x1

    .line 304
    :cond_5
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mIsStacked:Z

    .line 305
    if-eqz v1, :cond_1

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    .line 306
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    .line 307
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v9

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v10

    .line 306
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 308
    const/4 v3, 0x1

    goto :goto_1

    .line 295
    :cond_6
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mContextView:Landroid/view/View;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mContextView:Landroid/view/View;

    .line 296
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_7

    .line 297
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mContextView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mContextView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mContextView:Landroid/view/View;

    .line 298
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mContextView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    .line 297
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    .line 300
    :cond_7
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2
.end method

.method public onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v5, -0x80000000

    .line 241
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mActionBarView:Landroid/view/View;

    if-nez v3, :cond_0

    .line 242
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    if-ne v3, v5, :cond_0

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mHeight:I

    if-ltz v3, :cond_0

    .line 243
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mHeight:I

    .line 244
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 243
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 246
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 248
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mActionBarView:Landroid/view/View;

    if-nez v3, :cond_2

    .line 267
    :cond_1
    :goto_0
    return-void

    .line 250
    :cond_2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 251
    .local v1, "mode":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v3, :cond_1

    .line 254
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->isCollapsed(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 255
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->getMeasuredHeightWithMargins(Landroid/view/View;)I

    move-result v2

    .line 261
    .local v2, "topMarginForTabs":I
    :goto_1
    if-ne v1, v5, :cond_5

    .line 262
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 263
    .local v0, "maxHeight":I
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 264
    invoke-direct {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->getMeasuredHeightWithMargins(Landroid/view/View;)I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 263
    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->setMeasuredDimension(II)V

    goto :goto_0

    .line 256
    .end local v0    # "maxHeight":I
    .end local v2    # "topMarginForTabs":I
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mContextView:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->isCollapsed(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 257
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mContextView:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->getMeasuredHeightWithMargins(Landroid/view/View;)I

    move-result v2

    .restart local v2    # "topMarginForTabs":I
    goto :goto_1

    .line 259
    .end local v2    # "topMarginForTabs":I
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "topMarginForTabs":I
    goto :goto_1

    .line 262
    :cond_5
    const v0, 0x7fffffff

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 206
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 209
    const/4 v0, 0x1

    return v0
.end method

.method public setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 92
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 94
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 97
    if-eqz p1, :cond_1

    .line 98
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 99
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mActionBarView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 100
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mActionBarView:Landroid/view/View;

    .line 101
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 100
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 104
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mIsSplit:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->setWillNotDraw(Z)V

    .line 106
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->invalidate()V

    .line 107
    return-void

    :cond_3
    move v0, v1

    .line 104
    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public setSplitBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 128
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 129
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 130
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 133
    if-eqz p1, :cond_1

    .line 134
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 135
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mIsSplit:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 136
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 139
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mIsSplit:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->setWillNotDraw(Z)V

    .line 141
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->invalidate()V

    .line 142
    return-void

    :cond_3
    move v0, v1

    .line 139
    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public setStackedBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 110
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 111
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 112
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 115
    if-eqz p1, :cond_1

    .line 116
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 117
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mIsStacked:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 118
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 119
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 118
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 122
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mIsSplit:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->setWillNotDraw(Z)V

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->invalidate()V

    .line 125
    return-void

    :cond_3
    move v0, v1

    .line 122
    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public setTransitioning(Z)V
    .locals 1
    .param p1, "isTransitioning"    # Z

    .prologue
    .line 194
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mIsTransitioning:Z

    .line 195
    if-eqz p1, :cond_0

    const/high16 v0, 0x60000

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->setDescendantFocusability(I)V

    .line 197
    return-void

    .line 195
    :cond_0
    const/high16 v0, 0x40000

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 146
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 147
    if-nez p1, :cond_3

    const/4 v0, 0x1

    .line 148
    .local v0, "isVisible":Z
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 149
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 150
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 151
    :cond_2
    return-void

    .end local v0    # "isVisible":Z
    :cond_3
    move v0, v1

    .line 147
    goto :goto_0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 219
    const/4 v0, 0x0

    return-object v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "type"    # I

    .prologue
    .line 224
    if-eqz p3, :cond_0

    .line 225
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    .line 227
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mIsStacked:Z

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mIsSplit:Z

    if-nez v0, :cond_3

    .line 156
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 155
    :goto_0
    return v0

    .line 156
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
