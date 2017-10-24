.class public Landroid/widget/HorizontalScrollView;
.super Landroid/widget/FrameLayout;
.source "HorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/HorizontalScrollView$HoverScrollHandler;,
        Landroid/widget/HorizontalScrollView$SavedState;
    }
.end annotation


# static fields
.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final HOVERSCROLL_LEFT:I = 0x1

.field private static final HOVERSCROLL_RIGHT:I = 0x2

.field private static final HOVERSCROLL_SPEED_FASTER:F = 30.0f

.field private static final HOVERSCROLL_WIDTH_DP:I = 0x19

.field private static final INVALID_POINTER:I = -0x1

.field private static final MAX_SCROLL_FACTOR:F = 0.5f

.field private static final MSG_HOVERSCROLL_MOVE:I = 0x1

.field private static final MSG_HOVERSCROLL_MOVE_FASTER:I = 0x2

.field private static final MSG_HOVERSCROLL_MOVE_TO_END:I = 0x3

.field private static final MSG_TIMEOUT:I = 0x4

.field private static final QC_BOTTOM:I = 0x4

.field private static final QC_LEFT:I = 0x1

.field private static final QC_RIGHT:I = 0x3

.field private static final QC_STATE_NONE:I = 0x0

.field private static final QC_STATE_PRESSED:I = 0x2

.field private static final QC_STATE_SHOWN:I = 0x1

.field private static final QC_TOP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HorizontalScrollView"

.field private static final THRESHOLD_RATIO_X:I = 0x30

.field private static final TIMEOUT_DELAY:I = 0x64


# instance fields
.field private HOVERSCROLL_DELAY:I

.field private HOVERSCROLL_SPEED:I

.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field private mActivePointerId:I

.field private mChangedTheme:Z

.field private mChildToScrollTo:Landroid/view/View;

.field private mEdgeGlowLeft:Landroid/widget/EdgeEffect;

.field private mEdgeGlowRight:Landroid/widget/EdgeEffect;

.field private mFillViewport:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

.field private mHoverAreaEnter:Z

.field private mHoverAreaWidth:I

.field private mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

.field private mHoverRecognitionCurrentTime:J

.field private mHoverRecognitionDurationTime:J

.field private mHoverRecognitionStartTime:J

.field private mHoverScrollDirection:I

.field private mHoverScrollEnable:Z

.field private mHoverScrollSpeed:I

.field private mHoverScrollStartTime:J

.field private mHoverScrollTimeInterval:J

.field private mIsBeingDragged:Z

.field private mIsHoverOverscrolled:Z

.field private mIsLayoutDirty:Z

.field private mIsQCShown:Z

.field private mIsSetOpenTheme:Z

.field private mIsThemeDeviceDefaultFamily:Z

.field private mLastHapticScrollX:I

.field private mLastMotionX:I

.field private mLastScroll:J

.field private mLastScrollX:I

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedsHoverScroll:Z

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field private mPixelThresholdX:I

.field private mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

.field private mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mQCLocation:I

.field private mQCRect:Landroid/graphics/Rect;

.field private mQCstate:I

.field private mSavedState:Landroid/widget/HorizontalScrollView$SavedState;

.field private mScroller:Landroid/widget/OverScroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mUseRatioMaintainedImage:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static synthetic -wrap0(Landroid/widget/HorizontalScrollView;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 277
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 276
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 281
    const v0, 0x1010353

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 280
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 285
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 284
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 290
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 107
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 112
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    const-string/jumbo v6, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Landroid/widget/HorizontalScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 123
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/HorizontalScrollView;->mIsLayoutDirty:Z

    .line 130
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 137
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 154
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/HorizontalScrollView;->mSmoothScrollingEnabled:Z

    .line 178
    const/4 v5, -0x1

    iput v5, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 225
    const/4 v5, 0x0

    iput v5, p0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    .line 230
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionDurationTime:J

    .line 231
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionCurrentTime:J

    .line 232
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionStartTime:J

    .line 233
    const-wide/16 v6, 0x12c

    iput-wide v6, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollTimeInterval:J

    .line 234
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollStartTime:J

    .line 235
    const/4 v5, -0x1

    iput v5, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollDirection:I

    .line 240
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    .line 245
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollEnable:Z

    .line 250
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/widget/HorizontalScrollView;->mHoverAreaEnter:Z

    .line 255
    const/16 v5, 0xf

    iput v5, p0, Landroid/widget/HorizontalScrollView;->HOVERSCROLL_SPEED:I

    .line 265
    const/16 v5, 0xf

    iput v5, p0, Landroid/widget/HorizontalScrollView;->HOVERSCROLL_DELAY:I

    .line 267
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/widget/HorizontalScrollView;->mNeedsHoverScroll:Z

    .line 272
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/widget/HorizontalScrollView;->mUseRatioMaintainedImage:Z

    .line 2438
    const/4 v5, 0x0

    iput v5, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollSpeed:I

    .line 2617
    const/4 v5, -0x1

    iput v5, p0, Landroid/widget/HorizontalScrollView;->mQCLocation:I

    .line 2618
    const/4 v5, 0x0

    iput v5, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    .line 2619
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/widget/HorizontalScrollView;->mIsQCShown:Z

    .line 291
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->initScrollView()V

    .line 294
    sget-object v5, Landroid/R$styleable;->HorizontalScrollView:[I

    .line 293
    invoke-virtual {p1, p2, v5, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 296
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 299
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 300
    .local v2, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x11600cb

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v2, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 301
    iget v5, v2, Landroid/util/TypedValue;->data:I

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, p0, Landroid/widget/HorizontalScrollView;->mIsThemeDeviceDefaultFamily:Z

    .line 303
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "current_sec_active_themepackage"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 304
    .local v3, "themeName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "current_sec_theme_package_festival"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, "festivalPackageName":Ljava/lang/String;
    iget-boolean v5, p0, Landroid/widget/HorizontalScrollView;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v5, :cond_4

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v6, 0x230

    if-ne v5, v6, :cond_4

    const/4 v5, 0x1

    :goto_1
    iput-boolean v5, p0, Landroid/widget/HorizontalScrollView;->mChangedTheme:Z

    .line 307
    iget-boolean v5, p0, Landroid/widget/HorizontalScrollView;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_0
    const/4 v5, 0x0

    :goto_2
    iput-boolean v5, p0, Landroid/widget/HorizontalScrollView;->mIsSetOpenTheme:Z

    .line 309
    iget-boolean v5, p0, Landroid/widget/HorizontalScrollView;->mIsSetOpenTheme:Z

    if-eqz v5, :cond_2

    .line 311
    sget-object v5, Lcom/android/internal/R$styleable;->View:[I

    .line 310
    invoke-virtual {p1, p2, v5, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 312
    .local v4, "typedArray":Landroid/content/res/TypedArray;
    const/16 v5, 0xd

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    const v6, 0x1080736

    if-ne v5, v6, :cond_1

    .line 313
    const v5, 0x1080984

    invoke-virtual {p1, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/widget/HorizontalScrollView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 315
    :cond_1
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 319
    .end local v4    # "typedArray":Landroid/content/res/TypedArray;
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 289
    return-void

    .line 301
    .end local v1    # "festivalPackageName":Ljava/lang/String;
    .end local v3    # "themeName":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 305
    .restart local v1    # "festivalPackageName":Ljava/lang/String;
    .restart local v3    # "themeName":Ljava/lang/String;
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 307
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/AssetManager;->getOverlays()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_2
.end method

.method private canScroll()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 475
    invoke-virtual {p0, v2}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 476
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 477
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 478
    .local v1, "childWidth":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    add-int/2addr v4, v1

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 480
    .end local v1    # "childWidth":I
    :cond_1
    return v2
.end method

.method private static clamp(III)I
    .locals 1
    .param p0, "n"    # I
    .param p1, "my"    # I
    .param p2, "child"    # I

    .prologue
    const/4 v0, 0x0

    .line 2346
    if-ge p1, p2, :cond_0

    if-gez p0, :cond_1

    .line 2347
    :cond_0
    return v0

    .line 2349
    :cond_1
    add-int v0, p1, p0

    if-le v0, p2, :cond_2

    .line 2350
    sub-int v0, p2, p1

    return v0

    .line 2352
    :cond_2
    return p0
.end method

.method private doScrollX(I)V
    .locals 2
    .param p1, "delta"    # I

    .prologue
    const/4 v1, 0x0

    .line 1804
    if-eqz p1, :cond_0

    .line 1805
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    .line 1806
    invoke-virtual {p0, p1, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    .line 1803
    :cond_0
    :goto_0
    return-void

    .line 1808
    :cond_1
    invoke-virtual {p0, p1, v1}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private drawQuickController(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 2702
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    if-eq v3, v5, :cond_0

    iget v3, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    if-ne v3, v6, :cond_5

    .line 2703
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2706
    .local v0, "restoreCount":I
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mQCLocation:I

    if-eq v3, v5, :cond_1

    iget v3, p0, Landroid/widget/HorizontalScrollView;->mQCLocation:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 2707
    :cond_1
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 2708
    .local v1, "scrollX":I
    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2709
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    neg-int v3, v3

    int-to-float v3, v3

    int-to-float v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2715
    .end local v1    # "scrollX":I
    :goto_0
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    if-ne v3, v5, :cond_4

    .line 2716
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2721
    :cond_2
    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2723
    iput-boolean v5, p0, Landroid/widget/HorizontalScrollView;->mIsQCShown:Z

    .line 2701
    .end local v0    # "restoreCount":I
    :goto_2
    return-void

    .line 2711
    .restart local v0    # "restoreCount":I
    :cond_3
    iget v2, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    .line 2712
    .local v2, "scrollY":I
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    int-to-float v3, v3

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 2717
    .end local v2    # "scrollY":I
    :cond_4
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    if-ne v3, v6, :cond_2

    .line 2718
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 2725
    .end local v0    # "restoreCount":I
    :cond_5
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mIsQCShown:Z

    goto :goto_2
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 11
    .param p1, "leftFocus"    # Z
    .param p2, "left"    # I
    .param p3, "right"    # I

    .prologue
    .line 1547
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Landroid/widget/HorizontalScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1548
    .local v2, "focusables":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 1557
    .local v1, "focusCandidate":Landroid/view/View;
    const/4 v3, 0x0

    .line 1559
    .local v3, "foundFullyContainedFocusable":Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 1560
    .local v0, "count":I
    const/4 v4, 0x0

    .end local v1    # "focusCandidate":Landroid/view/View;
    .end local v3    # "foundFullyContainedFocusable":Z
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_8

    .line 1561
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1562
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 1563
    .local v8, "viewLeft":I
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v9

    .line 1565
    .local v9, "viewRight":I
    if-ge p2, v9, :cond_0

    if-ge v8, p3, :cond_0

    .line 1571
    if-ge p2, v8, :cond_2

    .line 1572
    if-ge v9, p3, :cond_1

    const/4 v7, 0x1

    .line 1574
    .local v7, "viewIsFullyContained":Z
    :goto_1
    if-nez v1, :cond_3

    .line 1576
    move-object v1, v5

    .line 1577
    .local v1, "focusCandidate":Landroid/view/View;
    move v3, v7

    .line 1560
    .end local v1    # "focusCandidate":Landroid/view/View;
    .end local v7    # "viewIsFullyContained":Z
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1572
    :cond_1
    const/4 v7, 0x0

    .restart local v7    # "viewIsFullyContained":Z
    goto :goto_1

    .line 1571
    .end local v7    # "viewIsFullyContained":Z
    :cond_2
    const/4 v7, 0x0

    .restart local v7    # "viewIsFullyContained":Z
    goto :goto_1

    .line 1580
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    if-ge v8, v10, :cond_4

    const/4 v6, 0x1

    .line 1583
    .local v6, "viewIsCloserToBoundary":Z
    :goto_3
    if-eqz v3, :cond_6

    .line 1584
    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    .line 1590
    move-object v1, v5

    .restart local v1    # "focusCandidate":Landroid/view/View;
    goto :goto_2

    .line 1581
    .end local v1    # "focusCandidate":Landroid/view/View;
    .end local v6    # "viewIsCloserToBoundary":Z
    :cond_4
    if-nez p1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v10

    if-le v9, v10, :cond_5

    const/4 v6, 0x1

    .restart local v6    # "viewIsCloserToBoundary":Z
    goto :goto_3

    .end local v6    # "viewIsCloserToBoundary":Z
    :cond_5
    const/4 v6, 0x0

    .restart local v6    # "viewIsCloserToBoundary":Z
    goto :goto_3

    .line 1593
    :cond_6
    if-eqz v7, :cond_7

    .line 1595
    move-object v1, v5

    .line 1596
    .restart local v1    # "focusCandidate":Landroid/view/View;
    const/4 v3, 0x1

    .restart local v3    # "foundFullyContainedFocusable":Z
    goto :goto_2

    .line 1597
    .end local v1    # "focusCandidate":Landroid/view/View;
    .end local v3    # "foundFullyContainedFocusable":Z
    :cond_7
    if-eqz v6, :cond_0

    .line 1602
    move-object v1, v5

    .restart local v1    # "focusCandidate":Landroid/view/View;
    goto :goto_2

    .line 1609
    .end local v1    # "focusCandidate":Landroid/view/View;
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "viewIsCloserToBoundary":Z
    .end local v7    # "viewIsFullyContained":Z
    .end local v8    # "viewLeft":I
    .end local v9    # "viewRight":I
    :cond_8
    return-object v1
.end method

.method private findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;
    .locals 4
    .param p1, "leftFocus"    # Z
    .param p2, "left"    # I
    .param p3, "preferredFocusable"    # Landroid/view/View;

    .prologue
    .line 1516
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 1517
    .local v0, "fadingEdgeLength":I
    add-int v1, p2, v0

    .line 1518
    .local v1, "leftWithoutFadingEdge":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    add-int/2addr v3, p2

    sub-int v2, v3, v0

    .line 1520
    .local v2, "rightWithoutFadingEdge":I
    if-eqz p3, :cond_0

    .line 1521
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v3

    if-ge v3, v2, :cond_0

    .line 1522
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 1523
    return-object p3

    .line 1526
    :cond_0
    invoke-direct {p0, p1, v1, v2}, Landroid/widget/HorizontalScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v3

    return-object v3
.end method

.method private getScrollRange()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1484
    const/4 v1, 0x0

    .line 1485
    .local v1, "scrollRange":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1486
    invoke-virtual {p0, v5}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1488
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    .line 1487
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1490
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return v1
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v13, 0x2

    const v12, 0x3ecccccd    # 0.4f

    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 2457
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 2456
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2459
    :pswitch_1
    const/4 v3, 0x0

    .line 2460
    .local v3, "offset":I
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v5

    .line 2462
    .local v5, "range":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionCurrentTime:J

    .line 2463
    iget-wide v8, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionCurrentTime:J

    iget-wide v10, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionStartTime:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    iput-wide v8, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionDurationTime:J

    .line 2465
    iget-wide v8, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionCurrentTime:J

    iget-wide v10, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollStartTime:J

    sub-long/2addr v8, v10

    iget-wide v10, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollTimeInterval:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_0

    .line 2468
    iget-wide v8, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x2

    cmp-long v8, v8, v10

    if-lez v8, :cond_1

    iget-wide v8, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x4

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    .line 2469
    iget v8, p0, Landroid/widget/HorizontalScrollView;->HOVERSCROLL_SPEED:I

    add-int/lit8 v8, v8, 0x2

    iput v8, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollSpeed:I

    .line 2477
    :goto_1
    iget v8, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollDirection:I

    if-ne v8, v7, :cond_4

    .line 2478
    iget v8, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollSpeed:I

    mul-int/lit8 v3, v8, -0x1

    .line 2487
    :goto_2
    if-gez v3, :cond_5

    iget v8, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-lez v8, :cond_5

    .line 2488
    invoke-virtual {p0, v3, v0}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    .line 2489
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    iget v9, p0, Landroid/widget/HorizontalScrollView;->HOVERSCROLL_DELAY:I

    int-to-long v10, v9

    invoke-virtual {v8, v7, v10, v11}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2470
    :cond_1
    iget-wide v8, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x4

    cmp-long v8, v8, v10

    if-ltz v8, :cond_2

    iget-wide v8, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x5

    cmp-long v8, v8, v10

    if-gez v8, :cond_2

    .line 2471
    iget v8, p0, Landroid/widget/HorizontalScrollView;->HOVERSCROLL_SPEED:I

    add-int/lit8 v8, v8, 0x4

    iput v8, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollSpeed:I

    goto :goto_1

    .line 2472
    :cond_2
    iget-wide v8, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x5

    cmp-long v8, v8, v10

    if-ltz v8, :cond_3

    .line 2473
    iget v8, p0, Landroid/widget/HorizontalScrollView;->HOVERSCROLL_SPEED:I

    add-int/lit8 v8, v8, 0x6

    iput v8, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollSpeed:I

    goto :goto_1

    .line 2475
    :cond_3
    iget v8, p0, Landroid/widget/HorizontalScrollView;->HOVERSCROLL_SPEED:I

    iput v8, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollSpeed:I

    goto :goto_1

    .line 2480
    :cond_4
    iget v8, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollSpeed:I

    mul-int/lit8 v3, v8, 0x1

    goto :goto_2

    .line 2490
    :cond_5
    if-lez v3, :cond_6

    iget v8, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-ge v8, v5, :cond_6

    .line 2491
    invoke-virtual {p0, v3, v0}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    .line 2492
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    iget v9, p0, Landroid/widget/HorizontalScrollView;->HOVERSCROLL_DELAY:I

    int-to-long v10, v9

    invoke-virtual {v8, v7, v10, v11}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2495
    :cond_6
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getOverScrollMode()I

    move-result v4

    .line 2496
    .local v4, "overscrollMode":I
    if-eqz v4, :cond_9

    .line 2497
    if-ne v4, v7, :cond_7

    if-lez v5, :cond_7

    move v0, v7

    .line 2499
    .local v0, "canOverscroll":Z
    :cond_7
    :goto_3
    if-eqz v0, :cond_8

    iget-boolean v8, p0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    if-eqz v8, :cond_a

    .line 2523
    :cond_8
    :goto_4
    if-nez v0, :cond_0

    iget-boolean v8, p0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    if-nez v8, :cond_0

    .line 2524
    iput-boolean v7, p0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    goto/16 :goto_0

    .end local v0    # "canOverscroll":Z
    :cond_9
    move v0, v7

    .line 2496
    goto :goto_3

    .line 2500
    .restart local v0    # "canOverscroll":Z
    :cond_a
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v8, :cond_b

    .line 2501
    iget v8, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollDirection:I

    if-ne v8, v7, :cond_d

    .line 2502
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v8

    iget v9, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    sub-int v2, v8, v9

    .line 2503
    .local v2, "height":I
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v9

    invoke-virtual {v8, v2, v9}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2504
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v8, v12}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2505
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_b

    .line 2506
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2517
    .end local v2    # "height":I
    :cond_b
    :goto_5
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v8, :cond_c

    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 2520
    :cond_c
    :goto_6
    iput-boolean v7, p0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    goto :goto_4

    .line 2508
    :cond_d
    iget v8, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollDirection:I

    if-ne v8, v13, :cond_b

    .line 2509
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v8

    iget v9, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    sub-int v2, v8, v9

    .line 2510
    .restart local v2    # "height":I
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v9

    invoke-virtual {v8, v2, v9}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2511
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v8, v12}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2512
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_b

    .line 2513
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_5

    .line 2518
    .end local v2    # "height":I
    :cond_e
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    goto :goto_6

    .line 2532
    .end local v0    # "canOverscroll":Z
    .end local v3    # "offset":I
    .end local v4    # "overscrollMode":I
    .end local v5    # "range":I
    :pswitch_2
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 2531
    const/high16 v9, 0x41f00000    # 30.0f

    invoke-static {v7, v9, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    .line 2532
    const/high16 v9, 0x3f000000    # 0.5f

    .line 2531
    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollSpeed:I

    .line 2534
    iget v8, p0, Landroid/widget/HorizontalScrollView;->mQCLocation:I

    if-ne v8, v7, :cond_10

    iget v8, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollSpeed:I

    neg-int v1, v8

    .line 2535
    .local v1, "distanceToMove":I
    :goto_7
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v6

    .line 2537
    .local v6, "scrollaleRange":I
    if-gez v1, :cond_11

    iget v8, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-lez v8, :cond_11

    .line 2539
    :cond_f
    invoke-virtual {p0, v1, v0}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    .line 2540
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    iget v8, p0, Landroid/widget/HorizontalScrollView;->HOVERSCROLL_DELAY:I

    int-to-long v8, v8

    invoke-virtual {v7, v13, v8, v9}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2534
    .end local v1    # "distanceToMove":I
    .end local v6    # "scrollaleRange":I
    :cond_10
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollSpeed:I

    .restart local v1    # "distanceToMove":I
    goto :goto_7

    .line 2537
    .restart local v6    # "scrollaleRange":I
    :cond_11
    if-lez v1, :cond_12

    iget v8, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-lt v8, v6, :cond_f

    .line 2543
    :cond_12
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getOverScrollMode()I

    move-result v4

    .line 2544
    .restart local v4    # "overscrollMode":I
    if-eqz v4, :cond_15

    .line 2545
    if-ne v4, v7, :cond_13

    if-lez v6, :cond_13

    move v0, v7

    .line 2547
    .restart local v0    # "canOverscroll":Z
    :cond_13
    :goto_8
    if-eqz v0, :cond_14

    iget-boolean v8, p0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    if-eqz v8, :cond_16

    .line 2571
    :cond_14
    :goto_9
    if-nez v0, :cond_0

    iget-boolean v8, p0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    if-nez v8, :cond_0

    .line 2572
    iput-boolean v7, p0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    goto/16 :goto_0

    .end local v0    # "canOverscroll":Z
    :cond_15
    move v0, v7

    .line 2544
    goto :goto_8

    .line 2548
    .restart local v0    # "canOverscroll":Z
    :cond_16
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v8, :cond_17

    .line 2549
    iget v8, p0, Landroid/widget/HorizontalScrollView;->mQCLocation:I

    if-ne v8, v7, :cond_19

    .line 2550
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v8

    iget v9, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    sub-int v2, v8, v9

    .line 2551
    .restart local v2    # "height":I
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v9

    invoke-virtual {v8, v2, v9}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2552
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v8, v12}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2553
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_17

    .line 2554
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2565
    .end local v2    # "height":I
    :cond_17
    :goto_a
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v8, :cond_18

    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-eqz v8, :cond_1a

    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 2568
    :cond_18
    :goto_b
    iput-boolean v7, p0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    goto :goto_9

    .line 2556
    :cond_19
    iget v8, p0, Landroid/widget/HorizontalScrollView;->mQCLocation:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_17

    .line 2557
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v8

    iget v9, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    sub-int v2, v8, v9

    .line 2558
    .restart local v2    # "height":I
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v9

    invoke-virtual {v8, v2, v9}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2559
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v8, v12}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2560
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_17

    .line 2561
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_a

    .line 2566
    .end local v2    # "height":I
    :cond_1a
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    goto :goto_b

    .line 2581
    .end local v0    # "canOverscroll":Z
    .end local v1    # "distanceToMove":I
    .end local v4    # "overscrollMode":I
    .end local v6    # "scrollaleRange":I
    :pswitch_3
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    if-eqz v8, :cond_0

    .line 2582
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v8, v7}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2583
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v8, v7}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 2457
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private hapticScrollTo(I)V
    .locals 2
    .param p1, "x"    # I

    .prologue
    .line 2267
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mLastHapticScrollX:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mPixelThresholdX:I

    if-le v0, v1, :cond_1

    iget v0, p0, Landroid/widget/HorizontalScrollView;->mLastScrollX:I

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-eq v0, v1, :cond_1

    .line 2269
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    iget-boolean v0, v0, Landroid/view/HapticPreDrawListener;->mSkipHapticCalls:Z

    if-nez v0, :cond_0

    .line 2270
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/HapticPreDrawListener;->mSkipHapticCalls:Z

    .line 2273
    :cond_0
    iput p1, p0, Landroid/widget/HorizontalScrollView;->mLastHapticScrollX:I

    .line 2274
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    iput v0, p0, Landroid/widget/HorizontalScrollView;->mLastScrollX:I

    .line 2265
    :cond_1
    return-void
.end method

.method private inChild(II)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 715
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 716
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 717
    .local v1, "scrollX":I
    invoke-virtual {p0, v2}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 718
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p2, v3, :cond_0

    .line 719
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge p2, v3, :cond_0

    .line 720
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt p1, v3, :cond_0

    .line 721
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge p1, v3, :cond_0

    const/4 v2, 0x1

    .line 718
    :cond_0
    return v2

    .line 723
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "scrollX":I
    :cond_1
    return v2
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 728
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 726
    :goto_0
    return-void

    .line 730
    :cond_0
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initScrollView()V
    .locals 3

    .prologue
    .line 362
    new-instance v1, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 363
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->setFocusable(Z)V

    .line 364
    const/high16 v1, 0x40000

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->setDescendantFocusability(I)V

    .line 365
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->setWillNotDraw(Z)V

    .line 367
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 368
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    .line 369
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mMinimumVelocity:I

    .line 370
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mMaximumVelocity:I

    .line 371
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mOverscrollDistance:I

    .line 372
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mOverflingDistance:I

    .line 361
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 736
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 734
    :cond_0
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2
    .param p1, "descendant"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 1783
    invoke-direct {p0, p1, v0}, Landroid/widget/HorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isQCSupported()Z
    .locals 1

    .prologue
    .line 2626
    const/4 v0, 0x0

    return v0
.end method

.method private static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 2
    .param p0, "child"    # Landroid/view/View;
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 2203
    if-ne p0, p1, :cond_0

    .line 2204
    const/4 v1, 0x1

    return v1

    .line 2207
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2208
    .local v0, "theParent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/View;

    .end local v0    # "theParent":Landroid/view/ViewParent;
    invoke-static {v0, p1}, Landroid/widget/HorizontalScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    :goto_0
    return v1

    .restart local v0    # "theParent":Landroid/view/ViewParent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;I)Z
    .locals 4
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "delta"    # I

    .prologue
    const/4 v0, 0x0

    .line 1791
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1792
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroid/widget/HorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1794
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, p2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 1795
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, p2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1794
    :cond_0
    return v0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 1329
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 1331
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1332
    .local v1, "pointerId":I
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    if-ne v1, v3, :cond_1

    .line 1336
    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 1337
    .local v0, "newPointerIndex":I
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    .line 1338
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 1339
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_1

    .line 1340
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1328
    .end local v0    # "newPointerIndex":I
    :cond_1
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 741
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 743
    iput-object v1, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 740
    :cond_0
    return-void
.end method

.method private resetTimeout()V
    .locals 4

    .prologue
    const/4 v1, 0x4

    .line 1169
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    if-eqz v0, :cond_1

    .line 1170
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1171
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 1173
    :cond_0
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1168
    :cond_1
    return-void
.end method

.method private scrollAndFocus(III)Z
    .locals 8
    .param p1, "direction"    # I
    .param p2, "left"    # I
    .param p3, "right"    # I

    .prologue
    .line 1692
    const/4 v4, 0x1

    .line 1694
    .local v4, "handled":Z
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v6

    .line 1695
    .local v6, "width":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    .line 1696
    .local v0, "containerLeft":I
    add-int v1, v0, v6

    .line 1697
    .local v1, "containerRight":I
    const/16 v7, 0x11

    if-ne p1, v7, :cond_2

    const/4 v3, 0x1

    .line 1699
    .local v3, "goLeft":Z
    :goto_0
    invoke-direct {p0, v3, p2, p3}, Landroid/widget/HorizontalScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 1700
    .local v5, "newFocused":Landroid/view/View;
    if-nez v5, :cond_0

    .line 1701
    move-object v5, p0

    .line 1704
    :cond_0
    if-lt p2, v0, :cond_3

    if-gt p3, v1, :cond_3

    .line 1705
    const/4 v4, 0x0

    .line 1711
    :goto_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v7

    if-eq v5, v7, :cond_1

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1713
    :cond_1
    return v4

    .line 1697
    .end local v3    # "goLeft":Z
    .end local v5    # "newFocused":Landroid/view/View;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 1707
    .restart local v3    # "goLeft":Z
    .restart local v5    # "newFocused":Landroid/view/View;
    :cond_3
    if-eqz v3, :cond_4

    sub-int v2, p2, v0

    .line 1708
    .local v2, "delta":I
    :goto_2
    invoke-direct {p0, v2}, Landroid/widget/HorizontalScrollView;->doScrollX(I)V

    goto :goto_1

    .line 1707
    .end local v2    # "delta":I
    :cond_4
    sub-int v2, p3, v1

    goto :goto_2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 1969
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1972
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroid/widget/HorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1974
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1976
    .local v0, "scrollDelta":I
    if-eqz v0, :cond_0

    .line 1977
    invoke-virtual {p0, v0, v2}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    .line 1968
    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "immediate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1990
    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1991
    .local v0, "delta":I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 1992
    .local v1, "scroll":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1993
    if-eqz p2, :cond_2

    .line 1994
    invoke-virtual {p0, v0, v2}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    .line 1999
    :cond_0
    :goto_1
    return v1

    .end local v1    # "scroll":Z
    :cond_1
    move v1, v2

    .line 1991
    goto :goto_0

    .line 1996
    .restart local v1    # "scroll":Z
    :cond_2
    invoke-virtual {p0, v0, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    goto :goto_1
.end method

.method private setupQuickController(I)V
    .locals 10
    .param p1, "where"    # I

    .prologue
    const v8, 0x1080540

    const v7, 0x108053f

    const/4 v9, 0x0

    .line 2630
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v5

    .line 2631
    .local v5, "w":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v3

    .line 2633
    .local v3, "h":I
    const/4 v2, 0x0

    .line 2634
    .local v2, "btnW":I
    const/4 v1, 0x0

    .line 2636
    .local v1, "btnH":I
    const/4 v0, 0x0

    .line 2638
    .local v0, "bounds":Landroid/graphics/Rect;
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mQCLocation:I

    .line 2639
    .local v4, "oldLocation":I
    iput p1, p0, Landroid/widget/HorizontalScrollView;->mQCLocation:I

    .line 2641
    packed-switch p1, :pswitch_data_0

    .line 2695
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :goto_0
    if-eqz v0, :cond_0

    .line 2696
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2697
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2629
    :cond_0
    return-void

    .line 2643
    .restart local v0    # "bounds":Landroid/graphics/Rect;
    :pswitch_0
    iget v6, p0, Landroid/widget/HorizontalScrollView;->mQCLocation:I

    if-eq v6, v4, :cond_1

    .line 2644
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    .line 2645
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 2648
    :cond_1
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 2649
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 2650
    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "bounds":Landroid/graphics/Rect;
    div-int/lit8 v6, v3, 0x2

    div-int/lit8 v7, v2, 0x2

    add-int/2addr v6, v7

    neg-int v6, v6

    div-int/lit8 v7, v3, 0x2

    div-int/lit8 v8, v2, 0x2

    sub-int/2addr v7, v8

    neg-int v7, v7

    invoke-direct {v0, v6, v9, v7, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2651
    .local v0, "bounds":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    sub-int v7, v3, v1

    div-int/lit8 v7, v7, 0x2

    sub-int v8, v3, v1

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v1

    invoke-direct {v6, v9, v7, v2, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 2655
    .local v0, "bounds":Landroid/graphics/Rect;
    :pswitch_1
    iget v6, p0, Landroid/widget/HorizontalScrollView;->mQCLocation:I

    if-eq v6, v4, :cond_2

    .line 2656
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    .line 2657
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 2660
    :cond_2
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 2661
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 2662
    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "bounds":Landroid/graphics/Rect;
    sub-int v6, v5, v2

    div-int/lit8 v6, v6, 0x2

    sub-int v7, v5, v2

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v2

    invoke-direct {v0, v6, v9, v7, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mQCRect:Landroid/graphics/Rect;

    .line 2663
    .local v0, "bounds":Landroid/graphics/Rect;
    goto/16 :goto_0

    .line 2666
    .local v0, "bounds":Landroid/graphics/Rect;
    :pswitch_2
    iget v6, p0, Landroid/widget/HorizontalScrollView;->mQCLocation:I

    if-eq v6, v4, :cond_3

    .line 2667
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x108053d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    .line 2668
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x108053e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 2671
    :cond_3
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 2672
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 2673
    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "bounds":Landroid/graphics/Rect;
    div-int/lit8 v6, v3, 0x2

    div-int/lit8 v7, v2, 0x2

    add-int/2addr v6, v7

    neg-int v6, v6

    sub-int v7, v5, v1

    div-int/lit8 v8, v3, 0x2

    div-int/lit8 v9, v2, 0x2

    sub-int/2addr v8, v9

    neg-int v8, v8

    invoke-direct {v0, v6, v7, v8, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2674
    .local v0, "bounds":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    sub-int v7, v5, v2

    sub-int v8, v3, v1

    div-int/lit8 v8, v8, 0x2

    sub-int v9, v3, v1

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v1

    invoke-direct {v6, v7, v8, v5, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_0

    .line 2685
    .local v0, "bounds":Landroid/graphics/Rect;
    :pswitch_3
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 2686
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 2687
    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "bounds":Landroid/graphics/Rect;
    sub-int v6, v5, v2

    div-int/lit8 v6, v6, 0x2

    sub-int v7, v3, v1

    sub-int v8, v5, v2

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v2

    invoke-direct {v0, v6, v7, v8, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mQCRect:Landroid/graphics/Rect;

    .line 2688
    .local v0, "bounds":Landroid/graphics/Rect;
    goto/16 :goto_0

    .line 2641
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showPointerIcon(Landroid/view/MotionEvent;I)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "iconId"    # I

    .prologue
    .line 2594
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    .line 2595
    .local v0, "inputDevice":Landroid/view/InputDevice;
    if-eqz v0, :cond_0

    .line 2596
    invoke-virtual {v0, p2}, Landroid/view/InputDevice;->setPointerType(I)V

    .line 2593
    :goto_0
    return-void

    .line 2598
    :cond_0
    const-string/jumbo v1, "HorizontalScrollView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to change PointerIcon to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 437
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 438
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 436
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 446
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 447
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 445
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 464
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 465
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 468
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 463
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 455
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 456
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 454
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 11
    .param p1, "direction"    # I

    .prologue
    const/16 v10, 0x42

    const/4 v9, 0x0

    .line 1725
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1726
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 1728
    .end local v0    # "currentFocused":Landroid/view/View;
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v7

    invoke-virtual {v7, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 1730
    .local v4, "nextFocused":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMaxScrollAmount()I

    move-result v3

    .line 1732
    .local v3, "maxJump":I
    if-eqz v4, :cond_3

    invoke-direct {p0, v4, v3}, Landroid/widget/HorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1733
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1734
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Landroid/widget/HorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1735
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Landroid/widget/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    .line 1736
    .local v6, "scrollDelta":I
    if-nez v6, :cond_1

    .line 1737
    return v9

    .line 1739
    :cond_1
    invoke-direct {p0, v6}, Landroid/widget/HorizontalScrollView;->doScrollX(I)V

    .line 1740
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1763
    .end local v6    # "scrollDelta":I
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1764
    invoke-direct {p0, v0}, Landroid/widget/HorizontalScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    .line 1763
    if-eqz v7, :cond_2

    .line 1770
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getDescendantFocusability()I

    move-result v2

    .line 1771
    .local v2, "descendantFocusability":I
    const/high16 v7, 0x20000

    invoke-virtual {p0, v7}, Landroid/widget/HorizontalScrollView;->setDescendantFocusability(I)V

    .line 1772
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestFocus()Z

    .line 1773
    invoke-virtual {p0, v2}, Landroid/widget/HorizontalScrollView;->setDescendantFocusability(I)V

    .line 1775
    .end local v2    # "descendantFocusability":I
    :cond_2
    const/4 v7, 0x1

    return v7

    .line 1743
    :cond_3
    move v6, v3

    .line 1745
    .restart local v6    # "scrollDelta":I
    const/16 v7, 0x11

    if-ne p1, v7, :cond_5

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v7

    if-ge v7, v3, :cond_5

    .line 1746
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v6

    .line 1757
    :cond_4
    :goto_1
    if-nez v6, :cond_6

    .line 1758
    return v9

    .line 1747
    :cond_5
    if-ne p1, v10, :cond_4

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_4

    .line 1749
    invoke-virtual {p0, v9}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v1

    .line 1751
    .local v1, "daRight":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v8

    add-int v5, v7, v8

    .line 1753
    .local v5, "screenRight":I
    sub-int v7, v1, v5

    if-ge v7, v3, :cond_4

    .line 1754
    sub-int v6, v1, v5

    goto :goto_1

    .line 1760
    .end local v1    # "daRight":I
    .end local v5    # "screenRight":I
    :cond_6
    if-ne p1, v10, :cond_7

    .end local v6    # "scrollDelta":I
    :goto_2
    invoke-direct {p0, v6}, Landroid/widget/HorizontalScrollView;->doScrollX(I)V

    goto :goto_0

    .restart local v6    # "scrollDelta":I
    :cond_7
    neg-int v6, v6

    goto :goto_2
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 2

    .prologue
    .line 1879
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1859
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v1

    .line 1860
    .local v1, "count":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v5

    iget v6, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int v0, v5, v6

    .line 1861
    .local v0, "contentWidth":I
    if-nez v1, :cond_0

    .line 1862
    return v0

    .line 1865
    :cond_0
    invoke-virtual {p0, v7}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v3

    .line 1866
    .local v3, "scrollRange":I
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 1867
    .local v4, "scrollX":I
    sub-int v5, v3, v0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1868
    .local v2, "overscrollRight":I
    if-gez v4, :cond_2

    .line 1869
    sub-int/2addr v3, v4

    .line 1874
    :cond_1
    :goto_0
    return v3

    .line 1870
    :cond_2
    if-le v4, v2, :cond_1

    .line 1871
    sub-int v5, v4, v2

    add-int/2addr v3, v5

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 14

    .prologue
    const/4 v6, 0x0

    .line 1916
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1933
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 1934
    .local v3, "oldX":I
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    .line 1935
    .local v4, "oldY":I
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v12

    .line 1936
    .local v12, "x":I
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v13

    .line 1938
    .local v13, "y":I
    if-ne v3, v12, :cond_0

    if-eq v4, v13, :cond_1

    .line 1939
    :cond_0
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v5

    .line 1940
    .local v5, "range":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getOverScrollMode()I

    move-result v11

    .line 1941
    .local v11, "overscrollMode":I
    if-eqz v11, :cond_3

    .line 1942
    const/4 v0, 0x1

    if-ne v11, v0, :cond_4

    if-lez v5, :cond_4

    const/4 v10, 0x1

    .line 1944
    .local v10, "canOverscroll":Z
    :goto_0
    sub-int v1, v12, v3

    sub-int v2, v13, v4

    .line 1945
    iget v7, p0, Landroid/widget/HorizontalScrollView;->mOverflingDistance:I

    move-object v0, p0

    move v8, v6

    move v9, v6

    .line 1944
    invoke-virtual/range {v0 .. v9}, Landroid/widget/HorizontalScrollView;->overScrollBy(IIIIIIIIZ)Z

    .line 1946
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1, v3, v4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 1948
    if-eqz v10, :cond_1

    .line 1949
    if-gez v12, :cond_5

    if-ltz v3, :cond_5

    .line 1950
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 1957
    .end local v5    # "range":I
    .end local v10    # "canOverscroll":Z
    .end local v11    # "overscrollMode":I
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1958
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    .line 1915
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_2
    return-void

    .line 1941
    .restart local v3    # "oldX":I
    .restart local v4    # "oldY":I
    .restart local v5    # "range":I
    .restart local v11    # "overscrollMode":I
    .restart local v12    # "x":I
    .restart local v13    # "y":I
    :cond_3
    const/4 v10, 0x1

    .restart local v10    # "canOverscroll":Z
    goto :goto_0

    .line 1942
    .end local v10    # "canOverscroll":Z
    :cond_4
    const/4 v10, 0x0

    .restart local v10    # "canOverscroll":Z
    goto :goto_0

    .line 1951
    :cond_5
    if-le v12, v5, :cond_1

    if-gt v3, v5, :cond_1

    .line 1952
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_1
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 10
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v9, 0x0

    .line 2011
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v7

    if-nez v7, :cond_0

    return v9

    .line 2013
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v6

    .line 2014
    .local v6, "width":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v3

    .line 2015
    .local v3, "screenLeft":I
    add-int v4, v3, v6

    .line 2017
    .local v4, "screenRight":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v1

    .line 2020
    .local v1, "fadingEdge":I
    iget v7, p1, Landroid/graphics/Rect;->left:I

    if-lez v7, :cond_1

    .line 2021
    add-int/2addr v3, v1

    .line 2025
    :cond_1
    iget v7, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v9}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 2026
    sub-int/2addr v4, v1

    .line 2029
    :cond_2
    const/4 v5, 0x0

    .line 2031
    .local v5, "scrollXDelta":I
    iget v7, p1, Landroid/graphics/Rect;->right:I

    if-le v7, v4, :cond_5

    iget v7, p1, Landroid/graphics/Rect;->left:I

    if-le v7, v3, :cond_5

    .line 2036
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-le v7, v6, :cond_4

    .line 2038
    iget v7, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v3

    add-int/lit8 v5, v7, 0x0

    .line 2045
    :goto_0
    invoke-virtual {p0, v9}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v2

    .line 2046
    .local v2, "right":I
    sub-int v0, v2, v4

    .line 2047
    .local v0, "distanceToRight":I
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2065
    .end local v0    # "distanceToRight":I
    .end local v2    # "right":I
    :cond_3
    :goto_1
    return v5

    .line 2041
    :cond_4
    iget v7, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v4

    add-int/lit8 v5, v7, 0x0

    goto :goto_0

    .line 2049
    :cond_5
    iget v7, p1, Landroid/graphics/Rect;->left:I

    if-ge v7, v3, :cond_3

    iget v7, p1, Landroid/graphics/Rect;->right:I

    if-ge v7, v4, :cond_3

    .line 2054
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-le v7, v6, :cond_6

    .line 2056
    iget v7, p1, Landroid/graphics/Rect;->right:I

    sub-int v7, v4, v7

    rsub-int/lit8 v5, v7, 0x0

    .line 2063
    :goto_2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v7

    neg-int v7, v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    .line 2059
    :cond_6
    iget v7, p1, Landroid/graphics/Rect;->left:I

    sub-int v7, v3, v7

    rsub-int/lit8 v5, v7, 0x0

    goto :goto_2
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 953
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 956
    .local v0, "action":I
    const/16 v10, 0x9

    if-ne v0, v10, :cond_1

    .line 957
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v7

    .line 959
    .local v7, "toolType":I
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/widget/HorizontalScrollView;->mNeedsHoverScroll:Z

    .line 962
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isHoveringUIEnabled()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-boolean v10, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollEnable:Z

    if-eqz v10, :cond_2

    .line 967
    :goto_0
    iget-boolean v10, p0, Landroid/widget/HorizontalScrollView;->mNeedsHoverScroll:Z

    if-eqz v10, :cond_0

    const/4 v10, 0x2

    if-ne v7, v10, :cond_0

    .line 969
    iget-object v10, p0, Landroid/widget/HorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 970
    const-string/jumbo v11, "pen_hovering"

    const/4 v12, 0x0

    .line 969
    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 970
    const/4 v11, 0x1

    .line 969
    if-ne v10, v11, :cond_3

    const/4 v4, 0x1

    .line 972
    .local v4, "isHoveringOn":Z
    :goto_1
    if-nez v4, :cond_0

    .line 973
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/HorizontalScrollView;->mNeedsHoverScroll:Z

    .line 978
    .end local v4    # "isHoveringOn":Z
    :cond_0
    iget-boolean v10, p0, Landroid/widget/HorizontalScrollView;->mNeedsHoverScroll:Z

    if-eqz v10, :cond_1

    const/4 v10, 0x3

    if-ne v7, v10, :cond_1

    .line 979
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/HorizontalScrollView;->mNeedsHoverScroll:Z

    .line 984
    .end local v7    # "toolType":I
    :cond_1
    iget-boolean v10, p0, Landroid/widget/HorizontalScrollView;->mNeedsHoverScroll:Z

    if-nez v10, :cond_4

    .line 985
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    return v10

    .line 963
    .restart local v7    # "toolType":I
    :cond_2
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/HorizontalScrollView;->mNeedsHoverScroll:Z

    goto :goto_0

    .line 969
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 989
    .end local v7    # "toolType":I
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v8, v10

    .line 990
    .local v8, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v9, v10

    .line 991
    .local v9, "y":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v1

    .line 992
    .local v1, "childCount":I
    const/4 v2, 0x0

    .line 993
    .local v2, "contentRightSide":I
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v6

    .line 995
    .local v6, "range":I
    iget v10, p0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    if-gtz v10, :cond_5

    .line 997
    const/high16 v10, 0x41c80000    # 25.0f

    .line 998
    iget-object v11, p0, Landroid/widget/HorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    .line 997
    const/4 v12, 0x1

    .line 996
    invoke-static {v12, v10, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    .line 998
    const/high16 v11, 0x3f000000    # 0.5f

    .line 996
    add-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, p0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    .line 1001
    :cond_5
    if-eqz v1, :cond_6

    .line 1002
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v10

    iget v11, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    sub-int v2, v10, v11

    .line 1005
    :cond_6
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_f

    const/4 v5, 0x1

    .line 1008
    .local v5, "isPossibleTooltype":Z
    :goto_2
    iget-object v10, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    if-nez v10, :cond_7

    .line 1009
    new-instance v10, Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-direct {v10, p0}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;-><init>(Landroid/widget/HorizontalScrollView;)V

    iput-object v10, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    .line 1012
    :cond_7
    iget v10, p0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    if-le v8, v10, :cond_10

    iget v10, p0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    sub-int v10, v2, v10

    if-ge v8, v10, :cond_10

    .line 1018
    :cond_8
    iget-object v10, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1019
    iget-object v10, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 1020
    const/16 v10, 0x4e21

    invoke-direct {p0, p1, v10}, Landroid/widget/HorizontalScrollView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 1023
    :cond_9
    iget-object v10, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1024
    iget-object v10, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 1027
    :cond_a
    iget v10, p0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    if-le v8, v10, :cond_b

    iget v10, p0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    sub-int v10, v2, v10

    if-ge v8, v10, :cond_b

    .line 1028
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    .line 1031
    :cond_b
    iget-boolean v10, p0, Landroid/widget/HorizontalScrollView;->mHoverAreaEnter:Z

    if-nez v10, :cond_c

    iget-wide v10, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollStartTime:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_d

    .line 1032
    :cond_c
    const/16 v10, 0x4e21

    invoke-direct {p0, p1, v10}, Landroid/widget/HorizontalScrollView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 1034
    :cond_d
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionStartTime:J

    .line 1035
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollStartTime:J

    .line 1036
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/HorizontalScrollView;->mHoverAreaEnter:Z

    .line 1039
    iget v10, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    if-eqz v10, :cond_e

    .line 1040
    const/4 v10, 0x0

    iput v10, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    .line 1041
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    .line 1044
    :cond_e
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    return v10

    .line 1005
    .end local v5    # "isPossibleTooltype":Z
    :cond_f
    const/4 v5, 0x0

    .restart local v5    # "isPossibleTooltype":Z
    goto :goto_2

    .line 1012
    :cond_10
    if-eqz v6, :cond_8

    .line 1013
    if-ltz v8, :cond_11

    iget v10, p0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    if-gt v8, v10, :cond_11

    iget v10, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-gtz v10, :cond_11

    iget-boolean v10, p0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    .line 1012
    if-nez v10, :cond_8

    .line 1014
    :cond_11
    iget v10, p0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    sub-int v10, v2, v10

    if-lt v8, v10, :cond_12

    if-gt v8, v2, :cond_12

    iget v10, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-lt v10, v6, :cond_12

    iget-boolean v10, p0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    .line 1012
    if-nez v10, :cond_8

    .line 1015
    :cond_12
    if-eqz v5, :cond_13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v10

    const/16 v11, 0x20

    if-eq v10, v11, :cond_8

    .line 1016
    :cond_13
    if-eqz v5, :cond_8

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isLockScreenMode()Z

    move-result v10

    .line 1012
    if-nez v10, :cond_8

    .line 1047
    iget-boolean v10, p0, Landroid/widget/HorizontalScrollView;->mHoverAreaEnter:Z

    if-nez v10, :cond_14

    .line 1048
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollStartTime:J

    .line 1050
    :cond_14
    const/4 v10, 0x7

    if-ne v0, v10, :cond_15

    .line 1051
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->resetTimeout()V

    .line 1054
    :cond_15
    packed-switch v0, :pswitch_data_0

    .line 1165
    :cond_16
    :goto_3
    :pswitch_0
    const/4 v10, 0x1

    return v10

    .line 1056
    :pswitch_1
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/widget/HorizontalScrollView;->mHoverAreaEnter:Z

    .line 1058
    if-ltz v8, :cond_17

    iget v10, p0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    if-gt v8, v10, :cond_17

    .line 1060
    iget-object v10, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_16

    .line 1061
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionStartTime:J

    .line 1062
    const/16 v10, 0x4e31

    invoke-direct {p0, p1, v10}, Landroid/widget/HorizontalScrollView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 1063
    const/4 v10, 0x1

    iput v10, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollDirection:I

    .line 1064
    iget-object v10, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 1067
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->isQCSupported()Z

    move-result v10

    if-eqz v10, :cond_16

    const/4 v10, -0x1

    invoke-virtual {p0, v10}, Landroid/widget/HorizontalScrollView;->canScrollHorizontally(I)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 1068
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Landroid/widget/HorizontalScrollView;->setupQuickController(I)V

    .line 1069
    const/4 v10, 0x1

    iput v10, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    goto :goto_3

    .line 1072
    :cond_17
    iget v10, p0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    sub-int v10, v2, v10

    if-lt v8, v10, :cond_16

    if-gt v8, v2, :cond_16

    .line 1074
    iget-object v10, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_16

    .line 1075
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionStartTime:J

    .line 1076
    const/16 v10, 0x4e2d

    invoke-direct {p0, p1, v10}, Landroid/widget/HorizontalScrollView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 1077
    const/4 v10, 0x2

    iput v10, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollDirection:I

    .line 1078
    iget-object v10, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 1081
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->isQCSupported()Z

    move-result v10

    if-eqz v10, :cond_16

    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Landroid/widget/HorizontalScrollView;->canScrollHorizontally(I)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 1082
    const/4 v10, 0x3

    invoke-direct {p0, v10}, Landroid/widget/HorizontalScrollView;->setupQuickController(I)V

    .line 1083
    const/4 v10, 0x1

    iput v10, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    goto :goto_3

    .line 1092
    :pswitch_2
    iget-boolean v10, p0, Landroid/widget/HorizontalScrollView;->mHoverAreaEnter:Z

    if-nez v10, :cond_18

    .line 1093
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/widget/HorizontalScrollView;->mHoverAreaEnter:Z

    .line 1094
    const/16 v10, 0xa

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1095
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    return v10

    .line 1098
    :cond_18
    if-ltz v8, :cond_1b

    iget v10, p0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    if-gt v8, v10, :cond_1b

    .line 1100
    iget-object v10, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_16

    .line 1101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionStartTime:J

    .line 1103
    iget-boolean v10, p0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    if-eqz v10, :cond_19

    iget v10, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollDirection:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1a

    .line 1104
    :cond_19
    const/16 v10, 0x4e31

    invoke-direct {p0, p1, v10}, Landroid/widget/HorizontalScrollView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 1107
    :cond_1a
    const/4 v10, 0x1

    iput v10, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollDirection:I

    .line 1108
    iget-object v10, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 1111
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->isQCSupported()Z

    move-result v10

    if-eqz v10, :cond_16

    iget v10, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    if-nez v10, :cond_16

    const/4 v10, -0x1

    invoke-virtual {p0, v10}, Landroid/widget/HorizontalScrollView;->canScrollHorizontally(I)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 1112
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Landroid/widget/HorizontalScrollView;->setupQuickController(I)V

    .line 1113
    const/4 v10, 0x1

    iput v10, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    goto/16 :goto_3

    .line 1116
    :cond_1b
    iget v10, p0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    sub-int v10, v2, v10

    if-lt v8, v10, :cond_16

    if-gt v8, v2, :cond_16

    .line 1118
    iget-object v10, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_16

    .line 1119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionStartTime:J

    .line 1121
    iget-boolean v10, p0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    if-eqz v10, :cond_1c

    iget v10, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollDirection:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1d

    .line 1122
    :cond_1c
    const/16 v10, 0x4e2d

    invoke-direct {p0, p1, v10}, Landroid/widget/HorizontalScrollView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 1125
    :cond_1d
    const/4 v10, 0x2

    iput v10, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollDirection:I

    .line 1126
    iget-object v10, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 1129
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->isQCSupported()Z

    move-result v10

    if-eqz v10, :cond_16

    iget v10, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    if-nez v10, :cond_16

    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Landroid/widget/HorizontalScrollView;->canScrollHorizontally(I)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 1130
    const/4 v10, 0x3

    invoke-direct {p0, v10}, Landroid/widget/HorizontalScrollView;->setupQuickController(I)V

    .line 1131
    const/4 v10, 0x1

    iput v10, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    goto/16 :goto_3

    .line 1139
    :pswitch_3
    iget-object v10, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_1e

    .line 1140
    iget-object v10, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 1143
    :cond_1e
    const/16 v10, 0x4e21

    invoke-direct {p0, p1, v10}, Landroid/widget/HorizontalScrollView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 1145
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionStartTime:J

    .line 1146
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollStartTime:J

    .line 1147
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    .line 1148
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/HorizontalScrollView;->mHoverAreaEnter:Z

    .line 1151
    iget v10, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_20

    .line 1153
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v3

    .line 1154
    .local v3, "im":Landroid/hardware/input/InputManager;
    iget-object v10, p0, Landroid/widget/HorizontalScrollView;->mQCRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_1f

    if-eqz v3, :cond_20

    const/4 v10, -0x1

    const/16 v11, -0x100

    const/16 v12, 0x140

    invoke-virtual {v3, v10, v11, v12}, Landroid/hardware/input/InputManager;->getScanCodeState(III)I

    move-result v10

    if-nez v10, :cond_20

    .line 1155
    :cond_1f
    const/4 v10, 0x0

    iput v10, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    .line 1156
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    .line 1160
    .end local v3    # "im":Landroid/hardware/input/InputManager;
    :cond_20
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    return v10

    .line 1054
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 595
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 609
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 612
    .local v0, "action":I
    if-nez v0, :cond_3

    .line 613
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    if-ne v1, v4, :cond_2

    .line 614
    iget-boolean v1, p0, Landroid/widget/HorizontalScrollView;->mIsQCShown:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mQCRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 615
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v1, v4}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 616
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v1, v4}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 620
    :cond_0
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v1, v5}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 622
    iput v5, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    .line 623
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    .line 624
    return v4

    .line 627
    :cond_1
    iput v6, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    .line 655
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 630
    :cond_3
    if-ne v0, v5, :cond_4

    .line 631
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    if-ne v1, v5, :cond_2

    .line 633
    return v4

    .line 635
    :cond_4
    if-eq v0, v4, :cond_5

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 636
    :cond_5
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    if-ne v1, v5, :cond_2

    .line 638
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v1, v4}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 639
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v1, v4}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 642
    :cond_6
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v1, v5}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 643
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v1, v5}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 646
    :cond_7
    iput-boolean v6, p0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    .line 649
    iput v6, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    .line 650
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    .line 651
    return v4
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    .line 2308
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2309
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_3

    .line 2310
    iget v2, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 2311
    .local v2, "scrollX":I
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2312
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 2313
    .local v1, "restoreCount":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    sub-int v0, v4, v5

    .line 2315
    .local v0, "height":I
    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2316
    neg-int v4, v0

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2317
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v5

    invoke-virtual {v4, v0, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2318
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2319
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    .line 2321
    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2323
    .end local v0    # "height":I
    .end local v1    # "restoreCount":I
    :cond_1
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2324
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 2325
    .restart local v1    # "restoreCount":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    .line 2326
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    sub-int v0, v4, v5

    .line 2328
    .restart local v0    # "height":I
    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2329
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    neg-int v4, v4

    int-to-float v4, v4

    .line 2330
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v5, v3

    neg-int v5, v5

    int-to-float v5, v5

    .line 2329
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2331
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v0, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2332
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2333
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    .line 2335
    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2340
    .end local v0    # "height":I
    .end local v1    # "restoreCount":I
    .end local v2    # "scrollX":I
    .end local v3    # "width":I
    :cond_3
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    if-eqz v4, :cond_4

    .line 2341
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;->drawQuickController(Landroid/graphics/Canvas;)V

    .line 2307
    :cond_4
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    .line 2385
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 2386
    const-string/jumbo v0, "layout:fillViewPort"

    iget-boolean v1, p0, Landroid/widget/HorizontalScrollView;->mFillViewport:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 2384
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v5, 0x11

    const/4 v4, 0x0

    const/16 v6, 0x42

    .line 667
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    .line 669
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->canScroll()Z

    move-result v7

    if-nez v7, :cond_3

    .line 670
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 671
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 672
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 673
    .end local v0    # "currentFocused":Landroid/view/View;
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    invoke-virtual {v5, p0, v0, v6}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 675
    .local v3, "nextFocused":Landroid/view/View;
    if-eqz v3, :cond_1

    if-eq v3, p0, :cond_1

    .line 676
    invoke-virtual {v3, v6}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    .line 675
    :cond_1
    return v4

    .line 678
    .end local v3    # "nextFocused":Landroid/view/View;
    :cond_2
    return v4

    .line 681
    :cond_3
    const/4 v2, 0x0

    .line 682
    .local v2, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_4

    .line 684
    const/4 v1, 0x0

    .line 685
    .local v1, "direction":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 706
    .end local v2    # "handled":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 707
    invoke-static {v1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/HorizontalScrollView;->playSoundEffect(I)V

    .line 711
    .end local v1    # "direction":I
    :cond_4
    return v2

    .line 687
    .restart local v1    # "direction":I
    .restart local v2    # "handled":Z
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_5

    .line 688
    invoke-virtual {p0, v5}, Landroid/widget/HorizontalScrollView;->arrowScroll(I)Z

    move-result v2

    .line 692
    .local v2, "handled":Z
    :goto_1
    const/16 v1, 0x11

    .line 693
    goto :goto_0

    .line 690
    .local v2, "handled":Z
    :cond_5
    invoke-virtual {p0, v5}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    move-result v2

    .local v2, "handled":Z
    goto :goto_1

    .line 695
    .local v2, "handled":Z
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_6

    .line 696
    invoke-virtual {p0, v6}, Landroid/widget/HorizontalScrollView;->arrowScroll(I)Z

    move-result v2

    .line 700
    .local v2, "handled":Z
    :goto_2
    const/16 v1, 0x42

    .line 701
    goto :goto_0

    .line 698
    .local v2, "handled":Z
    :cond_6
    invoke-virtual {p0, v6}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    move-result v2

    .local v2, "handled":Z
    goto :goto_2

    .line 703
    .local v2, "handled":Z
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    if-eqz v4, :cond_7

    move v4, v5

    :goto_3
    invoke-virtual {p0, v4}, Landroid/widget/HorizontalScrollView;->pageScroll(I)Z

    goto :goto_0

    :cond_7
    move v4, v6

    goto :goto_3

    .line 685
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public fling(I)V
    .locals 17
    .param p1, "velocityX"    # I

    .prologue
    .line 2219
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 2220
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    sub-int v16, v1, v2

    .line 2221
    .local v16, "width":I
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v15

    .line 2223
    .local v15, "right":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    .line 2224
    sub-int v4, v15, v16

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    div-int/lit8 v10, v16, 0x2

    .line 2223
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2224
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move/from16 v4, p1

    .line 2223
    invoke-virtual/range {v1 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 2226
    if-lez p1, :cond_3

    const/4 v13, 0x1

    .line 2228
    .local v13, "movingRight":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v12

    .line 2230
    .local v12, "currentFocused":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v1

    .line 2229
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v1, v12}, Landroid/widget/HorizontalScrollView;->findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;

    move-result-object v14

    .line 2232
    .local v14, "newFocused":Landroid/view/View;
    if-nez v14, :cond_0

    .line 2233
    move-object/from16 v14, p0

    .line 2236
    :cond_0
    if-eq v14, v12, :cond_1

    .line 2237
    if-eqz v13, :cond_4

    const/16 v1, 0x42

    :goto_1
    invoke-virtual {v14, v1}, Landroid/view/View;->requestFocus(I)Z

    .line 2240
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    .line 2218
    .end local v12    # "currentFocused":Landroid/view/View;
    .end local v13    # "movingRight":Z
    .end local v14    # "newFocused":Landroid/view/View;
    .end local v15    # "right":I
    .end local v16    # "width":I
    :cond_2
    return-void

    .line 2226
    .restart local v15    # "right":I
    .restart local v16    # "width":I
    :cond_3
    const/4 v13, 0x0

    .restart local v13    # "movingRight":Z
    goto :goto_0

    .line 2237
    .restart local v12    # "currentFocused":Landroid/view/View;
    .restart local v14    # "newFocused":Landroid/view/View;
    :cond_4
    const/16 v1, 0x11

    goto :goto_1
.end method

.method public fullScroll(I)Z
    .locals 6
    .param p1, "direction"    # I

    .prologue
    const/4 v5, 0x0

    .line 1661
    const/16 v4, 0x42

    if-ne p1, v4, :cond_1

    const/4 v1, 0x1

    .line 1662
    .local v1, "right":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    .line 1664
    .local v3, "width":I
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1665
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v3, v4, Landroid/graphics/Rect;->right:I

    .line 1667
    if-eqz v1, :cond_0

    .line 1668
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    .line 1669
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 1670
    invoke-virtual {p0, v5}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1671
    .local v2, "view":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 1672
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1676
    .end local v0    # "count":I
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v4, v5}, Landroid/widget/HorizontalScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .line 1661
    .end local v1    # "right":Z
    .end local v3    # "width":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "right":Z
    goto :goto_0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1451
    const-class v0, Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 3

    .prologue
    .line 324
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 325
    const/4 v1, 0x0

    return v1

    .line 328
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 329
    .local v0, "length":I
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-ge v1, v0, :cond_1

    .line 330
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    return v1

    .line 333
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    return v1
.end method

.method public getMaxScrollAmount()I
    .locals 2

    .prologue
    .line 357
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mRight:I

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 338
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 339
    const/4 v3, 0x0

    return v3

    .line 342
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 343
    .local v0, "length":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int v1, v3, v4

    .line 344
    .local v1, "rightEdge":I
    invoke-virtual {p0, v5}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    sub-int/2addr v3, v4

    sub-int v2, v3, v1

    .line 345
    .local v2, "span":I
    if-ge v2, v0, :cond_1

    .line 346
    int-to-float v3, v2

    int-to-float v4, v0

    div-float/2addr v3, v4

    return v3

    .line 349
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    return v3
.end method

.method public getTouchSlop()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    return v0
.end method

.method public isFillViewport()Z
    .locals 1

    .prologue
    .line 492
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mFillViewport:Z

    return v0
.end method

.method public isLockScreenMode()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 885
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "keyguard"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 886
    .local v3, "keyguardManager":Landroid/app/KeyguardManager;
    const/4 v2, 0x0

    .line 887
    .local v2, "isLockState":Z
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    .line 889
    .local v2, "isLockState":Z
    const-string/jumbo v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    .line 890
    .local v4, "windowManager":Landroid/view/IWindowManager;
    const/4 v0, 0x1

    .line 891
    .local v0, "isCoverOpen":Z
    if-eqz v4, :cond_0

    .line 894
    const/4 v0, 0x1

    .line 900
    :cond_0
    const/4 v1, 0x0

    .line 901
    .local v1, "isLockScreenAndCoverOpen":Z
    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 903
    .local v1, "isLockScreenAndCoverOpen":Z
    :goto_0
    return v1

    .local v1, "isLockScreenAndCoverOpen":Z
    :cond_1
    move v1, v5

    .line 901
    goto :goto_0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    .prologue
    .line 515
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    .prologue
    const/4 v6, 0x0

    .line 1885
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1887
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    add-int v2, v4, v5

    .line 1889
    .local v2, "horizontalPadding":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1888
    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v1

    .line 1893
    .local v1, "childWidthMeasureSpec":I
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1892
    invoke-static {p3, v4, v5}, Landroid/widget/HorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 1894
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1884
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .prologue
    const/4 v6, 0x0

    .line 1900
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1903
    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    add-int/2addr v4, v5

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    add-int/2addr v4, p5

    .line 1904
    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1902
    invoke-static {p4, v4, v5}, Landroid/widget/HorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 1905
    .local v0, "childHeightMeasureSpec":I
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    add-int/2addr v4, v5

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    add-int v3, v4, p3

    .line 1908
    .local v3, "usedTotal":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    sub-int/2addr v4, v3

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1907
    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v1

    .line 1911
    .local v1, "childWidthMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1899
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 383
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 387
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 382
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 398
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 403
    :cond_0
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    if-eqz v0, :cond_1

    .line 404
    iput v2, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    .line 407
    :cond_1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 397
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1347
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    .line 1348
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1385
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    return v5

    .line 1350
    :pswitch_0
    iget-boolean v5, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-nez v5, :cond_0

    .line 1352
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    .line 1353
    const/16 v5, 0x9

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v5

    neg-float v1, v5

    .line 1366
    .local v1, "hscroll":F
    :goto_0
    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_0

    .line 1367
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHorizontalScrollFactor()F

    move-result v5

    mul-float/2addr v5, v1

    float-to-int v0, v5

    .line 1368
    .local v0, "delta":I
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v4

    .line 1369
    .local v4, "range":I
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 1370
    .local v3, "oldScrollX":I
    add-int v2, v3, v0

    .line 1371
    .local v2, "newScrollX":I
    if-gez v2, :cond_3

    .line 1372
    const/4 v2, 0x0

    .line 1376
    :cond_1
    :goto_1
    if-eq v2, v3, :cond_0

    .line 1377
    iget v5, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-super {p0, v2, v5}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1378
    const/4 v5, 0x1

    return v5

    .line 1355
    .end local v0    # "delta":I
    .end local v1    # "hscroll":F
    .end local v2    # "newScrollX":I
    .end local v3    # "oldScrollX":I
    .end local v4    # "range":I
    :cond_2
    const/16 v5, 0xa

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .restart local v1    # "hscroll":F
    goto :goto_0

    .line 1373
    .restart local v0    # "delta":I
    .restart local v2    # "newScrollX":I
    .restart local v3    # "oldScrollX":I
    .restart local v4    # "range":I
    :cond_3
    if-le v2, v4, :cond_1

    .line 1374
    move v2, v4

    goto :goto_1

    .line 1348
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v0, 0x0

    .line 1475
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1476
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1477
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 1478
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 1479
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 1480
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1474
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1457
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1458
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v0

    .line 1459
    .local v0, "scrollRange":I
    if-lez v0, :cond_1

    .line 1460
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1461
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-lez v1, :cond_0

    .line 1462
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1463
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1465
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-ge v1, v0, :cond_1

    .line 1466
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1467
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1456
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 768
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 769
    .local v7, "action":I
    const/4 v0, 0x2

    if-ne v7, v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_0

    .line 770
    return v1

    .line 773
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 774
    return v1

    .line 777
    :cond_1
    and-int/lit16 v0, v7, 0xff

    packed-switch v0, :pswitch_data_0

    .line 875
    :cond_2
    :goto_0
    :pswitch_0
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    return v0

    .line 788
    :pswitch_1
    iget v8, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 789
    .local v8, "activePointerId":I
    if-eq v8, v2, :cond_2

    .line 794
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    .line 795
    .local v10, "pointerIndex":I
    if-ne v10, v2, :cond_3

    .line 796
    const-string/jumbo v0, "HorizontalScrollView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid pointerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 797
    const-string/jumbo v2, " in onInterceptTouchEvent"

    .line 796
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 801
    :cond_3
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v11, v0

    .line 802
    .local v11, "x":I
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    sub-int v0, v11, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 803
    .local v12, "xDiff":I
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    if-le v12, v0, :cond_2

    .line 804
    iput-boolean v1, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 805
    iput v11, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    .line 806
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->initVelocityTrackerIfNotExists()V

    .line 807
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 808
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 814
    .end local v8    # "activePointerId":I
    .end local v10    # "pointerIndex":I
    .end local v11    # "x":I
    .end local v12    # "xDiff":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v11, v0

    .line 815
    .restart local v11    # "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p0, v11, v0}, Landroid/widget/HorizontalScrollView;->inChild(II)Z

    move-result v0

    if-nez v0, :cond_4

    .line 816
    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 817
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->recycleVelocityTracker()V

    goto :goto_0

    .line 825
    :cond_4
    iput v11, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    .line 826
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_5

    .line 827
    iput v11, p0, Landroid/widget/HorizontalScrollView;->mLastHapticScrollX:I

    .line 829
    :cond_5
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 831
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->initOrResetVelocityTracker()V

    .line 832
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 839
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->canScroll()Z

    move-result v3

    :cond_6
    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    goto/16 :goto_0

    .line 846
    .end local v11    # "x":I
    :pswitch_3
    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 847
    iput v2, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 848
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v4

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 849
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    goto/16 :goto_0

    .line 853
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    .line 854
    .local v9, "index":I
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    .line 855
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    goto/16 :goto_0

    .line 859
    .end local v9    # "index":I
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 863
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    .line 864
    .restart local v10    # "pointerIndex":I
    if-gez v10, :cond_7

    .line 865
    return v1

    .line 867
    :cond_7
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    goto/16 :goto_0

    .line 777
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 2133
    const/4 v9, 0x0

    .line 2134
    .local v9, "childWidth":I
    const/4 v7, 0x0

    .line 2136
    .local v7, "childMargins":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2137
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 2138
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 2139
    .local v8, "childParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v0, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v1, v8, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int v7, v0, v1

    .line 2142
    .end local v8    # "childParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    sub-int v0, p4, p2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeftWithForeground()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2143
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingRightWithForeground()I

    move-result v1

    .line 2142
    sub-int/2addr v0, v1

    sub-int v6, v0, v7

    .line 2145
    .local v6, "available":I
    if-le v9, v6, :cond_4

    const/4 v5, 0x1

    .local v5, "forceLeftGravity":Z
    :goto_0
    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    .line 2147
    invoke-virtual/range {v0 .. v5}, Landroid/widget/HorizontalScrollView;->layoutChildren(IIIIZ)V

    .line 2149
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsLayoutDirty:Z

    .line 2151
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-static {v0, p0}, Landroid/widget/HorizontalScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2152
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/widget/HorizontalScrollView;->scrollToChild(Landroid/view/View;)V

    .line 2154
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 2156
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2158
    sub-int v0, p4, p2

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v0, v1

    sub-int v0, v9, v0

    .line 2157
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 2159
    .local v10, "scrollRange":I
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mSavedState:Landroid/widget/HorizontalScrollView$SavedState;

    if-eqz v0, :cond_6

    .line 2160
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2161
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mSavedState:Landroid/widget/HorizontalScrollView$SavedState;

    iget v0, v0, Landroid/widget/HorizontalScrollView$SavedState;->scrollOffsetFromStart:I

    sub-int v0, v10, v0

    .line 2160
    :goto_1
    iput v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 2163
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mSavedState:Landroid/widget/HorizontalScrollView$SavedState;

    .line 2170
    :cond_2
    :goto_2
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-le v0, v10, :cond_7

    .line 2171
    iput v10, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 2178
    .end local v10    # "scrollRange":I
    :cond_3
    :goto_3
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 2132
    return-void

    .line 2145
    .end local v5    # "forceLeftGravity":Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_0

    .line 2162
    .restart local v5    # "forceLeftGravity":Z
    .restart local v10    # "scrollRange":I
    :cond_5
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mSavedState:Landroid/widget/HorizontalScrollView$SavedState;

    iget v0, v0, Landroid/widget/HorizontalScrollView$SavedState;->scrollOffsetFromStart:I

    goto :goto_1

    .line 2165
    :cond_6
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2166
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    sub-int v0, v10, v0

    iput v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    goto :goto_2

    .line 2172
    :cond_7
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-gez v0, :cond_3

    .line 2173
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    goto :goto_3
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v10, 0x0

    .line 528
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 530
    iget-boolean v9, p0, Landroid/widget/HorizontalScrollView;->mFillViewport:Z

    if-nez v9, :cond_0

    .line 531
    return-void

    .line 534
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 535
    .local v7, "widthMode":I
    if-nez v7, :cond_1

    .line 536
    return-void

    .line 539
    :cond_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v9

    if-lez v9, :cond_2

    .line 540
    invoke-virtual {p0, v10}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 543
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 544
    .local v5, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget v6, v9, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 545
    .local v6, "targetSdkVersion":I
    const/16 v9, 0x17

    if-lt v6, v9, :cond_4

    .line 546
    iget v9, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    iget v10, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    add-int/2addr v9, v10

    iget v10, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v9, v10

    iget v10, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int v8, v9, v10

    .line 547
    .local v8, "widthPadding":I
    iget v9, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    iget v10, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    add-int/2addr v9, v10

    iget v10, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v9, v10

    iget v10, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int v4, v9, v10

    .line 553
    .local v4, "heightPadding":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v9

    sub-int v3, v9, v8

    .line 554
    .local v3, "desiredWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    if-ge v9, v3, :cond_2

    .line 556
    const/high16 v9, 0x40000000    # 2.0f

    .line 555
    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 558
    .local v2, "childWidthMeasureSpec":I
    iget v9, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 557
    invoke-static {p2, v4, v9}, Landroid/widget/HorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 559
    .local v1, "childHeightMeasureSpec":I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 564
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childHeightMeasureSpec":I
    .end local v2    # "childWidthMeasureSpec":I
    .end local v3    # "desiredWidth":I
    .end local v4    # "heightPadding":I
    .end local v5    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v6    # "targetSdkVersion":I
    .end local v8    # "widthPadding":I
    :cond_2
    iget-boolean v9, p0, Landroid/widget/HorizontalScrollView;->mChangedTheme:Z

    if-eqz v9, :cond_3

    .line 565
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->twUpdateBackgroundBounds()V

    .line 527
    :cond_3
    return-void

    .line 549
    .restart local v0    # "child":Landroid/view/View;
    .restart local v5    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v6    # "targetSdkVersion":I
    :cond_4
    iget v9, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    iget v10, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    add-int v8, v9, v10

    .line 550
    .restart local v8    # "widthPadding":I
    iget v9, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    iget v10, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    add-int v4, v9, v10

    .restart local v4    # "heightPadding":I
    goto :goto_0
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 9
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1397
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1398
    iget v7, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 1399
    .local v7, "oldX":I
    iget v8, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    .line 1400
    .local v8, "oldY":I
    iput p1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 1401
    iput p2, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    .line 1402
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidateParentIfNeeded()V

    .line 1403
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1, v7, v8}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 1404
    if-eqz p3, :cond_0

    .line 1405
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v4

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 1411
    .end local v7    # "oldX":I
    .end local v8    # "oldY":I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->awakenScrollBars()Z

    .line 1395
    return-void

    .line 1408
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    goto :goto_0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2093
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 2094
    const/16 p1, 0x42

    .line 2099
    :cond_0
    :goto_0
    if-nez p2, :cond_2

    .line 2100
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2104
    .local v0, "nextFocus":Landroid/view/View;
    :goto_1
    if-nez v0, :cond_3

    .line 2105
    return v3

    .line 2095
    .end local v0    # "nextFocus":Landroid/view/View;
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 2096
    const/16 p1, 0x11

    goto :goto_0

    .line 2101
    :cond_2
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 2108
    .restart local v0    # "nextFocus":Landroid/view/View;
    :cond_3
    invoke-direct {p0, v0}, Landroid/widget/HorizontalScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2109
    return v3

    .line 2112
    :cond_4
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    return v1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 2357
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x12

    if-le v1, v2, :cond_0

    instance-of v1, p1, Landroid/widget/HorizontalScrollView$SavedState;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 2363
    check-cast v0, Landroid/widget/HorizontalScrollView$SavedState;

    .line 2364
    .local v0, "ss":Landroid/widget/HorizontalScrollView$SavedState;
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2365
    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mSavedState:Landroid/widget/HorizontalScrollView$SavedState;

    .line 2366
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    .line 2356
    return-void

    .line 2360
    .end local v0    # "ss":Landroid/widget/HorizontalScrollView$SavedState;
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2361
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 2371
    iget-object v2, p0, Landroid/widget/HorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x12

    if-gt v2, v3, :cond_0

    .line 2374
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    return-object v2

    .line 2376
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 2377
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/widget/HorizontalScrollView$SavedState;

    invoke-direct {v0, v1}, Landroid/widget/HorizontalScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2378
    .local v0, "ss":Landroid/widget/HorizontalScrollView$SavedState;
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    neg-int v2, v2

    :goto_0
    iput v2, v0, Landroid/widget/HorizontalScrollView$SavedState;->scrollOffsetFromStart:I

    .line 2379
    return-object v0

    .line 2378
    :cond_1
    iget v2, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 2183
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2185
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2186
    .local v0, "currentFocused":Landroid/view/View;
    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    .line 2187
    :cond_0
    return-void

    .line 2189
    :cond_1
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mRight:I

    iget v4, p0, Landroid/widget/HorizontalScrollView;->mLeft:I

    sub-int v1, v3, v4

    .line 2191
    .local v1, "maxJump":I
    invoke-direct {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2192
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2193
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v3}, Landroid/widget/HorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2194
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    .line 2195
    .local v2, "scrollDelta":I
    invoke-direct {p0, v2}, Landroid/widget/HorizontalScrollView;->doScrollX(I)V

    .line 2182
    .end local v2    # "scrollDelta":I
    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 26
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1180
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->initVelocityTrackerIfNotExists()V

    .line 1181
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1183
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v15

    .line 1185
    .local v15, "action":I
    and-int/lit16 v2, v15, 0xff

    packed-switch v2, :pswitch_data_0

    .line 1325
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v2, 0x1

    return v2

    .line 1187
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 1188
    const/4 v2, 0x0

    return v2

    .line 1190
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_2

    .line 1191
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    .line 1192
    .local v22, "parent":Landroid/view/ViewParent;
    if-eqz v22, :cond_2

    .line 1193
    const/4 v2, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1201
    .end local v22    # "parent":Landroid/view/ViewParent;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1202
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1206
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    .line 1207
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    goto :goto_0

    .line 1190
    :cond_4
    const/4 v2, 0x1

    goto :goto_1

    .line 1211
    :pswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v16

    .line 1212
    .local v16, "activePointerIndex":I
    const/4 v2, -0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_5

    .line 1213
    const/16 v16, 0x0

    .line 1214
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 1215
    const-string/jumbo v2, "HorizontalScrollView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid pointerId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " in onTouchEvent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1219
    :cond_5
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v25, v0

    .line 1220
    .local v25, "x":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    sub-int v3, v2, v25

    .line 1221
    .local v3, "deltaX":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-nez v2, :cond_7

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    if-le v2, v4, :cond_7

    .line 1222
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    .line 1223
    .restart local v22    # "parent":Landroid/view/ViewParent;
    if-eqz v22, :cond_6

    .line 1224
    const/4 v2, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1226
    :cond_6
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 1227
    if-lez v3, :cond_b

    .line 1228
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    sub-int/2addr v3, v2

    .line 1233
    .end local v22    # "parent":Landroid/view/ViewParent;
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    .line 1235
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    .line 1237
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    move/from16 v19, v0

    .line 1238
    .local v19, "oldX":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    move/from16 v20, v0

    .line 1239
    .local v20, "oldY":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v7

    .line 1240
    .local v7, "range":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getOverScrollMode()I

    move-result v21

    .line 1241
    .local v21, "overscrollMode":I
    if-eqz v21, :cond_c

    .line 1242
    const/4 v2, 0x1

    move/from16 v0, v21

    if-ne v0, v2, :cond_d

    if-lez v7, :cond_d

    const/16 v17, 0x1

    .line 1246
    .local v17, "canOverscroll":Z
    :goto_3
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 1247
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/HorizontalScrollView;->mOverscrollDistance:I

    .line 1246
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 1247
    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v2, p0

    .line 1246
    invoke-virtual/range {v2 .. v11}, Landroid/widget/HorizontalScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1249
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    .line 1257
    :cond_8
    :goto_4
    if-eqz v17, :cond_0

    .line 1258
    add-int v23, v19, v3

    .line 1259
    .local v23, "pulledToX":I
    if-gez v23, :cond_f

    .line 1260
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    int-to-float v4, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 1261
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v5, v6, v5

    .line 1260
    invoke-virtual {v2, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 1262
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1263
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1272
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_0

    .line 1273
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1274
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    goto/16 :goto_0

    .line 1230
    .end local v7    # "range":I
    .end local v17    # "canOverscroll":Z
    .end local v19    # "oldX":I
    .end local v20    # "oldY":I
    .end local v21    # "overscrollMode":I
    .end local v23    # "pulledToX":I
    .restart local v22    # "parent":Landroid/view/ViewParent;
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    add-int/2addr v3, v2

    goto/16 :goto_2

    .line 1241
    .end local v22    # "parent":Landroid/view/ViewParent;
    .restart local v7    # "range":I
    .restart local v19    # "oldX":I
    .restart local v20    # "oldY":I
    .restart local v21    # "overscrollMode":I
    :cond_c
    const/16 v17, 0x1

    .restart local v17    # "canOverscroll":Z
    goto :goto_3

    .line 1242
    .end local v17    # "canOverscroll":Z
    :cond_d
    const/16 v17, 0x0

    .restart local v17    # "canOverscroll":Z
    goto :goto_3

    .line 1252
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HorizontalScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v2, :cond_8

    .line 1253
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/widget/HorizontalScrollView;->hapticScrollTo(I)V

    goto :goto_4

    .line 1265
    .restart local v23    # "pulledToX":I
    :cond_f
    move/from16 v0, v23

    if-le v0, v7, :cond_9

    .line 1266
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    int-to-float v4, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 1267
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 1266
    invoke-virtual {v2, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 1268
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1269
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_5

    .line 1280
    .end local v3    # "deltaX":I
    .end local v7    # "range":I
    .end local v16    # "activePointerIndex":I
    .end local v17    # "canOverscroll":Z
    .end local v19    # "oldX":I
    .end local v20    # "oldY":I
    .end local v21    # "overscrollMode":I
    .end local v23    # "pulledToX":I
    .end local v25    # "x":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    .line 1281
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    .line 1282
    .local v24, "velocityTracker":Landroid/view/VelocityTracker;
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalScrollView;->mMaximumVelocity:I

    int-to-float v2, v2

    const/16 v4, 0x3e8

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1283
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v18, v0

    .line 1285
    .local v18, "initialVelocity":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_10

    .line 1286
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HorizontalScrollView;->mMinimumVelocity:I

    if-le v2, v4, :cond_11

    .line 1287
    move/from16 v0, v18

    neg-int v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->fling(I)V

    .line 1296
    :cond_10
    :goto_6
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 1297
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 1298
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->recycleVelocityTracker()V

    .line 1300
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_0

    .line 1301
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1302
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    goto/16 :goto_0

    .line 1289
    :cond_11
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    .line 1290
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v12

    .line 1289
    const/4 v11, 0x0

    .line 1290
    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 1289
    invoke-virtual/range {v8 .. v14}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1291
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    goto :goto_6

    .line 1307
    .end local v18    # "initialVelocity":I
    .end local v24    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1308
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v12

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v8 .. v14}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1309
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    .line 1311
    :cond_12
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 1312
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 1313
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->recycleVelocityTracker()V

    .line 1315
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_0

    .line 1316
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1317
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    goto/16 :goto_0

    .line 1322
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Landroid/widget/HorizontalScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1185
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v1, 0x0

    .line 425
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 427
    if-nez p1, :cond_0

    .line 429
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    if-eqz v0, :cond_0

    .line 430
    iput v1, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    .line 424
    :cond_0
    return-void
.end method

.method public pageScroll(I)Z
    .locals 7
    .param p1, "direction"    # I

    .prologue
    const/4 v6, 0x0

    .line 1625
    const/16 v4, 0x42

    if-ne p1, v4, :cond_1

    const/4 v1, 0x1

    .line 1626
    .local v1, "right":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    .line 1628
    .local v3, "width":I
    if-eqz v1, :cond_2

    .line 1629
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v5

    add-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1630
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    .line 1631
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 1632
    invoke-virtual {p0, v6}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1633
    .local v2, "view":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 1634
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1643
    .end local v0    # "count":I
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 1645
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v4, v5}, Landroid/widget/HorizontalScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .line 1625
    .end local v1    # "right":Z
    .end local v3    # "width":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "right":Z
    goto :goto_0

    .line 1638
    .restart local v3    # "width":I
    :cond_2
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v5

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1639
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-gez v4, :cond_0

    .line 1640
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v6, v4, Landroid/graphics/Rect;->left:I

    goto :goto_1
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1417
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1418
    return v5

    .line 1420
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1446
    return v4

    .line 1423
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1424
    return v4

    .line 1426
    :cond_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    iget v3, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int v1, v2, v3

    .line 1427
    .local v1, "viewportWidth":I
    iget v2, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    add-int/2addr v2, v1

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1428
    .local v0, "targetScrollX":I
    iget v2, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-eq v0, v2, :cond_2

    .line 1429
    invoke-virtual {p0, v0, v4}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 1430
    return v5

    .line 1432
    :cond_2
    return v4

    .line 1435
    .end local v0    # "targetScrollX":I
    .end local v1    # "viewportWidth":I
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1436
    return v4

    .line 1438
    :cond_3
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    iget v3, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int v1, v2, v3

    .line 1439
    .restart local v1    # "viewportWidth":I
    iget v2, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    sub-int/2addr v2, v1

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1440
    .restart local v0    # "targetScrollX":I
    iget v2, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-eq v0, v2, :cond_4

    .line 1441
    invoke-virtual {p0, v0, v4}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 1442
    return v5

    .line 1444
    :cond_4
    return v4

    .line 1420
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
        0x1020039 -> :sswitch_1
        0x102003b -> :sswitch_0
    .end sparse-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 2070
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_0

    .line 2071
    invoke-direct {p0, p2}, Landroid/widget/HorizontalScrollView;->scrollToChild(Landroid/view/View;)V

    .line 2076
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2069
    return-void

    .line 2074
    :cond_0
    iput-object p2, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 2119
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2120
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2119
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 2122
    invoke-direct {p0, p2, p3}, Landroid/widget/HorizontalScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 749
    if-eqz p1, :cond_0

    .line 750
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->recycleVelocityTracker()V

    .line 752
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 748
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 2127
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsLayoutDirty:Z

    .line 2128
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 2126
    return-void
.end method

.method public scrollTo(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 2252
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 2253
    invoke-virtual {p0, v2}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2254
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {p1, v1, v2}, Landroid/widget/HorizontalScrollView;->clamp(III)I

    move-result p1

    .line 2255
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {p2, v1, v2}, Landroid/widget/HorizontalScrollView;->clamp(III)I

    move-result p2

    .line 2256
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    if-eq p2, v1, :cond_2

    .line 2257
    :cond_0
    iget-boolean v1, p0, Landroid/widget/HorizontalScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_1

    .line 2258
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;->hapticScrollTo(I)V

    .line 2260
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 2250
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public semSetHoverScrollMode(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 915
    if-eqz p1, :cond_0

    .line 916
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollEnable:Z

    .line 914
    :goto_0
    return-void

    .line 918
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollEnable:Z

    goto :goto_0
.end method

.method public semUseRatioMaintainedImage()V
    .locals 1

    .prologue
    .line 572
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mUseRatioMaintainedImage:Z

    .line 571
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1
    .param p1, "fillViewport"    # Z

    .prologue
    .line 505
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    .line 506
    iput-boolean p1, p0, Landroid/widget/HorizontalScrollView;->mFillViewport:Z

    .line 507
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    .line 504
    :cond_0
    return-void
.end method

.method public setHoverScrollDelay(I)V
    .locals 0
    .param p1, "hoverdelay"    # I

    .prologue
    .line 935
    iput p1, p0, Landroid/widget/HorizontalScrollView;->HOVERSCROLL_DELAY:I

    .line 934
    return-void
.end method

.method public setHoverScrollSpeed(I)V
    .locals 0
    .param p1, "hoverspeed"    # I

    .prologue
    .line 927
    iput p1, p0, Landroid/widget/HorizontalScrollView;->HOVERSCROLL_SPEED:I

    .line 926
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 7
    .param p1, "mode"    # I

    .prologue
    const/high16 v6, 0x60000000

    const/4 v4, 0x0

    .line 2280
    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    .line 2281
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-nez v3, :cond_1

    .line 2282
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2283
    .local v1, "context":Landroid/content/Context;
    new-instance v3, Landroid/widget/EdgeEffect;

    invoke-direct {v3, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    .line 2284
    new-instance v3, Landroid/widget/EdgeEffect;

    invoke-direct {v3, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    .line 2286
    const/4 v0, 0x0

    .line 2287
    .local v0, "IsParentThemeDeviceDefault":Z
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 2288
    .local v2, "outValue":Landroid/util/TypedValue;
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x11600cb

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2289
    iget v3, v2, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_0

    .line 2290
    const/4 v0, 0x1

    .line 2292
    :cond_0
    if-eqz v0, :cond_1

    instance-of v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v3, :cond_1

    .line 2293
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, v6}, Landroid/widget/EdgeEffect;->setColor(I)V

    .line 2294
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, v6}, Landroid/widget/EdgeEffect;->setColor(I)V

    .line 2302
    .end local v0    # "IsParentThemeDeviceDefault":Z
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "outValue":Landroid/util/TypedValue;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V

    .line 2279
    return-void

    .line 2299
    :cond_2
    iput-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    .line 2300
    iput-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    goto :goto_0
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .param p1, "smoothScrollingEnabled"    # Z

    .prologue
    .line 523
    iput-boolean p1, p0, Landroid/widget/HorizontalScrollView;->mSmoothScrollingEnabled:Z

    .line 522
    return-void
.end method

.method public setTouchSlop(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 212
    iput p1, p0, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    .line 211
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 1390
    const/4 v0, 0x1

    return v0
.end method

.method public final smoothScrollBy(II)V
    .locals 11
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    const/4 v10, 0x0

    .line 1820
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 1822
    return-void

    .line 1824
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/widget/HorizontalScrollView;->mLastScroll:J

    sub-long v0, v6, v8

    .line 1825
    .local v0, "duration":J
    const-wide/16 v6, 0xfa

    cmp-long v6, v0, v6

    if-lez v6, :cond_1

    .line 1826
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v6

    iget v7, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    sub-int v5, v6, v7

    .line 1827
    .local v5, "width":I
    invoke-virtual {p0, v10}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 1828
    .local v3, "right":I
    sub-int v6, v3, v5

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1829
    .local v2, "maxX":I
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 1830
    .local v4, "scrollX":I
    add-int v6, v4, p1

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int p1, v6, v4

    .line 1832
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v7, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-virtual {v6, v4, v7, p1, v10}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 1833
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    .line 1840
    .end local v2    # "maxX":I
    .end local v3    # "right":I
    .end local v4    # "scrollX":I
    .end local v5    # "width":I
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/widget/HorizontalScrollView;->mLastScroll:J

    .line 1819
    return-void

    .line 1835
    :cond_1
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1836
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1838
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method public final smoothScrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1850
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    .line 1849
    return-void
.end method

.method protected twUpdateBackgroundBounds()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 578
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 579
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 580
    return-void

    .line 583
    :cond_0
    iget-boolean v2, p0, Landroid/widget/HorizontalScrollView;->mChangedTheme:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/widget/HorizontalScrollView;->mUseRatioMaintainedImage:Z

    if-eqz v2, :cond_1

    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 584
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 585
    .local v1, "height":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getRight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 577
    .end local v1    # "height":I
    :goto_0
    return-void

    .line 587
    :cond_1
    invoke-super {p0}, Landroid/widget/FrameLayout;->twUpdateBackgroundBounds()V

    goto :goto_0
.end method

.method public updateCustomEdgeGlow(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "edgeeffectCustomEdge"    # Landroid/graphics/drawable/Drawable;
    .param p2, "edgeeffectCustomGlow"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 193
    return-void
.end method
