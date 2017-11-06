.class public Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;
.super Landroid/view/ViewGroup;
.source "SeslActionBarOverlayLayout.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/widget/SeslDecorContentParent;
.implements Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParent;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$ActionBarVisibilityCallback;,
        Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$LayoutParams;
    }
.end annotation


# static fields
.field static final ATTRS:[I

.field private static final TAG:Ljava/lang/String; = "ActionBarOverlayLayout"


# instance fields
.field private final ACTION_BAR_ANIMATE_DELAY:I

.field private mActionBarHeight:I

.field mActionBarTop:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

.field private mActionBarVisibilityCallback:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$ActionBarVisibilityCallback;

.field private final mAddActionBarHideOffset:Ljava/lang/Runnable;

.field mAnimatingForFling:Z

.field private final mBaseContentInsets:Landroid/graphics/Rect;

.field private final mBaseInnerInsets:Landroid/graphics/Rect;

.field private mContent:Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;

.field private final mContentInsets:Landroid/graphics/Rect;

.field mCurrentActionBarTopAnimator:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

.field private mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

.field private mFlingEstimator:Landroid/widget/OverScroller;

.field private mHideOnContentScroll:Z

.field private mHideOnContentScrollReference:I

.field private mIgnoreWindowContentOverlay:Z

.field private final mInnerInsets:Landroid/graphics/Rect;

.field private final mLastBaseContentInsets:Landroid/graphics/Rect;

.field private final mLastInnerInsets:Landroid/graphics/Rect;

.field private mLastSystemUiVisibility:I

.field private mOverlayMode:Z

.field private final mParentHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParentHelper;

.field private final mRemoveActionBarHideOffset:Ljava/lang/Runnable;

.field final mTopAnimatorListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;

.field private mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

.field private mWindowVisibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->ATTRS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10102eb
        0x1010059
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mWindowVisibility:I

    .line 80
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    .line 82
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    .line 84
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    .line 85
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    .line 89
    const/16 v0, 0x258

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->ACTION_BAR_ANIMATE_DELAY:I

    .line 95
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$1;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mTopAnimatorListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;

    .line 110
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$2;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    .line 118
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$3;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    .line 140
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->init(Landroid/content/Context;)V

    .line 142
    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParentHelper;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mParentHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParentHelper;

    .line 143
    return-void
.end method

.method private addActionBarHideOffset()V
    .locals 1

    .prologue
    .line 584
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 585
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 586
    return-void
.end method

.method private applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/graphics/Rect;
    .param p3, "left"    # Z
    .param p4, "top"    # Z
    .param p5, "bottom"    # Z
    .param p6, "right"    # Z

    .prologue
    .line 254
    const/4 v0, 0x0

    .line 255
    .local v0, "changed":Z
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$LayoutParams;

    .line 256
    .local v1, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$LayoutParams;
    if-eqz p3, :cond_0

    iget v2, v1, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$LayoutParams;->leftMargin:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-eq v2, v3, :cond_0

    .line 257
    const/4 v0, 0x1

    .line 258
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iput v2, v1, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$LayoutParams;->leftMargin:I

    .line 260
    :cond_0
    if-eqz p4, :cond_1

    iget v2, v1, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$LayoutParams;->topMargin:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-eq v2, v3, :cond_1

    .line 261
    const/4 v0, 0x1

    .line 262
    iget v2, p2, Landroid/graphics/Rect;->top:I

    iput v2, v1, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$LayoutParams;->topMargin:I

    .line 264
    :cond_1
    if-eqz p6, :cond_2

    iget v2, v1, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$LayoutParams;->rightMargin:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-eq v2, v3, :cond_2

    .line 265
    const/4 v0, 0x1

    .line 266
    iget v2, p2, Landroid/graphics/Rect;->right:I

    iput v2, v1, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$LayoutParams;->rightMargin:I

    .line 268
    :cond_2
    if-eqz p5, :cond_3

    iget v2, v1, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-eq v2, v3, :cond_3

    .line 269
    const/4 v0, 0x1

    .line 270
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    .line 272
    :cond_3
    return v0
.end method

.method private getDecorToolbar(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 525
    instance-of v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    if-eqz v0, :cond_0

    .line 526
    check-cast p1, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    .line 528
    .end local p1    # "view":Landroid/view/View;
    :goto_0
    return-object p1

    .line 527
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    instance-of v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    if-eqz v0, :cond_1

    .line 528
    check-cast p1, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getWrapper()Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    move-result-object p1

    goto :goto_0

    .line 530
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t make a decor toolbar out of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 531
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v4, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->ATTRS:[I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 147
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mActionBarHeight:I

    .line 148
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    .line 149
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->setWillNotDraw(Z)V

    .line 150
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x13

    if-ge v1, v4, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    .line 155
    new-instance v1, Landroid/widget/OverScroller;

    invoke-direct {v1, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mFlingEstimator:Landroid/widget/OverScroller;

    .line 156
    return-void

    :cond_0
    move v1, v3

    .line 149
    goto :goto_0

    :cond_1
    move v2, v3

    .line 152
    goto :goto_1
.end method

.method private postAddActionBarHideOffset()V
    .locals 4

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 575
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    const-wide/16 v2, 0x258

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 576
    return-void
.end method

.method private postRemoveActionBarHideOffset()V
    .locals 4

    .prologue
    .line 569
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 570
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    const-wide/16 v2, 0x258

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 571
    return-void
.end method

.method private removeActionBarHideOffset()V
    .locals 1

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 580
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 581
    return-void
.end method

.method private shouldHideActionBarOnFling(FF)Z
    .locals 10
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    const/4 v1, 0x0

    .line 589
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mFlingEstimator:Landroid/widget/OverScroller;

    float-to-int v4, p2

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    move v2, v1

    move v3, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 590
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mFlingEstimator:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v9

    .line 591
    .local v9, "finalY":I
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mActionBarTop:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->getHeight()I

    move-result v0

    if-le v9, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public canShowOverflowMenu()Z
    .locals 1

    .prologue
    .line 665
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->pullChildren()V

    .line 666
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->canShowOverflowMenu()Z

    move-result v0

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 321
    instance-of v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$LayoutParams;

    return v0
.end method

.method public dismissPopups()V
    .locals 1

    .prologue
    .line 719
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->pullChildren()V

    .line 720
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->dismissPopupMenus()V

    .line 721
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 432
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 433
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    if-nez v2, :cond_0

    .line 434
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mActionBarTop:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mActionBarTop:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    .line 435
    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->getBottom()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mActionBarTop:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->getTranslationY()F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v0, v2

    .line 437
    .local v0, "top":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    .line 438
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v0

    .line 437
    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 439
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 441
    .end local v0    # "top":I
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 435
    goto :goto_0
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 10
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 277
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->pullChildren()V

    .line 279
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->getWindowSystemUiVisibility()I

    move-result v9

    .line 280
    .local v9, "vis":I
    and-int/lit16 v0, v9, 0x100

    if-eqz v0, :cond_2

    move v8, v3

    .line 281
    .local v8, "stable":Z
    :goto_0
    move-object v2, p1

    .line 284
    .local v2, "systemInsets":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mActionBarTop:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    move-object v0, p0

    move v4, v3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v7

    .line 286
    .local v7, "changed":Z
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 287
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-static {p0, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslViewUtils;->computeFitSystemWindows(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 288
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    const/4 v7, 0x1

    .line 290
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 293
    :cond_0
    if-eqz v7, :cond_1

    .line 294
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->requestLayout()V

    .line 301
    :cond_1
    return v3

    .end local v2    # "systemInsets":Landroid/graphics/Rect;
    .end local v7    # "changed":Z
    .end local v8    # "stable":Z
    :cond_2
    move v8, v5

    .line 280
    goto :goto_0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->generateDefaultLayoutParams()Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 306
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 316
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 311
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getActionBarHideOffset()I
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mActionBarTop:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mActionBarTop:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    neg-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mParentHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParentHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 608
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->pullChildren()V

    .line 609
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method haltActionBarHideOffsetAnimations()V
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 562
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 563
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->cancel()V

    .line 566
    :cond_0
    return-void
.end method

.method public hasIcon()Z
    .locals 1

    .prologue
    .line 635
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->pullChildren()V

    .line 636
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->hasIcon()Z

    move-result v0

    return v0
.end method

.method public hasLogo()Z
    .locals 1

    .prologue
    .line 641
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->pullChildren()V

    .line 642
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->hasLogo()Z

    move-result v0

    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 689
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->pullChildren()V

    .line 690
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public initFeature(I)V
    .locals 1
    .param p1, "windowFeature"    # I

    .prologue
    .line 614
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->pullChildren()V

    .line 615
    sparse-switch p1, :sswitch_data_0

    .line 626
    :goto_0
    return-void

    .line 617
    :sswitch_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->initProgress()V

    goto :goto_0

    .line 620
    :sswitch_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->initIndeterminateProgress()V

    goto :goto_0

    .line 623
    :sswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->setOverlayMode(Z)V

    goto :goto_0

    .line 615
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x5 -> :sswitch_1
        0x6d -> :sswitch_2
    .end sparse-switch
.end method

.method public isHideOnContentScrollEnabled()Z
    .locals 1

    .prologue
    .line 546
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mHideOnContentScroll:Z

    return v0
.end method

.method public isInOverlayMode()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mOverlayMode:Z

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 677
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->pullChildren()V

    .line 678
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->isOverflowMenuShowPending()Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 671
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->pullChildren()V

    .line 672
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->isOverflowMenuShowing()Z

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 216
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 217
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->init(Landroid/content/Context;)V

    .line 218
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->requestApplyInsets()V

    .line 219
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 160
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 161
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 162
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->getChildCount()I

    move-result v3

    .line 408
    .local v3, "count":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->getPaddingLeft()I

    move-result v8

    .line 409
    .local v8, "parentLeft":I
    sub-int v12, p4, p2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->getPaddingRight()I

    move-result v13

    sub-int v9, v12, v13

    .line 411
    .local v9, "parentRight":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->getPaddingTop()I

    move-result v10

    .line 412
    .local v10, "parentTop":I
    sub-int v12, p5, p3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->getPaddingBottom()I

    move-result v13

    sub-int v7, v12, v13

    .line 414
    .local v7, "parentBottom":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_1

    .line 415
    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 416
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_0

    .line 417
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$LayoutParams;

    .line 419
    .local v6, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 420
    .local v11, "width":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 422
    .local v4, "height":I
    iget v12, v6, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int v1, v8, v12

    .line 423
    .local v1, "childLeft":I
    iget v12, v6, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int v2, v10, v12

    .line 425
    .local v2, "childTop":I
    add-int v12, v1, v11

    add-int v13, v2, v4

    invoke-virtual {v0, v1, v2, v12, v13}, Landroid/view/View;->layout(IIII)V

    .line 414
    .end local v1    # "childLeft":I
    .end local v2    # "childTop":I
    .end local v4    # "height":I
    .end local v6    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$LayoutParams;
    .end local v11    # "width":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 428
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 16
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 326
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->pullChildren()V

    .line 328
    const/4 v11, 0x0

    .line 329
    .local v11, "maxHeight":I
    const/4 v12, 0x0

    .line 330
    .local v12, "maxWidth":I
    const/4 v9, 0x0

    .line 332
    .local v9, "childState":I
    const/4 v14, 0x0

    .line 333
    .local v14, "topInset":I
    const/4 v8, 0x0

    .line 335
    .local v8, "bottomInset":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mActionBarTop:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 336
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mActionBarTop:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$LayoutParams;

    .line 337
    .local v10, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mActionBarTop:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    .line 338
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->getMeasuredWidth()I

    move-result v1

    iget v2, v10, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    .line 337
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 339
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mActionBarTop:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    .line 340
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->getMeasuredHeight()I

    move-result v1

    iget v2, v10, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    .line 339
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 341
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mActionBarTop:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    .line 342
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->getMeasuredState()I

    move-result v1

    .line 341
    invoke-static {v9, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslViewUtils;->combineMeasuredStates(II)I

    move-result v9

    .line 344
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->getWindowSystemUiVisibility()I

    move-result v15

    .line 345
    .local v15, "vis":I
    and-int/lit16 v1, v15, 0x100

    if-eqz v1, :cond_2

    const/4 v13, 0x1

    .line 347
    .local v13, "stable":Z
    :goto_0
    if-eqz v13, :cond_3

    .line 350
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mActionBarHeight:I

    .line 361
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 362
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 363
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mOverlayMode:Z

    if-nez v1, :cond_4

    if-nez v13, :cond_4

    .line 364
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v14

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 365
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v8

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 370
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mContent:Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    .line 372
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 376
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mContent:Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->dispatchFitSystemWindows(Landroid/graphics/Rect;)V

    .line 381
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mContent:Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 382
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mContent:Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .end local v10    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$LayoutParams;
    check-cast v10, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$LayoutParams;

    .line 383
    .restart local v10    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mContent:Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;

    .line 384
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->getMeasuredWidth()I

    move-result v1

    iget v2, v10, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    .line 383
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 385
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mContent:Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;

    .line 386
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->getMeasuredHeight()I

    move-result v1

    iget v2, v10, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    .line 385
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 387
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mContent:Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;

    .line 388
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->getMeasuredState()I

    move-result v1

    .line 387
    invoke-static {v9, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslViewUtils;->combineMeasuredStates(II)I

    move-result v9

    .line 391
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v12, v1

    .line 392
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v11, v1

    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 396
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 399
    move/from16 v0, p1

    invoke-static {v12, v0, v9}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    shl-int/lit8 v2, v9, 0x10

    .line 400
    move/from16 v0, p2

    invoke-static {v11, v0, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v2

    .line 398
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->setMeasuredDimension(II)V

    .line 402
    return-void

    .line 345
    .end local v13    # "stable":Z
    :cond_2
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 351
    .restart local v13    # "stable":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mActionBarTop:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 354
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mActionBarTop:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->getMeasuredHeight()I

    move-result v14

    goto/16 :goto_1

    .line 367
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v14

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 368
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v8

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 2
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    const/4 v0, 0x1

    .line 489
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mHideOnContentScroll:Z

    if-eqz v1, :cond_0

    if-nez p4, :cond_1

    .line 490
    :cond_0
    const/4 v0, 0x0

    .line 498
    :goto_0
    return v0

    .line 492
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->shouldHideActionBarOnFling(FF)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 493
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->addActionBarHideOffset()V

    .line 497
    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mAnimatingForFling:Z

    goto :goto_0

    .line 495
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->removeActionBarHideOffset()V

    goto :goto_1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .prologue
    .line 508
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    .prologue
    .line 504
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    .line 469
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mHideOnContentScrollReference:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mHideOnContentScrollReference:I

    .line 470
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mHideOnContentScrollReference:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->setActionBarHideOffset(I)V

    .line 471
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    .line 458
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mParentHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 459
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->getActionBarHideOffset()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mHideOnContentScrollReference:I

    .line 460
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 461
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$ActionBarVisibilityCallback;->onContentScrollStarted()V

    .line 464
    :cond_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    .line 450
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mActionBarTop:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 451
    :cond_0
    const/4 v0, 0x0

    .line 453
    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mHideOnContentScroll:Z

    goto :goto_0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 475
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mHideOnContentScroll:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mAnimatingForFling:Z

    if-nez v0, :cond_0

    .line 476
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mHideOnContentScrollReference:I

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mActionBarTop:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 477
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->postRemoveActionBarHideOffset()V

    .line 482
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v0, :cond_1

    .line 483
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$ActionBarVisibilityCallback;->onContentScrollStopped()V

    .line 485
    :cond_1
    return-void

    .line 479
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->postAddActionBarHideOffset()V

    goto :goto_0
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
    .locals 6
    .param p1, "visible"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 222
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowSystemUiVisibilityChanged(I)V

    .line 223
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->pullChildren()V

    .line 224
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mLastSystemUiVisibility:I

    xor-int v1, v5, p1

    .line 225
    .local v1, "diff":I
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mLastSystemUiVisibility:I

    .line 226
    and-int/lit8 v5, p1, 0x4

    if-nez v5, :cond_3

    move v0, v3

    .line 227
    .local v0, "barVisible":Z
    :goto_0
    and-int/lit16 v5, p1, 0x100

    if-eqz v5, :cond_4

    move v2, v3

    .line 228
    .local v2, "stable":Z
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v5, :cond_1

    .line 232
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-nez v2, :cond_5

    :goto_2
    invoke-interface {v5, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$ActionBarVisibilityCallback;->enableContentAnimations(Z)V

    .line 233
    if-nez v0, :cond_0

    if-nez v2, :cond_6

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$ActionBarVisibilityCallback;->showForSystem()V

    .line 236
    :cond_1
    :goto_3
    and-int/lit16 v3, v1, 0x100

    if-eqz v3, :cond_2

    .line 237
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v3, :cond_2

    .line 238
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->requestApplyInsets()V

    .line 241
    :cond_2
    return-void

    .end local v0    # "barVisible":Z
    .end local v2    # "stable":Z
    :cond_3
    move v0, v4

    .line 226
    goto :goto_0

    .restart local v0    # "barVisible":Z
    :cond_4
    move v2, v4

    .line 227
    goto :goto_1

    .restart local v2    # "stable":Z
    :cond_5
    move v3, v4

    .line 232
    goto :goto_2

    .line 234
    :cond_6
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$ActionBarVisibilityCallback;->hideForSystem()V

    goto :goto_3
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 245
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    .line 246
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mWindowVisibility:I

    .line 247
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$ActionBarVisibilityCallback;->onWindowVisibilityChanged(I)V

    .line 250
    :cond_0
    return-void
.end method

.method pullChildren()V
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mContent:Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;

    if-nez v0, :cond_0

    .line 518
    sget v0, Lcom/samsung/android/support/sesl/R$id;->action_bar_activity_content:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mContent:Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;

    .line 519
    sget v0, Lcom/samsung/android/support/sesl/R$id;->action_bar_container:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mActionBarTop:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    .line 520
    sget v0, Lcom/samsung/android/support/sesl/R$id;->action_bar:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->getDecorToolbar(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    .line 522
    :cond_0
    return-void
.end method

.method public restoreToolbarHierarchyState(Landroid/util/SparseArray;)V
    .locals 1
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
    .line 713
    .local p1, "toolbarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->pullChildren()V

    .line 714
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 715
    return-void
.end method

.method public saveToolbarHierarchyState(Landroid/util/SparseArray;)V
    .locals 1
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
    .line 707
    .local p1, "toolbarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->pullChildren()V

    .line 708
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 709
    return-void
.end method

.method public setActionBarHideOffset(I)V
    .locals 3
    .param p1, "offset"    # I

    .prologue
    .line 554
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 555
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mActionBarTop:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->getHeight()I

    move-result v0

    .line 556
    .local v0, "topHeight":I
    const/4 v1, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 557
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mActionBarTop:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    neg-int v2, p1

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->setTranslationY(F)V

    .line 558
    return-void
.end method

.method public setActionBarVisibilityCallback(Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$ActionBarVisibilityCallback;)V
    .locals 3
    .param p1, "cb"    # Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$ActionBarVisibilityCallback;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$ActionBarVisibilityCallback;

    .line 166
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$ActionBarVisibilityCallback;

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mWindowVisibility:I

    invoke-interface {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$ActionBarVisibilityCallback;->onWindowVisibilityChanged(I)V

    .line 170
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mLastSystemUiVisibility:I

    if-eqz v1, :cond_0

    .line 171
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mLastSystemUiVisibility:I

    .line 172
    .local v0, "newVis":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->onWindowSystemUiVisibilityChanged(I)V

    .line 173
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->requestApplyInsets()V

    .line 176
    .end local v0    # "newVis":I
    :cond_0
    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .locals 1
    .param p1, "hideOnContentScroll"    # Z

    .prologue
    .line 536
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mHideOnContentScroll:Z

    if-eq p1, v0, :cond_0

    .line 537
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mHideOnContentScroll:Z

    .line 538
    if-nez p1, :cond_0

    .line 539
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 540
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->setActionBarHideOffset(I)V

    .line 543
    :cond_0
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 647
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->pullChildren()V

    .line 648
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->setIcon(I)V

    .line 649
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 653
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->pullChildren()V

    .line 654
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 655
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->pullChildren()V

    .line 660
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->setLogo(I)V

    .line 661
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "cb"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;

    .prologue
    .line 701
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->pullChildren()V

    .line 702
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->setMenu(Landroid/view/Menu;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;)V

    .line 703
    return-void
.end method

.method public setMenuPrepared()V
    .locals 1

    .prologue
    .line 695
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->pullChildren()V

    .line 696
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->setMenuPrepared()V

    .line 697
    return-void
.end method

.method public setOverlayMode(Z)V
    .locals 2
    .param p1, "overlayMode"    # Z

    .prologue
    .line 179
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mOverlayMode:Z

    .line 185
    if-eqz p1, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    .line 188
    return-void

    .line 186
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setShowingForActionMode(Z)V
    .locals 0
    .param p1, "showing"    # Z

    .prologue
    .line 213
    return-void
.end method

.method public setUiOptions(I)V
    .locals 0
    .param p1, "uiOptions"    # I

    .prologue
    .line 631
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 1
    .param p1, "cb"    # Landroid/view/Window$Callback;

    .prologue
    .line 596
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->pullChildren()V

    .line 597
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 598
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 602
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->pullChildren()V

    .line 603
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 604
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 445
    const/4 v0, 0x0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 683
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->pullChildren()V

    .line 684
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->showOverflowMenu()Z

    move-result v0

    return v0
.end method
