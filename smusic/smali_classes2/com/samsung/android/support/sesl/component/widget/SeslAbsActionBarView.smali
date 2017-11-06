.class abstract Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;
.super Landroid/view/ViewGroup;
.source "SeslAbsActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView$VisibilityAnimListener;
    }
.end annotation


# static fields
.field private static final FADE_DURATION:I = 0xc8


# instance fields
.field protected mActionMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

.field protected mContentHeight:I

.field private mEatingHover:Z

.field private mEatingTouch:Z

.field protected mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

.field protected final mPopupContext:Landroid/content/Context;

.field protected final mVisAnimListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView$VisibilityAnimListener;

.field protected mVisibilityAnim:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView$VisibilityAnimListener;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView$VisibilityAnimListener;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->mVisAnimListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView$VisibilityAnimListener;

    .line 62
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 63
    .local v0, "tv":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101048d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_0

    .line 65
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->mPopupContext:Landroid/content/Context;

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->mPopupContext:Landroid/content/Context;

    goto :goto_0
.end method

.method static synthetic access$001(Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;
    .param p1, "x1"    # I

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$101(Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;
    .param p1, "x1"    # I

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method protected static next(IIZ)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "val"    # I
    .param p2, "isRtl"    # Z

    .prologue
    .line 256
    if-eqz p2, :cond_0

    sub-int v0, p0, p1

    :goto_0
    return v0

    :cond_0
    add-int v0, p0, p1

    goto :goto_0
.end method


# virtual methods
.method public animateToVisibility(I)V
    .locals 4
    .param p1, "visibility"    # I

    .prologue
    .line 180
    const-wide/16 v2, 0xc8

    invoke-virtual {p0, p1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->setupAnimatorToVisibility(IJ)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v0

    .line 181
    .local v0, "anim":Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->start()V

    .line 182
    return-void
.end method

.method public canShowOverflowMenu()Z
    .locals 1

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dismissPopupMenus()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->mActionMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->mActionMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->dismissPopupMenus()Z

    .line 242
    :cond_0
    return-void
.end method

.method public getAnimatedVisibility()I
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->mVisibilityAnim:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->mVisAnimListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView$VisibilityAnimListener;

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    .line 154
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->getVisibility()I

    move-result v0

    goto :goto_0
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->mContentHeight:I

    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->mActionMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->mActionMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 213
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->mActionMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->mActionMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result v0

    .line 227
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->mActionMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->mActionMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    .line 220
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->mActionMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->mActionMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected measureChildView(Landroid/view/View;III)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "availableWidth"    # I
    .param p3, "childSpecHeight"    # I
    .param p4, "spacing"    # I

    .prologue
    .line 246
    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v0, p3}, Landroid/view/View;->measure(II)V

    .line 249
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p2, v0

    .line 250
    sub-int/2addr p2, p4

    .line 252
    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v5, 0x0

    .line 73
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/android/support/sesl/R$styleable;->SeslActionBar:[I

    const v4, 0x10102ce

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 79
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslActionBar_android_height:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->setContentHeight(I)V

    .line 80
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 82
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->mActionMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->mActionMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 85
    :cond_0
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v5, 0x9

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 119
    .local v0, "action":I
    if-ne v0, v5, :cond_0

    .line 120
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->mEatingHover:Z

    .line 123
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->mEatingHover:Z

    if-nez v2, :cond_1

    .line 124
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 125
    .local v1, "handled":Z
    if-ne v0, v5, :cond_1

    if-nez v1, :cond_1

    .line 126
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->mEatingHover:Z

    .line 130
    .end local v1    # "handled":Z
    :cond_1
    const/16 v2, 0xa

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 132
    :cond_2
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->mEatingHover:Z

    .line 135
    :cond_3
    return v4
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 94
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 95
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 96
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->mEatingTouch:Z

    .line 99
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->mEatingTouch:Z

    if-nez v2, :cond_1

    .line 100
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 101
    .local v1, "handled":Z
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 102
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->mEatingTouch:Z

    .line 106
    .end local v1    # "handled":Z
    :cond_1
    if-eq v0, v3, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 107
    :cond_2
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->mEatingTouch:Z

    .line 110
    :cond_3
    return v3
.end method

.method protected positionChild(Landroid/view/View;IIIZ)I
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "contentHeight"    # I
    .param p5, "reverse"    # Z

    .prologue
    .line 260
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 261
    .local v2, "childWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 262
    .local v0, "childHeight":I
    sub-int v3, p4, v0

    div-int/lit8 v3, v3, 0x2

    add-int v1, p3, v3

    .line 264
    .local v1, "childTop":I
    if-eqz p5, :cond_1

    .line 265
    sub-int v3, p2, v2

    add-int v4, v1, v0

    invoke-virtual {p1, v3, v1, p2, v4}, Landroid/view/View;->layout(IIII)V

    .line 270
    :goto_0
    if-eqz p5, :cond_0

    neg-int v2, v2

    .end local v2    # "childWidth":I
    :cond_0
    return v2

    .line 267
    .restart local v2    # "childWidth":I
    :cond_1
    add-int v3, p2, v2

    add-int v4, v1, v0

    invoke-virtual {p1, p2, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method public postShowOverflowMenu()V
    .locals 1

    .prologue
    .line 202
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView$1;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->post(Ljava/lang/Runnable;)Z

    .line 207
    return-void
.end method

.method public setContentHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 139
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->mContentHeight:I

    .line 140
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->requestLayout()V

    .line 141
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->mVisibilityAnim:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->mVisibilityAnim:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->cancel()V

    .line 190
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 192
    :cond_1
    return-void
.end method

.method public setupAnimatorToVisibility(IJ)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    .locals 4
    .param p1, "visibility"    # I
    .param p2, "duration"    # J

    .prologue
    const/4 v3, 0x0

    .line 158
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->mVisibilityAnim:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    if-eqz v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->mVisibilityAnim:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->cancel()V

    .line 162
    :cond_0
    if-nez p1, :cond_2

    .line 163
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 164
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->setAlpha(F)V

    .line 167
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->animate(Landroid/view/View;)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->alpha(F)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v0

    .line 168
    .local v0, "anim":Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->setDuration(J)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    .line 169
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->mVisAnimListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v2, v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView$VisibilityAnimListener;->withFinalVisibility(Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;I)Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView$VisibilityAnimListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->setListener(Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-object v1, v0

    .line 175
    .end local v0    # "anim":Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    .local v1, "anim":Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    :goto_0
    return-object v1

    .line 172
    .end local v1    # "anim":Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    :cond_2
    invoke-static {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->animate(Landroid/view/View;)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->alpha(F)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v0

    .line 173
    .restart local v0    # "anim":Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->setDuration(J)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    .line 174
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->mVisAnimListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v2, v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView$VisibilityAnimListener;->withFinalVisibility(Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;I)Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView$VisibilityAnimListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->setListener(Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-object v1, v0

    .line 175
    .end local v0    # "anim":Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    .restart local v1    # "anim":Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    goto :goto_0
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->mActionMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->mActionMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    .line 198
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
