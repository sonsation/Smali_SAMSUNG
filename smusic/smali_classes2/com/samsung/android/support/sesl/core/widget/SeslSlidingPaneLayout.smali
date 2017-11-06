.class public Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;
.super Landroid/view/ViewGroup;
.source "SeslSlidingPaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DisableLayerRunnable;,
        Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$AccessibilityDelegate;,
        Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$SavedState;,
        Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;,
        Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;,
        Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$SimplePanelSlideListener;,
        Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$PanelSlideListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_FADE_COLOR:I = -0x33333334

.field private static final DEFAULT_OVERHANG_SIZE:I = 0x20

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field private static final TAG:Ljava/lang/String; = "SeslSlidingPaneLayout"


# instance fields
.field private mCanSlide:Z

.field private mCoveredFadeColor:I

.field final mDragHelper:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

.field private mFirstLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field mIsUnableToDrag:Z

.field private final mOverhangSize:I

.field private mPanelSlideListener:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$PanelSlideListener;

.field private mParallaxBy:I

.field private mParallaxOffset:F

.field final mPostedRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DisableLayerRunnable;",
            ">;"
        }
    .end annotation
.end field

.field mPreservedOpenState:Z

.field private mShadowDrawableLeft:Landroid/graphics/drawable/Drawable;

.field private mShadowDrawableRight:Landroid/graphics/drawable/Drawable;

.field mSlideOffset:F

.field mSlideRange:I

.field mSlideableView:Landroid/view/View;

.field private mSliderFadeColor:I

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 239
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 240
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 243
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 244
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x3f000000    # 0.5f

    .line 247
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    const v2, -0x33333334

    iput v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSliderFadeColor:I

    .line 190
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mFirstLayout:Z

    .line 192
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 194
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    .line 249
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 250
    .local v0, "density":F
    const/high16 v2, 0x42000000    # 32.0f

    mul-float/2addr v2, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mOverhangSize:I

    .line 252
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 254
    .local v1, "viewConfig":Landroid/view/ViewConfiguration;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->setWillNotDraw(Z)V

    .line 256
    new-instance v2, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$AccessibilityDelegate;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$AccessibilityDelegate;-><init>(Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 257
    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->setImportantForAccessibility(I)V

    .line 259
    new-instance v2, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;-><init>(Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;)V

    invoke-static {p0, v3, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->create(Landroid/view/ViewGroup;FLcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;)Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mDragHelper:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    .line 260
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mDragHelper:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    const/high16 v3, 0x43c80000    # 400.0f

    mul-float/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->setMinVelocity(F)V

    .line 261
    return-void
.end method

.method private closePane(Landroid/view/View;I)Z
    .locals 2
    .param p1, "pane"    # Landroid/view/View;
    .param p2, "initialVelocity"    # I

    .prologue
    const/4 v0, 0x0

    .line 845
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mFirstLayout:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->smoothSlideTo(FI)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 846
    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mPreservedOpenState:Z

    .line 847
    const/4 v0, 0x1

    .line 849
    :cond_1
    return v0
.end method

.method private dimChildView(Landroid/view/View;FI)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "mag"    # F
    .param p3, "fadeColor"    # I

    .prologue
    const/4 v8, 0x2

    .line 954
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;

    .line 956
    .local v4, "lp":Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;
    const/4 v5, 0x0

    cmpl-float v5, p2, v5

    if-lez v5, :cond_3

    if-eqz p3, :cond_3

    .line 957
    const/high16 v5, -0x1000000

    and-int/2addr v5, p3

    ushr-int/lit8 v0, v5, 0x18

    .line 958
    .local v0, "baseAlpha":I
    int-to-float v5, v0

    mul-float/2addr v5, p2

    float-to-int v3, v5

    .line 959
    .local v3, "imag":I
    shl-int/lit8 v5, v3, 0x18

    const v6, 0xffffff

    and-int/2addr v6, p3

    or-int v1, v5, v6

    .line 960
    .local v1, "color":I
    iget-object v5, v4, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    if-nez v5, :cond_0

    .line 961
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, v4, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    .line 963
    :cond_0
    iget-object v5, v4, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v1, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 964
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v5

    if-eq v5, v8, :cond_1

    .line 965
    iget-object v5, v4, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 967
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->invalidateChildRegion(Landroid/view/View;)V

    .line 976
    .end local v0    # "baseAlpha":I
    .end local v1    # "color":I
    .end local v3    # "imag":I
    :cond_2
    :goto_0
    return-void

    .line 968
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v5

    if-eqz v5, :cond_2

    .line 969
    iget-object v5, v4, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    if-eqz v5, :cond_4

    .line 970
    iget-object v5, v4, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 972
    :cond_4
    new-instance v2, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DisableLayerRunnable;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DisableLayerRunnable;-><init>(Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;Landroid/view/View;)V

    .line 973
    .local v2, "dlr":Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DisableLayerRunnable;
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 974
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private openPane(Landroid/view/View;I)Z
    .locals 2
    .param p1, "pane"    # Landroid/view/View;
    .param p2, "initialVelocity"    # I

    .prologue
    const/4 v0, 0x1

    .line 853
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mFirstLayout:Z

    if-nez v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->smoothSlideTo(FI)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 854
    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mPreservedOpenState:Z

    .line 857
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parallaxOtherViews(F)V
    .locals 12
    .param p1, "slideOffset"    # F

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    .line 1153
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v4

    .line 1154
    .local v4, "isLayoutRtl":Z
    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;

    .line 1155
    .local v7, "slideLp":Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;
    iget-boolean v9, v7, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v9, :cond_2

    if-eqz v4, :cond_1

    iget v9, v7, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->rightMargin:I

    :goto_0
    if-gtz v9, :cond_2

    const/4 v1, 0x1

    .line 1157
    .local v1, "dimViews":Z
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getChildCount()I

    move-result v0

    .line 1158
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_6

    .line 1159
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1160
    .local v8, "v":Landroid/view/View;
    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-ne v8, v9, :cond_3

    .line 1158
    :cond_0
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1155
    .end local v0    # "childCount":I
    .end local v1    # "dimViews":Z
    .end local v3    # "i":I
    .end local v8    # "v":Landroid/view/View;
    :cond_1
    iget v9, v7, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1162
    .restart local v0    # "childCount":I
    .restart local v1    # "dimViews":Z
    .restart local v3    # "i":I
    .restart local v8    # "v":Landroid/view/View;
    :cond_3
    iget v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mParallaxOffset:F

    sub-float v9, v11, v9

    iget v10, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mParallaxBy:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-int v6, v9

    .line 1163
    .local v6, "oldOffset":I
    iput p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mParallaxOffset:F

    .line 1164
    sub-float v9, v11, p1

    iget v10, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mParallaxBy:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-int v5, v9

    .line 1165
    .local v5, "newOffset":I
    sub-int v2, v6, v5

    .line 1167
    .local v2, "dx":I
    if-eqz v4, :cond_4

    neg-int v2, v2

    .end local v2    # "dx":I
    :cond_4
    invoke-virtual {v8, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1169
    if-eqz v1, :cond_0

    .line 1170
    if-eqz v4, :cond_5

    iget v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mParallaxOffset:F

    sub-float/2addr v9, v11

    :goto_4
    iget v10, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mCoveredFadeColor:I

    invoke-direct {p0, v8, v9, v10}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    goto :goto_3

    :cond_5
    iget v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mParallaxOffset:F

    sub-float v9, v11, v9

    goto :goto_4

    .line 1174
    .end local v5    # "newOffset":I
    .end local v6    # "oldOffset":I
    .end local v8    # "v":Landroid/view/View;
    :cond_6
    return-void
.end method

.method private static viewIsOpaque(Landroid/view/View;)Z
    .locals 1
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 399
    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    const/4 v0, 0x1

    .line 406
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    .line 1188
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v7, p1

    .line 1189
    check-cast v7, Landroid/view/ViewGroup;

    .line 1190
    .local v7, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .line 1191
    .local v9, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    .line 1192
    .local v10, "scrollY":I
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 1194
    .local v6, "count":I
    add-int/lit8 v8, v6, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_1

    .line 1197
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1198
    .local v1, "child":Landroid/view/View;
    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge v0, v2, :cond_0

    add-int v0, p5, v10

    .line 1199
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v2, 0x1

    add-int v0, p4, v9

    .line 1200
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    add-int v0, p5, v10

    .line 1201
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    .line 1200
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1202
    const/4 v0, 0x1

    .line 1207
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    .end local p3    # "dx":I
    :goto_1
    return v0

    .line 1194
    .restart local v1    # "child":Landroid/view/View;
    .restart local v6    # "count":I
    .restart local v7    # "group":Landroid/view/ViewGroup;
    .restart local v8    # "i":I
    .restart local v9    # "scrollX":I
    .restart local v10    # "scrollY":I
    .restart local p3    # "dx":I
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 1207
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :cond_1
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    .end local p3    # "dx":I
    :goto_2
    invoke-virtual {p1, p3}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    .restart local p3    # "dx":I
    :cond_2
    neg-int p3, p3

    goto :goto_2

    .end local p3    # "dx":I
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public canSlide()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 912
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mCanSlide:Z

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1232
    instance-of v0, p1, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public closePane()Z
    .locals 2

    .prologue
    .line 893
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->closePane(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mDragHelper:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1042
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mCanSlide:Z

    if-nez v0, :cond_1

    .line 1043
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mDragHelper:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->abort()V

    .line 1049
    :cond_0
    :goto_0
    return-void

    .line 1047
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->postInvalidateOnAnimation()V

    goto :goto_0
.end method

.method dispatchOnPanelClosed(Landroid/view/View;)V
    .locals 1
    .param p1, "panel"    # Landroid/view/View;

    .prologue
    .line 337
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mPanelSlideListener:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mPanelSlideListener:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$PanelSlideListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$PanelSlideListener;->onPanelClosed(Landroid/view/View;)V

    .line 340
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->sendAccessibilityEvent(I)V

    .line 341
    return-void
.end method

.method dispatchOnPanelOpened(Landroid/view/View;)V
    .locals 1
    .param p1, "panel"    # Landroid/view/View;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mPanelSlideListener:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mPanelSlideListener:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$PanelSlideListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$PanelSlideListener;->onPanelOpened(Landroid/view/View;)V

    .line 333
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->sendAccessibilityEvent(I)V

    .line 334
    return-void
.end method

.method dispatchOnPanelSlide(Landroid/view/View;)V
    .locals 2
    .param p1, "panel"    # Landroid/view/View;

    .prologue
    .line 324
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mPanelSlideListener:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mPanelSlideListener:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$PanelSlideListener;

    iget v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideOffset:F

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$PanelSlideListener;->onPanelSlide(Landroid/view/View;F)V

    .line 327
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x1

    .line 1119
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1120
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v1

    .line 1122
    .local v1, "isLayoutRtl":Z
    if-eqz v1, :cond_1

    .line 1123
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mShadowDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 1128
    .local v4, "shadowDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getChildCount()I

    move-result v8

    if-le v8, v9, :cond_2

    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1129
    .local v5, "shadowView":Landroid/view/View;
    :goto_1
    if-eqz v5, :cond_0

    if-nez v4, :cond_3

    .line 1150
    :cond_0
    :goto_2
    return-void

    .line 1125
    .end local v4    # "shadowDrawable":Landroid/graphics/drawable/Drawable;
    .end local v5    # "shadowView":Landroid/view/View;
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mShadowDrawableLeft:Landroid/graphics/drawable/Drawable;

    .restart local v4    # "shadowDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 1128
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 1134
    .restart local v5    # "shadowView":Landroid/view/View;
    :cond_3
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v7

    .line 1135
    .local v7, "top":I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1137
    .local v0, "bottom":I
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 1140
    .local v6, "shadowWidth":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1141
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1142
    .local v2, "left":I
    add-int v3, v2, v6

    .line 1148
    .local v3, "right":I
    :goto_3
    invoke-virtual {v4, v2, v7, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1149
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 1144
    .end local v2    # "left":I
    .end local v3    # "right":I
    :cond_4
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1145
    .restart local v3    # "right":I
    sub-int v2, v3, v6

    .restart local v2    # "left":I
    goto :goto_3
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 980
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;

    .line 982
    .local v0, "lp":Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->save(I)I

    move-result v2

    .line 984
    .local v2, "save":I
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mCanSlide:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->slideable:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 986
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 987
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 988
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 992
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 995
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    .line 997
    .local v1, "result":Z
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 999
    return v1

    .line 990
    .end local v1    # "result":Z
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 1220
    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1237
    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1225
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    :goto_0
    return-object v0

    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getCoveredFadeColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 316
    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mCoveredFadeColor:I

    return v0
.end method

.method public getParallaxDistance()I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mParallaxBy:I

    return v0
.end method

.method public getSliderFadeColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 298
    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSliderFadeColor:I

    return v0
.end method

.method invalidateChildRegion(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1003
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayerPaint(Landroid/graphics/Paint;)V

    .line 1004
    return-void
.end method

.method isDimmed(Landroid/view/View;)Z
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 1211
    if-nez p1, :cond_1

    .line 1215
    :cond_0
    :goto_0
    return v1

    .line 1214
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;

    .line 1215
    .local v0, "lp":Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mCanSlide:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideOffset:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method isLayoutRtlSupport()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1557
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpen()Z
    .locals 2

    .prologue
    .line 903
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mCanSlide:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideOffset:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSlideable()Z
    .locals 1

    .prologue
    .line 922
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mCanSlide:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 411
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 412
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mFirstLayout:Z

    .line 413
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    .line 417
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 418
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mFirstLayout:Z

    .line 420
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 421
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DisableLayerRunnable;

    .line 422
    .local v1, "dlr":Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DisableLayerRunnable;
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DisableLayerRunnable;->run()V

    .line 420
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 424
    .end local v1    # "dlr":Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DisableLayerRunnable;
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 425
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 745
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 748
    .local v0, "action":I
    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mCanSlide:Z

    if-nez v9, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getChildCount()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_0

    .line 750
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 751
    .local v5, "secondChild":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 752
    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mDragHelper:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    .line 753
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v11, v11

    .line 752
    invoke-virtual {v9, v5, v10, v11}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v9

    if-nez v9, :cond_2

    const/4 v9, 0x1

    :goto_0
    iput-boolean v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mPreservedOpenState:Z

    .line 757
    .end local v5    # "secondChild":Landroid/view/View;
    :cond_0
    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mCanSlide:Z

    if-eqz v9, :cond_1

    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mIsUnableToDrag:Z

    if-eqz v9, :cond_3

    if-eqz v0, :cond_3

    .line 758
    :cond_1
    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mDragHelper:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->cancel()V

    .line 759
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    .line 800
    :goto_1
    return v9

    .line 752
    .restart local v5    # "secondChild":Landroid/view/View;
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 762
    .end local v5    # "secondChild":Landroid/view/View;
    :cond_3
    const/4 v9, 0x3

    if-eq v0, v9, :cond_4

    const/4 v9, 0x1

    if-ne v0, v9, :cond_5

    .line 763
    :cond_4
    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mDragHelper:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->cancel()V

    .line 764
    const/4 v9, 0x0

    goto :goto_1

    .line 767
    :cond_5
    const/4 v4, 0x0

    .line 769
    .local v4, "interceptTap":Z
    packed-switch v0, :pswitch_data_0

    .line 798
    :cond_6
    :goto_2
    :pswitch_0
    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mDragHelper:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v9, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 800
    .local v3, "interceptForDrag":Z
    if-nez v3, :cond_7

    if-eqz v4, :cond_8

    :cond_7
    const/4 v9, 0x1

    goto :goto_1

    .line 771
    .end local v3    # "interceptForDrag":Z
    :pswitch_1
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mIsUnableToDrag:Z

    .line 772
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 773
    .local v7, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 774
    .local v8, "y":F
    iput v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mInitialMotionX:F

    .line 775
    iput v8, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mInitialMotionY:F

    .line 777
    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mDragHelper:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    iget-object v10, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    float-to-int v11, v7

    float-to-int v12, v8

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 778
    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->isDimmed(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 779
    const/4 v4, 0x1

    goto :goto_2

    .line 785
    .end local v7    # "x":F
    .end local v8    # "y":F
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 786
    .restart local v7    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 787
    .restart local v8    # "y":F
    iget v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mInitialMotionX:F

    sub-float v9, v7, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 788
    .local v1, "adx":F
    iget v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mInitialMotionY:F

    sub-float v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 789
    .local v2, "ady":F
    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mDragHelper:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->getTouchSlop()I

    move-result v6

    .line 790
    .local v6, "slop":I
    int-to-float v9, v6

    cmpl-float v9, v1, v9

    if-lez v9, :cond_6

    cmpl-float v9, v2, v1

    if-lez v9, :cond_6

    .line 791
    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mDragHelper:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->cancel()V

    .line 792
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mIsUnableToDrag:Z

    .line 793
    const/4 v9, 0x0

    goto :goto_1

    .line 800
    .end local v1    # "adx":F
    .end local v2    # "ady":F
    .end local v6    # "slop":I
    .end local v7    # "x":F
    .end local v8    # "y":F
    .restart local v3    # "interceptForDrag":Z
    :cond_8
    const/4 v9, 0x0

    goto :goto_1

    .line 769
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 28
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 641
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v12

    .line 642
    .local v12, "isLayoutRtl":Z
    if-eqz v12, :cond_1

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mDragHelper:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 647
    :goto_0
    sub-int v23, p4, p2

    .line 648
    .local v23, "width":I
    if-eqz v12, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingRight()I

    move-result v19

    .line 649
    .local v19, "paddingStart":I
    :goto_1
    if-eqz v12, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingLeft()I

    move-result v18

    .line 650
    .local v18, "paddingEnd":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingTop()I

    move-result v20

    .line 652
    .local v20, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getChildCount()I

    move-result v6

    .line 653
    .local v6, "childCount":I
    move/from16 v24, v19

    .line 654
    .local v24, "xStart":I
    move/from16 v16, v24

    .line 656
    .local v16, "nextXStart":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mFirstLayout:Z

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 657
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mCanSlide:Z

    move/from16 v25, v0

    if-eqz v25, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mPreservedOpenState:Z

    move/from16 v25, v0

    if-eqz v25, :cond_4

    const/high16 v25, 0x3f800000    # 1.0f

    :goto_3
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideOffset:F

    .line 660
    :cond_0
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_4
    if-ge v11, v6, :cond_b

    .line 661
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 663
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v25

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    .line 660
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 645
    .end local v4    # "child":Landroid/view/View;
    .end local v6    # "childCount":I
    .end local v11    # "i":I
    .end local v16    # "nextXStart":I
    .end local v18    # "paddingEnd":I
    .end local v19    # "paddingStart":I
    .end local v20    # "paddingTop":I
    .end local v23    # "width":I
    .end local v24    # "xStart":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mDragHelper:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->setEdgeTrackingEnabled(I)V

    goto :goto_0

    .line 648
    .restart local v23    # "width":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingLeft()I

    move-result v19

    goto :goto_1

    .line 649
    .restart local v19    # "paddingStart":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingRight()I

    move-result v18

    goto :goto_2

    .line 657
    .restart local v6    # "childCount":I
    .restart local v16    # "nextXStart":I
    .restart local v18    # "paddingEnd":I
    .restart local v20    # "paddingTop":I
    .restart local v24    # "xStart":I
    :cond_4
    const/16 v25, 0x0

    goto :goto_3

    .line 667
    .restart local v4    # "child":Landroid/view/View;
    .restart local v11    # "i":I
    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;

    .line 669
    .local v13, "lp":Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 670
    .local v10, "childWidth":I
    const/16 v17, 0x0

    .line 672
    .local v17, "offset":I
    iget-boolean v0, v13, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->slideable:Z

    move/from16 v25, v0

    if-eqz v25, :cond_8

    .line 673
    iget v0, v13, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->leftMargin:I

    move/from16 v25, v0

    iget v0, v13, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->rightMargin:I

    move/from16 v26, v0

    add-int v15, v25, v26

    .line 674
    .local v15, "margin":I
    sub-int v25, v23, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mOverhangSize:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move/from16 v0, v16

    move/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v25

    sub-int v25, v25, v24

    sub-int v22, v25, v15

    .line 676
    .local v22, "range":I
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideRange:I

    .line 677
    if-eqz v12, :cond_6

    iget v14, v13, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->rightMargin:I

    .line 678
    .local v14, "lpMargin":I
    :goto_6
    add-int v25, v24, v14

    add-int v25, v25, v22

    div-int/lit8 v26, v10, 0x2

    add-int v25, v25, v26

    sub-int v26, v23, v18

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_7

    const/16 v25, 0x1

    :goto_7
    move/from16 v0, v25

    iput-boolean v0, v13, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    .line 679
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideOffset:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v21, v0

    .line 680
    .local v21, "pos":I
    add-int v25, v21, v14

    add-int v24, v24, v25

    .line 681
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideRange:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideOffset:F

    .line 691
    .end local v14    # "lpMargin":I
    .end local v15    # "margin":I
    .end local v21    # "pos":I
    .end local v22    # "range":I
    :goto_8
    if-eqz v12, :cond_a

    .line 692
    sub-int v25, v23, v24

    add-int v8, v25, v17

    .line 693
    .local v8, "childRight":I
    sub-int v7, v8, v10

    .line 699
    .local v7, "childLeft":I
    :goto_9
    move/from16 v9, v20

    .line 700
    .local v9, "childTop":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v25

    add-int v5, v9, v25

    .line 701
    .local v5, "childBottom":I
    move/from16 v0, v20

    invoke-virtual {v4, v7, v0, v8, v5}, Landroid/view/View;->layout(IIII)V

    .line 703
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v25

    add-int v16, v16, v25

    goto/16 :goto_5

    .line 677
    .end local v5    # "childBottom":I
    .end local v7    # "childLeft":I
    .end local v8    # "childRight":I
    .end local v9    # "childTop":I
    .restart local v15    # "margin":I
    .restart local v22    # "range":I
    :cond_6
    iget v14, v13, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->leftMargin:I

    goto :goto_6

    .line 678
    .restart local v14    # "lpMargin":I
    :cond_7
    const/16 v25, 0x0

    goto :goto_7

    .line 682
    .end local v14    # "lpMargin":I
    .end local v15    # "margin":I
    .end local v22    # "range":I
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mCanSlide:Z

    move/from16 v25, v0

    if-eqz v25, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mParallaxBy:I

    move/from16 v25, v0

    if-eqz v25, :cond_9

    .line 683
    const/high16 v25, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideOffset:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mParallaxBy:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v17, v0

    .line 684
    move/from16 v24, v16

    goto :goto_8

    .line 686
    :cond_9
    move/from16 v24, v16

    goto :goto_8

    .line 695
    :cond_a
    sub-int v7, v24, v17

    .line 696
    .restart local v7    # "childLeft":I
    add-int v8, v7, v10

    .restart local v8    # "childRight":I
    goto :goto_9

    .line 706
    .end local v4    # "child":Landroid/view/View;
    .end local v7    # "childLeft":I
    .end local v8    # "childRight":I
    .end local v10    # "childWidth":I
    .end local v13    # "lp":Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;
    .end local v17    # "offset":I
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mFirstLayout:Z

    move/from16 v25, v0

    if-eqz v25, :cond_e

    .line 707
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mCanSlide:Z

    move/from16 v25, v0

    if-eqz v25, :cond_f

    .line 708
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mParallaxBy:I

    move/from16 v25, v0

    if-eqz v25, :cond_c

    .line 709
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideOffset:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->parallaxOtherViews(F)V

    .line 711
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    move/from16 v25, v0

    if-eqz v25, :cond_d

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideOffset:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSliderFadeColor:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    .line 720
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->updateObscuredViewsVisibility(Landroid/view/View;)V

    .line 723
    :cond_e
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mFirstLayout:Z

    .line 724
    return-void

    .line 716
    :cond_f
    const/4 v11, 0x0

    :goto_a
    if-ge v11, v6, :cond_d

    .line 717
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSliderFadeColor:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    .line 716
    add-int/lit8 v11, v11, 0x1

    goto :goto_a
.end method

.method protected onMeasure(II)V
    .locals 31
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 429
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v25

    .line 430
    .local v25, "widthMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v27

    .line 431
    .local v27, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 432
    .local v12, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 434
    .local v13, "heightSize":I
    const/high16 v29, 0x40000000    # 2.0f

    move/from16 v0, v25

    move/from16 v1, v29

    if-eq v0, v1, :cond_5

    .line 435
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->isInEditMode()Z

    move-result v29

    if-eqz v29, :cond_4

    .line 440
    const/high16 v29, -0x80000000

    move/from16 v0, v25

    move/from16 v1, v29

    if-ne v0, v1, :cond_3

    .line 441
    const/high16 v25, 0x40000000    # 2.0f

    .line 463
    :cond_0
    :goto_0
    const/16 v16, 0x0

    .line 464
    .local v16, "layoutHeight":I
    const/16 v18, -0x1

    .line 465
    .local v18, "maxLayoutHeight":I
    sparse-switch v12, :sswitch_data_0

    .line 474
    :goto_1
    const/16 v23, 0x0

    .line 475
    .local v23, "weightSum":F
    const/4 v4, 0x0

    .line 476
    .local v4, "canSlide":Z
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingLeft()I

    move-result v29

    sub-int v29, v27, v29

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingRight()I

    move-result v30

    sub-int v24, v29, v30

    .line 477
    .local v24, "widthAvailable":I
    move/from16 v26, v24

    .line 478
    .local v26, "widthRemaining":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getChildCount()I

    move-result v6

    .line 480
    .local v6, "childCount":I
    const/16 v29, 0x2

    move/from16 v0, v29

    if-le v6, v0, :cond_1

    .line 481
    const-string v29, "SeslSlidingPaneLayout"

    const-string v30, "onMeasure: More than two child views are not supported."

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_1
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 489
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    if-ge v15, v6, :cond_f

    .line 490
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 491
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;

    .line 493
    .local v17, "lp":Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v29

    const/16 v30, 0x8

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_7

    .line 494
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    .line 489
    :cond_2
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 442
    .end local v4    # "canSlide":Z
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childCount":I
    .end local v15    # "i":I
    .end local v16    # "layoutHeight":I
    .end local v17    # "lp":Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;
    .end local v18    # "maxLayoutHeight":I
    .end local v23    # "weightSum":F
    .end local v24    # "widthAvailable":I
    .end local v26    # "widthRemaining":I
    :cond_3
    if-nez v25, :cond_0

    .line 443
    const/high16 v25, 0x40000000    # 2.0f

    .line 444
    const/16 v27, 0x12c

    goto :goto_0

    .line 447
    :cond_4
    new-instance v29, Ljava/lang/IllegalStateException;

    const-string v30, "Width must have an exact value or MATCH_PARENT"

    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 449
    :cond_5
    if-nez v12, :cond_0

    .line 450
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->isInEditMode()Z

    move-result v29

    if-eqz v29, :cond_6

    .line 454
    if-nez v12, :cond_0

    .line 455
    const/high16 v12, -0x80000000

    .line 456
    const/16 v13, 0x12c

    goto :goto_0

    .line 459
    :cond_6
    new-instance v29, Ljava/lang/IllegalStateException;

    const-string v30, "Height must not be UNSPECIFIED"

    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 467
    .restart local v16    # "layoutHeight":I
    .restart local v18    # "maxLayoutHeight":I
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingTop()I

    move-result v29

    sub-int v29, v13, v29

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingBottom()I

    move-result v30

    sub-int v18, v29, v30

    move/from16 v16, v18

    .line 468
    goto/16 :goto_1

    .line 470
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingTop()I

    move-result v29

    sub-int v29, v13, v29

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingBottom()I

    move-result v30

    sub-int v18, v29, v30

    goto/16 :goto_1

    .line 498
    .restart local v4    # "canSlide":Z
    .restart local v5    # "child":Landroid/view/View;
    .restart local v6    # "childCount":I
    .restart local v15    # "i":I
    .restart local v17    # "lp":Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;
    .restart local v23    # "weightSum":F
    .restart local v24    # "widthAvailable":I
    .restart local v26    # "widthRemaining":I
    :cond_7
    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v29, v0

    const/16 v30, 0x0

    cmpl-float v29, v29, v30

    if-lez v29, :cond_8

    .line 499
    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v29, v0

    add-float v23, v23, v29

    .line 503
    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->width:I

    move/from16 v29, v0

    if-eqz v29, :cond_2

    .line 507
    :cond_8
    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->leftMargin:I

    move/from16 v29, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->rightMargin:I

    move/from16 v30, v0

    add-int v14, v29, v30

    .line 508
    .local v14, "horizontalMargin":I
    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->width:I

    move/from16 v29, v0

    const/16 v30, -0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_a

    .line 509
    sub-int v29, v24, v14

    const/high16 v30, -0x80000000

    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 519
    .local v10, "childWidthSpec":I
    :goto_4
    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->height:I

    move/from16 v29, v0

    const/16 v30, -0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_c

    .line 520
    const/high16 v29, -0x80000000

    move/from16 v0, v18

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 527
    .local v8, "childHeightSpec":I
    :goto_5
    invoke-virtual {v5, v10, v8}, Landroid/view/View;->measure(II)V

    .line 528
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 529
    .local v9, "childWidth":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 531
    .local v7, "childHeight":I
    const/high16 v29, -0x80000000

    move/from16 v0, v29

    if-ne v12, v0, :cond_9

    move/from16 v0, v16

    if-le v7, v0, :cond_9

    .line 532
    move/from16 v0, v18

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 535
    :cond_9
    sub-int v26, v26, v9

    .line 536
    if-gez v26, :cond_e

    const/16 v29, 0x1

    :goto_6
    move/from16 v0, v29

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->slideable:Z

    or-int v4, v4, v29

    .line 537
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->slideable:Z

    move/from16 v29, v0

    if-eqz v29, :cond_2

    .line 538
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    goto/16 :goto_3

    .line 511
    .end local v7    # "childHeight":I
    .end local v8    # "childHeightSpec":I
    .end local v9    # "childWidth":I
    .end local v10    # "childWidthSpec":I
    :cond_a
    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->width:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_b

    .line 512
    sub-int v29, v24, v14

    const/high16 v30, 0x40000000    # 2.0f

    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .restart local v10    # "childWidthSpec":I
    goto :goto_4

    .line 515
    .end local v10    # "childWidthSpec":I
    :cond_b
    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->width:I

    move/from16 v29, v0

    const/high16 v30, 0x40000000    # 2.0f

    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .restart local v10    # "childWidthSpec":I
    goto :goto_4

    .line 521
    :cond_c
    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->height:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_d

    .line 522
    const/high16 v29, 0x40000000    # 2.0f

    move/from16 v0, v18

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .restart local v8    # "childHeightSpec":I
    goto :goto_5

    .line 524
    .end local v8    # "childHeightSpec":I
    :cond_d
    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->height:I

    move/from16 v29, v0

    const/high16 v30, 0x40000000    # 2.0f

    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .restart local v8    # "childHeightSpec":I
    goto :goto_5

    .line 536
    .restart local v7    # "childHeight":I
    .restart local v9    # "childWidth":I
    :cond_e
    const/16 v29, 0x0

    goto :goto_6

    .line 543
    .end local v5    # "child":Landroid/view/View;
    .end local v7    # "childHeight":I
    .end local v8    # "childHeightSpec":I
    .end local v9    # "childWidth":I
    .end local v10    # "childWidthSpec":I
    .end local v14    # "horizontalMargin":I
    .end local v17    # "lp":Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;
    :cond_f
    if-nez v4, :cond_10

    const/16 v29, 0x0

    cmpl-float v29, v23, v29

    if-lez v29, :cond_1e

    .line 544
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mOverhangSize:I

    move/from16 v29, v0

    sub-int v11, v24, v29

    .line 546
    .local v11, "fixedPanelWidthLimit":I
    const/4 v15, 0x0

    :goto_7
    if-ge v15, v6, :cond_1e

    .line 547
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 549
    .restart local v5    # "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v29

    const/16 v30, 0x8

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_12

    .line 546
    :cond_11
    :goto_8
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 553
    :cond_12
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;

    .line 555
    .restart local v17    # "lp":Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v29

    const/16 v30, 0x8

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_11

    .line 559
    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->width:I

    move/from16 v29, v0

    if-nez v29, :cond_14

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v29, v0

    const/16 v30, 0x0

    cmpl-float v29, v29, v30

    if-lez v29, :cond_14

    const/16 v22, 0x1

    .line 560
    .local v22, "skippedFirstPass":Z
    :goto_9
    if-eqz v22, :cond_15

    const/16 v20, 0x0

    .line 561
    .local v20, "measuredWidth":I
    :goto_a
    if-eqz v4, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    if-eq v5, v0, :cond_19

    .line 562
    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->width:I

    move/from16 v29, v0

    if-gez v29, :cond_11

    move/from16 v0, v20

    if-gt v0, v11, :cond_13

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v29, v0

    const/16 v30, 0x0

    cmpl-float v29, v29, v30

    if-lez v29, :cond_11

    .line 566
    :cond_13
    if-eqz v22, :cond_18

    .line 569
    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->height:I

    move/from16 v29, v0

    const/16 v30, -0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_16

    .line 570
    const/high16 v29, -0x80000000

    move/from16 v0, v18

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 583
    .restart local v8    # "childHeightSpec":I
    :goto_b
    const/high16 v29, 0x40000000    # 2.0f

    move/from16 v0, v29

    invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 585
    .restart local v10    # "childWidthSpec":I
    invoke-virtual {v5, v10, v8}, Landroid/view/View;->measure(II)V

    goto :goto_8

    .line 559
    .end local v8    # "childHeightSpec":I
    .end local v10    # "childWidthSpec":I
    .end local v20    # "measuredWidth":I
    .end local v22    # "skippedFirstPass":Z
    :cond_14
    const/16 v22, 0x0

    goto :goto_9

    .line 560
    .restart local v22    # "skippedFirstPass":Z
    :cond_15
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    goto :goto_a

    .line 572
    .restart local v20    # "measuredWidth":I
    :cond_16
    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->height:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_17

    .line 573
    const/high16 v29, 0x40000000    # 2.0f

    move/from16 v0, v18

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .restart local v8    # "childHeightSpec":I
    goto :goto_b

    .line 576
    .end local v8    # "childHeightSpec":I
    :cond_17
    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->height:I

    move/from16 v29, v0

    const/high16 v30, 0x40000000    # 2.0f

    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .restart local v8    # "childHeightSpec":I
    goto :goto_b

    .line 581
    .end local v8    # "childHeightSpec":I
    :cond_18
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v29

    const/high16 v30, 0x40000000    # 2.0f

    .line 580
    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .restart local v8    # "childHeightSpec":I
    goto :goto_b

    .line 587
    .end local v8    # "childHeightSpec":I
    :cond_19
    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v29, v0

    const/16 v30, 0x0

    cmpl-float v29, v29, v30

    if-lez v29, :cond_11

    .line 589
    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->width:I

    move/from16 v29, v0

    if-nez v29, :cond_1c

    .line 591
    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->height:I

    move/from16 v29, v0

    const/16 v30, -0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1a

    .line 592
    const/high16 v29, -0x80000000

    move/from16 v0, v18

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 606
    .restart local v8    # "childHeightSpec":I
    :goto_c
    if-eqz v4, :cond_1d

    .line 608
    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->leftMargin:I

    move/from16 v29, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->rightMargin:I

    move/from16 v30, v0

    add-int v14, v29, v30

    .line 609
    .restart local v14    # "horizontalMargin":I
    sub-int v21, v24, v14

    .line 610
    .local v21, "newWidth":I
    const/high16 v29, 0x40000000    # 2.0f

    move/from16 v0, v21

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 612
    .restart local v10    # "childWidthSpec":I
    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_11

    .line 613
    invoke-virtual {v5, v10, v8}, Landroid/view/View;->measure(II)V

    goto/16 :goto_8

    .line 594
    .end local v8    # "childHeightSpec":I
    .end local v10    # "childWidthSpec":I
    .end local v14    # "horizontalMargin":I
    .end local v21    # "newWidth":I
    :cond_1a
    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->height:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1b

    .line 595
    const/high16 v29, 0x40000000    # 2.0f

    move/from16 v0, v18

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .restart local v8    # "childHeightSpec":I
    goto :goto_c

    .line 598
    .end local v8    # "childHeightSpec":I
    :cond_1b
    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->height:I

    move/from16 v29, v0

    const/high16 v30, 0x40000000    # 2.0f

    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .restart local v8    # "childHeightSpec":I
    goto :goto_c

    .line 603
    .end local v8    # "childHeightSpec":I
    :cond_1c
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v29

    const/high16 v30, 0x40000000    # 2.0f

    .line 602
    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .restart local v8    # "childHeightSpec":I
    goto :goto_c

    .line 617
    :cond_1d
    const/16 v29, 0x0

    move/from16 v0, v29

    move/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 618
    .local v28, "widthToDistribute":I
    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v29, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v29, v29, v30

    div-float v29, v29, v23

    move/from16 v0, v29

    float-to-int v3, v0

    .line 619
    .local v3, "addedWidth":I
    add-int v29, v20, v3

    const/high16 v30, 0x40000000    # 2.0f

    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 621
    .restart local v10    # "childWidthSpec":I
    invoke-virtual {v5, v10, v8}, Landroid/view/View;->measure(II)V

    goto/16 :goto_8

    .line 627
    .end local v3    # "addedWidth":I
    .end local v5    # "child":Landroid/view/View;
    .end local v8    # "childHeightSpec":I
    .end local v10    # "childWidthSpec":I
    .end local v11    # "fixedPanelWidthLimit":I
    .end local v17    # "lp":Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;
    .end local v20    # "measuredWidth":I
    .end local v22    # "skippedFirstPass":Z
    .end local v28    # "widthToDistribute":I
    :cond_1e
    move/from16 v20, v27

    .line 628
    .restart local v20    # "measuredWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingTop()I

    move-result v29

    add-int v29, v29, v16

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingBottom()I

    move-result v30

    add-int v19, v29, v30

    .line 630
    .local v19, "measuredHeight":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->setMeasuredDimension(II)V

    .line 631
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mCanSlide:Z

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mDragHelper:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->getViewDragState()I

    move-result v29

    if-eqz v29, :cond_1f

    if-nez v4, :cond_1f

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mDragHelper:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->abort()V

    .line 637
    :cond_1f
    return-void

    .line 465
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method onPanelDragged(I)V
    .locals 10
    .param p1, "newLeft"    # I

    .prologue
    .line 926
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-nez v7, :cond_0

    .line 928
    const/4 v7, 0x0

    iput v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideOffset:F

    .line 951
    :goto_0
    return-void

    .line 931
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v1

    .line 932
    .local v1, "isLayoutRtl":Z
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;

    .line 934
    .local v2, "lp":Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 935
    .local v0, "childWidth":I
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getWidth()I

    move-result v7

    sub-int/2addr v7, p1

    sub-int v4, v7, v0

    .line 937
    .local v4, "newStart":I
    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingRight()I

    move-result v5

    .line 938
    .local v5, "paddingStart":I
    :goto_2
    if-eqz v1, :cond_5

    iget v3, v2, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->rightMargin:I

    .line 939
    .local v3, "lpMargin":I
    :goto_3
    add-int v6, v5, v3

    .line 941
    .local v6, "startBound":I
    sub-int v7, v4, v6

    int-to-float v7, v7

    iget v8, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideRange:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideOffset:F

    .line 943
    iget v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mParallaxBy:I

    if-eqz v7, :cond_1

    .line 944
    iget v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideOffset:F

    invoke-direct {p0, v7}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->parallaxOtherViews(F)V

    .line 947
    :cond_1
    iget-boolean v7, v2, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v7, :cond_2

    .line 948
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    iget v8, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideOffset:F

    iget v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSliderFadeColor:I

    invoke-direct {p0, v7, v8, v9}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    .line 950
    :cond_2
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->dispatchOnPanelSlide(Landroid/view/View;)V

    goto :goto_0

    .end local v3    # "lpMargin":I
    .end local v4    # "newStart":I
    .end local v5    # "paddingStart":I
    .end local v6    # "startBound":I
    :cond_3
    move v4, p1

    .line 935
    goto :goto_1

    .line 937
    .restart local v4    # "newStart":I
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingLeft()I

    move-result v5

    goto :goto_2

    .line 938
    .restart local v5    # "paddingStart":I
    :cond_5
    iget v3, v2, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->leftMargin:I

    goto :goto_3
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1252
    instance-of v1, p1, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$SavedState;

    if-nez v1, :cond_0

    .line 1253
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1266
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 1257
    check-cast v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$SavedState;

    .line 1258
    .local v0, "ss":Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$SavedState;
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1260
    iget-boolean v1, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$SavedState;->isOpen:Z

    if-eqz v1, :cond_1

    .line 1261
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->openPane()Z

    .line 1265
    :goto_1
    iget-boolean v1, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$SavedState;->isOpen:Z

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mPreservedOpenState:Z

    goto :goto_0

    .line 1263
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->closePane()Z

    goto :goto_1
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1242
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1244
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$SavedState;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1245
    .local v0, "ss":Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$SavedState;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->isSlideable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->isOpen()Z

    move-result v2

    :goto_0
    iput-boolean v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$SavedState;->isOpen:Z

    .line 1247
    return-object v0

    .line 1245
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mPreservedOpenState:Z

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 728
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 730
    if-eq p1, p3, :cond_0

    .line 731
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mFirstLayout:Z

    .line 733
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 805
    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mCanSlide:Z

    if-nez v7, :cond_1

    .line 806
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 841
    :cond_0
    :goto_0
    return v4

    .line 809
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mDragHelper:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v7, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 811
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 812
    .local v0, "action":I
    const/4 v4, 0x1

    .line 814
    .local v4, "wantTouchEvents":Z
    and-int/lit16 v7, v0, 0xff

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 816
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 817
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 818
    .local v6, "y":F
    iput v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mInitialMotionX:F

    .line 819
    iput v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mInitialMotionY:F

    goto :goto_0

    .line 824
    .end local v5    # "x":F
    .end local v6    # "y":F
    :pswitch_1
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->isDimmed(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 825
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 826
    .restart local v5    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 827
    .restart local v6    # "y":F
    iget v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mInitialMotionX:F

    sub-float v1, v5, v7

    .line 828
    .local v1, "dx":F
    iget v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mInitialMotionY:F

    sub-float v2, v6, v7

    .line 829
    .local v2, "dy":F
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mDragHelper:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->getTouchSlop()I

    move-result v3

    .line 830
    .local v3, "slop":I
    mul-float v7, v1, v1

    mul-float v8, v2, v2

    add-float/2addr v7, v8

    mul-int v8, v3, v3

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_0

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mDragHelper:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    float-to-int v9, v5

    float-to-int v10, v6

    .line 831
    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 833
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->closePane(Landroid/view/View;I)Z

    goto :goto_0

    .line 814
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public openPane()Z
    .locals 2

    .prologue
    .line 875
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->openPane(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 737
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 738
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mCanSlide:Z

    if-nez v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mPreservedOpenState:Z

    .line 741
    :cond_0
    return-void

    .line 739
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setAllChildrenVisible()V
    .locals 5

    .prologue
    .line 390
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getChildCount()I

    move-result v1

    .local v1, "childCount":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 391
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 392
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 393
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 390
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 396
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setCoveredFadeColor(I)V
    .locals 0
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 308
    iput p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mCoveredFadeColor:I

    .line 309
    return-void
.end method

.method public setPanelSlideListener(Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$PanelSlideListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$PanelSlideListener;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mPanelSlideListener:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$PanelSlideListener;

    .line 321
    return-void
.end method

.method public setParallaxDistance(I)V
    .locals 0
    .param p1, "parallaxBy"    # I

    .prologue
    .line 271
    iput p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mParallaxBy:I

    .line 272
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->requestLayout()V

    .line 273
    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1060
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V

    .line 1061
    return-void
.end method

.method public setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1070
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mShadowDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 1071
    return-void
.end method

.method public setShadowDrawableRight(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1080
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mShadowDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 1081
    return-void
.end method

.method public setShadowResource(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1094
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1095
    return-void
.end method

.method public setShadowResourceLeft(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1104
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V

    .line 1105
    return-void
.end method

.method public setShadowResourceRight(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1114
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->setShadowDrawableRight(Landroid/graphics/drawable/Drawable;)V

    .line 1115
    return-void
.end method

.method public setSliderFadeColor(I)V
    .locals 0
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 290
    iput p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSliderFadeColor:I

    .line 291
    return-void
.end method

.method public smoothSlideClosed()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 883
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->closePane()Z

    .line 884
    return-void
.end method

.method public smoothSlideOpen()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 865
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->openPane()Z

    .line 866
    return-void
.end method

.method smoothSlideTo(FI)Z
    .locals 9
    .param p1, "slideOffset"    # F
    .param p2, "velocity"    # I

    .prologue
    const/4 v5, 0x0

    .line 1013
    iget-boolean v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mCanSlide:Z

    if-nez v6, :cond_1

    .line 1036
    :cond_0
    :goto_0
    return v5

    .line 1018
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v1

    .line 1019
    .local v1, "isLayoutRtl":Z
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;

    .line 1022
    .local v2, "lp":Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;
    if-eqz v1, :cond_2

    .line 1023
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingRight()I

    move-result v6

    iget v7, v2, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int v3, v6, v7

    .line 1024
    .local v3, "startBound":I
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 1025
    .local v0, "childWidth":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v3

    iget v8, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideRange:I

    int-to-float v8, v8

    mul-float/2addr v8, p1

    add-float/2addr v7, v8

    int-to-float v8, v0

    add-float/2addr v7, v8

    sub-float/2addr v6, v7

    float-to-int v4, v6

    .line 1031
    .end local v0    # "childWidth":I
    .local v4, "x":I
    :goto_1
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mDragHelper:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v6, v7, v4, v8}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1032
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->setAllChildrenVisible()V

    .line 1033
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->postInvalidateOnAnimation()V

    .line 1034
    const/4 v5, 0x1

    goto :goto_0

    .line 1027
    .end local v3    # "startBound":I
    .end local v4    # "x":I
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingLeft()I

    move-result v6

    iget v7, v2, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->leftMargin:I

    add-int v3, v6, v7

    .line 1028
    .restart local v3    # "startBound":I
    int-to-float v6, v3

    iget v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideRange:I

    int-to-float v7, v7

    mul-float/2addr v7, p1

    add-float/2addr v6, v7

    float-to-int v4, v6

    .restart local v4    # "x":I
    goto :goto_1
.end method

.method updateObscuredViewsVisibility(Landroid/view/View;)V
    .locals 21
    .param p1, "panel"    # Landroid/view/View;

    .prologue
    .line 344
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v12

    .line 345
    .local v12, "isLayoutRtl":Z
    if-eqz v12, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getWidth()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingRight()I

    move-result v20

    sub-int v15, v19, v20

    .line 346
    .local v15, "startBound":I
    :goto_0
    if-eqz v12, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingLeft()I

    move-result v10

    .line 347
    .local v10, "endBound":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingTop()I

    move-result v17

    .line 348
    .local v17, "topBound":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getHeight()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingBottom()I

    move-result v20

    sub-int v3, v19, v20

    .line 353
    .local v3, "bottomBound":I
    if-eqz p1, :cond_3

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->viewIsOpaque(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 354
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v13

    .line 355
    .local v13, "left":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v14

    .line 356
    .local v14, "right":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v16

    .line 357
    .local v16, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 362
    .local v2, "bottom":I
    :goto_2
    const/4 v11, 0x0

    .local v11, "i":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getChildCount()I

    move-result v5

    .local v5, "childCount":I
    :goto_3
    if-ge v11, v5, :cond_0

    .line 363
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 365
    .local v4, "child":Landroid/view/View;
    move-object/from16 v0, p1

    if-ne v4, v0, :cond_4

    .line 387
    .end local v4    # "child":Landroid/view/View;
    :cond_0
    return-void

    .line 345
    .end local v2    # "bottom":I
    .end local v3    # "bottomBound":I
    .end local v5    # "childCount":I
    .end local v10    # "endBound":I
    .end local v11    # "i":I
    .end local v13    # "left":I
    .end local v14    # "right":I
    .end local v15    # "startBound":I
    .end local v16    # "top":I
    .end local v17    # "topBound":I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingLeft()I

    move-result v15

    goto :goto_0

    .line 346
    .restart local v15    # "startBound":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getWidth()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingRight()I

    move-result v20

    sub-int v10, v19, v20

    goto :goto_1

    .line 359
    .restart local v3    # "bottomBound":I
    .restart local v10    # "endBound":I
    .restart local v17    # "topBound":I
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "bottom":I
    move/from16 v16, v2

    .restart local v16    # "top":I
    move v14, v2

    .restart local v14    # "right":I
    move v13, v2

    .restart local v13    # "left":I
    goto :goto_2

    .line 368
    .restart local v4    # "child":Landroid/view/View;
    .restart local v5    # "childCount":I
    .restart local v11    # "i":I
    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 362
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 372
    :cond_5
    if-eqz v12, :cond_6

    move/from16 v19, v10

    .line 373
    :goto_5
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v20

    .line 372
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 374
    .local v7, "clampedChildLeft":I
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v19

    move/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 375
    .local v9, "clampedChildTop":I
    if-eqz v12, :cond_7

    move/from16 v19, v15

    .line 376
    :goto_6
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v20

    .line 375
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 377
    .local v8, "clampedChildRight":I
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 379
    .local v6, "clampedChildBottom":I
    if-lt v7, v13, :cond_8

    move/from16 v0, v16

    if-lt v9, v0, :cond_8

    if-gt v8, v14, :cond_8

    if-gt v6, v2, :cond_8

    .line 381
    const/16 v18, 0x4

    .line 385
    .local v18, "vis":I
    :goto_7
    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .end local v6    # "clampedChildBottom":I
    .end local v7    # "clampedChildLeft":I
    .end local v8    # "clampedChildRight":I
    .end local v9    # "clampedChildTop":I
    .end local v18    # "vis":I
    :cond_6
    move/from16 v19, v15

    .line 372
    goto :goto_5

    .restart local v7    # "clampedChildLeft":I
    .restart local v9    # "clampedChildTop":I
    :cond_7
    move/from16 v19, v10

    .line 375
    goto :goto_6

    .line 383
    .restart local v6    # "clampedChildBottom":I
    .restart local v8    # "clampedChildRight":I
    :cond_8
    const/16 v18, 0x0

    .restart local v18    # "vis":I
    goto :goto_7
.end method
