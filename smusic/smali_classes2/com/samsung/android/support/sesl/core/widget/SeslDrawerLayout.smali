.class public Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;
.super Landroid/view/ViewGroup;
.source "SeslDrawerLayout.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayoutImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ChildAccessibilityDelegate;,
        Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$AccessibilityDelegate;,
        Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;,
        Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;,
        Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;,
        Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$InsetsListener;,
        Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SimpleDrawerListener;,
        Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$DrawerListener;
    }
.end annotation


# static fields
.field private static final ALLOW_EDGE_LOCK:Z = false

.field static final CAN_HIDE_DESCENDANTS:Z

.field private static final CHILDREN_DISALLOW_INTERCEPT:Z = true

.field private static final DEFAULT_SCRIM_COLOR:I = -0x67000000

.field private static final DRAWER_ELEVATION:I = 0xa

.field static final LAYOUT_ATTRS:[I

.field public static final LOCK_MODE_LOCKED_CLOSED:I = 0x1

.field public static final LOCK_MODE_LOCKED_OPEN:I = 0x2

.field public static final LOCK_MODE_UNDEFINED:I = 0x3

.field public static final LOCK_MODE_UNLOCKED:I = 0x0

.field private static final MIN_DRAWER_MARGIN:I = 0x40

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field private static final PEEK_DELAY:I = 0xa0

.field private static final SET_DRAWER_SHADOW_FROM_ELEVATION:Z

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DrawerLayout"

.field private static final THEME_ATTRS:[I

.field private static final TOUCH_SLOP_SENSITIVITY:F = 1.0f


# instance fields
.field private final mChildAccessibilityDelegate:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ChildAccessibilityDelegate;

.field private mChildrenCanceledTouch:Z

.field private mDisallowInterceptRequested:Z

.field private mDrawStatusBarBackground:Z

.field private mDrawerElevation:F

.field private mDrawerState:I

.field private mFirstLayout:Z

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mLastInsets:Landroid/view/WindowInsets;

.field private final mLeftCallback:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;

.field private final mLeftDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

.field private mListener:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$DrawerListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$DrawerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLockModeEnd:I

.field private mLockModeLeft:I

.field private mLockModeRight:I

.field private mLockModeStart:I

.field private mMinDrawerMargin:I

.field private final mNonDrawerViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mRightCallback:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;

.field private final mRightDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

.field private mScrimColor:I

.field private mScrimOpacity:F

.field private mScrimPaint:Landroid/graphics/Paint;

.field private mShadowEnd:Landroid/graphics/drawable/Drawable;

.field private mShadowLeft:Landroid/graphics/drawable/Drawable;

.field private mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

.field private mShadowRight:Landroid/graphics/drawable/Drawable;

.field private mShadowRightResolved:Landroid/graphics/drawable/Drawable;

.field private mShadowStart:Landroid/graphics/drawable/Drawable;

.field private mStatusBarBackground:Landroid/graphics/drawable/Drawable;

.field private mTitleLeft:Ljava/lang/CharSequence;

.field private mTitleRight:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 170
    new-array v0, v1, [I

    const v3, 0x10100b3

    aput v3, v0, v2

    sput-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->LAYOUT_ATTRS:[I

    .line 175
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->CAN_HIDE_DESCENDANTS:Z

    .line 178
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    .line 335
    new-array v0, v1, [I

    const v1, 0x1010434

    aput v1, v0, v2

    sput-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->THEME_ATTRS:[I

    return-void

    :cond_0
    move v0, v2

    .line 175
    goto :goto_0

    :cond_1
    move v0, v2

    .line 178
    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 289
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 290
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 293
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 294
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x3

    .line 297
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 181
    new-instance v2, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ChildAccessibilityDelegate;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ChildAccessibilityDelegate;-><init>(Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;)V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mChildAccessibilityDelegate:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ChildAccessibilityDelegate;

    .line 187
    const/high16 v2, -0x67000000

    iput v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mScrimColor:I

    .line 189
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 197
    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mFirstLayout:Z

    .line 199
    iput v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeLeft:I

    .line 200
    iput v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeRight:I

    .line 201
    iput v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeStart:I

    .line 202
    iput v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeEnd:I

    .line 224
    iput-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    .line 225
    iput-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    .line 226
    iput-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    .line 227
    iput-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    .line 298
    const/high16 v2, 0x40000

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->setDescendantFocusability(I)V

    .line 299
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 300
    .local v0, "density":F
    const/high16 v2, 0x42800000    # 64.0f

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mMinDrawerMargin:I

    .line 301
    const/high16 v2, 0x43c80000    # 400.0f

    mul-float v1, v2, v0

    .line 303
    .local v1, "minVel":F
    new-instance v2, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;

    invoke-direct {v2, p0, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;-><init>(Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;I)V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLeftCallback:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;

    .line 304
    new-instance v2, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;-><init>(Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;I)V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mRightCallback:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;

    .line 306
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLeftCallback:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;

    invoke-static {p0, v6, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->create(Landroid/view/ViewGroup;FLcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;)Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLeftDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    .line 307
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLeftDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v2, v5}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 308
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLeftDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->setMinVelocity(F)V

    .line 309
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLeftCallback:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLeftDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->setDragger(Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;)V

    .line 311
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mRightCallback:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;

    invoke-static {p0, v6, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->create(Landroid/view/ViewGroup;FLcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;)Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mRightDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    .line 312
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mRightDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 313
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mRightDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->setMinVelocity(F)V

    .line 314
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mRightCallback:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mRightDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->setDragger(Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;)V

    .line 317
    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->setFocusableInTouchMode(Z)V

    .line 319
    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->setImportantForAccessibility(I)V

    .line 322
    new-instance v2, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$AccessibilityDelegate;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$AccessibilityDelegate;-><init>(Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 323
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->setMotionEventSplittingEnabled(Z)V

    .line 324
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getFitsSystemWindows()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 325
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->configureApplyInsets()V

    .line 326
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getDefaultStatusBarBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 329
    :cond_0
    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v2, v0

    iput v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mDrawerElevation:F

    .line 331
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    .line 332
    return-void
.end method

.method private applyMarginInsets(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .locals 5
    .param p1, "lp"    # Landroid/view/ViewGroup$MarginLayoutParams;
    .param p2, "gravity"    # I

    .prologue
    const/4 v4, 0x0

    .line 360
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLastInsets:Landroid/view/WindowInsets;

    .line 361
    .local v0, "wi":Landroid/view/WindowInsets;
    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    .line 362
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    .line 363
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    .line 362
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    .line 368
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 369
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 370
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 371
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 372
    return-void

    .line 364
    :cond_1
    const/4 v1, 0x5

    if-ne p2, v1, :cond_0

    .line 365
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    .line 366
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    .line 365
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    goto :goto_0
.end method

.method private configureApplyInsets()V
    .locals 1

    .prologue
    .line 340
    instance-of v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayoutImpl;

    if-eqz v0, :cond_0

    .line 341
    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$InsetsListener;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$InsetsListener;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 342
    const/16 v0, 0x500

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->setSystemUiVisibility(I)V

    .line 345
    :cond_0
    return-void
.end method

.method private dispatchChildInsets(Landroid/view/View;I)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "gravity"    # I

    .prologue
    const/4 v4, 0x0

    .line 348
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLastInsets:Landroid/view/WindowInsets;

    .line 349
    .local v0, "wi":Landroid/view/WindowInsets;
    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    .line 350
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    .line 351
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    .line 350
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    .line 356
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 357
    return-void

    .line 352
    :cond_1
    const/4 v1, 0x5

    if-ne p2, v1, :cond_0

    .line 353
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    .line 354
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    .line 353
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    goto :goto_0
.end method

.method private getDefaultStatusBarBackground()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->THEME_ATTRS:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 381
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 383
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 381
    return-object v1

    .line 383
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private getTopInset()I
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLastInsets:Landroid/view/WindowInsets;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static gravityToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "gravity"    # I

    .prologue
    .line 981
    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 982
    const-string v0, "LEFT"

    .line 987
    :goto_0
    return-object v0

    .line 984
    :cond_0
    and-int/lit8 v0, p0, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 985
    const-string v0, "RIGHT"

    goto :goto_0

    .line 987
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static hasOpaqueBackground(Landroid/view/View;)Z
    .locals 4
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 1272
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1273
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1274
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 1276
    :cond_0
    return v1
.end method

.method private hasPeekingDrawer()Z
    .locals 4

    .prologue
    .line 1776
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildCount()I

    move-result v0

    .line 1777
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1778
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    .line 1779
    .local v2, "lp":Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;
    iget-boolean v3, v2, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->isPeeking:Z

    if-eqz v3, :cond_0

    .line 1780
    const/4 v3, 0x1

    .line 1783
    .end local v2    # "lp":Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;
    :goto_1
    return v3

    .line 1777
    .restart local v2    # "lp":Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1783
    .end local v2    # "lp":Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private hasVisibleDrawer()Z
    .locals 1

    .prologue
    .line 1846
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static includeChildForAccessibility(Landroid/view/View;)Z
    .locals 2
    .param p0, "child"    # Landroid/view/View;

    .prologue
    .line 1986
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1988
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1986
    :goto_0
    return v0

    .line 1988
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mirror(Landroid/graphics/drawable/Drawable;I)Z
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "layoutDirection"    # I

    .prologue
    .line 1156
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1157
    :cond_0
    const/4 v0, 0x0

    .line 1161
    :goto_0
    return v0

    .line 1160
    :cond_1
    invoke-static {p1, p2}, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 1161
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private resolveLeftShadow()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 1114
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getLayoutDirection()I

    move-result v0

    .line 1116
    .local v0, "layoutDirection":I
    if-nez v0, :cond_0

    .line 1117
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1119
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    .line 1120
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    .line 1129
    :goto_0
    return-object v1

    .line 1123
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1125
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    .line 1126
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 1129
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private resolveRightShadow()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 1133
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getLayoutDirection()I

    move-result v0

    .line 1134
    .local v0, "layoutDirection":I
    if-nez v0, :cond_0

    .line 1135
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1137
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    .line 1138
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    .line 1147
    :goto_0
    return-object v1

    .line 1141
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1143
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    .line 1144
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 1147
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private resolveShadowDrawables()V
    .locals 1

    .prologue
    .line 1106
    sget-boolean v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v0, :cond_0

    .line 1111
    :goto_0
    return-void

    .line 1109
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->resolveLeftShadow()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    .line 1110
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->resolveRightShadow()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private updateChildrenImportantForAccessibility(Landroid/view/View;Z)V
    .locals 4
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "isDrawerOpen"    # Z

    .prologue
    .line 875
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildCount()I

    move-result v1

    .line 876
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 877
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 878
    .local v0, "child":Landroid/view/View;
    if-nez p2, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    if-ne v0, p1, :cond_2

    .line 882
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 876
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 885
    :cond_2
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_1

    .line 889
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    return-void
.end method


# virtual methods
.method public addDrawerListener(Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$DrawerListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$DrawerListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 539
    if-nez p1, :cond_0

    .line 546
    :goto_0
    return-void

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mListeners:Ljava/util/List;

    if-nez v0, :cond_1

    .line 543
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mListeners:Ljava/util/List;

    .line 545
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 7
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1812
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getDescendantFocusability()I

    move-result v5

    const/high16 v6, 0x60000

    if-ne v5, v6, :cond_0

    .line 1843
    :goto_0
    return-void

    .line 1818
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildCount()I

    move-result v1

    .line 1819
    .local v1, "childCount":I
    const/4 v3, 0x0

    .line 1820
    .local v3, "isDrawerOpen":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 1821
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1822
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1823
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1824
    const/4 v3, 0x1

    .line 1825
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1820
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1828
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1832
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    if-nez v3, :cond_5

    .line 1833
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1834
    .local v4, "nonDrawerViewsCount":I
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v4, :cond_5

    .line 1835
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1836
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    .line 1837
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1834
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1842
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "nonDrawerViewsCount":I
    :cond_5
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1958
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1960
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->findOpenDrawer()Landroid/view/View;

    move-result-object v0

    .line 1961
    .local v0, "openDrawer":Landroid/view/View;
    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1964
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1975
    :goto_0
    sget-boolean v1, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->CAN_HIDE_DESCENDANTS:Z

    if-nez v1, :cond_1

    .line 1976
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mChildAccessibilityDelegate:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ChildAccessibilityDelegate;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 1978
    :cond_1
    return-void

    .line 1969
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_0
.end method

.method cancelChildViewTouch()V
    .locals 11

    .prologue
    const/4 v5, 0x0

    .line 1862
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mChildrenCanceledTouch:Z

    if-nez v2, :cond_1

    .line 1863
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1864
    .local v0, "now":J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1866
    .local v8, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildCount()I

    move-result v9

    .line 1867
    .local v9, "childCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v9, :cond_0

    .line 1868
    invoke-virtual {p0, v10}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1867
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1870
    :cond_0
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1871
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mChildrenCanceledTouch:Z

    .line 1873
    .end local v0    # "now":J
    .end local v8    # "cancelEvent":Landroid/view/MotionEvent;
    .end local v9    # "childCount":I
    .end local v10    # "i":I
    :cond_1
    return-void
.end method

.method checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z
    .locals 2
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "checkFor"    # I

    .prologue
    .line 926
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v0

    .line 927
    .local v0, "absGravity":I
    and-int v1, v0, p2

    if-ne v1, p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1802
    instance-of v0, p1, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

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

.method public closeDrawer(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 1690
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->closeDrawer(IZ)V

    .line 1691
    return-void
.end method

.method public closeDrawer(IZ)V
    .locals 4
    .param p1, "gravity"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 1701
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 1702
    .local v0, "drawerView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 1703
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No drawer view found with gravity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1704
    invoke-static {p1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1706
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->closeDrawer(Landroid/view/View;Z)V

    .line 1707
    return-void
.end method

.method public closeDrawer(Landroid/view/View;)V
    .locals 1
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 1648
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->closeDrawer(Landroid/view/View;Z)V

    .line 1649
    return-void
.end method

.method public closeDrawer(Landroid/view/View;Z)V
    .locals 4
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1658
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1659
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a sliding drawer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1662
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    .line 1663
    .local v0, "lp":Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mFirstLayout:Z

    if-eqz v1, :cond_1

    .line 1664
    iput v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->onScreen:F

    .line 1665
    iput v3, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->openState:I

    .line 1680
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->invalidate()V

    .line 1681
    return-void

    .line 1666
    :cond_1
    if-eqz p2, :cond_3

    .line 1667
    iget v1, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->openState:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->openState:I

    .line 1669
    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1670
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLeftDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    neg-int v2, v2

    .line 1671
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1670
    invoke-virtual {v1, p1, v2, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    .line 1673
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mRightDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    .line 1676
    :cond_3
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->moveDrawerToOffset(Landroid/view/View;F)V

    .line 1677
    iget v1, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v1, v3, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->updateDrawerState(IILandroid/view/View;)V

    .line 1678
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public closeDrawers()V
    .locals 1

    .prologue
    .line 1538
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->closeDrawers(Z)V

    .line 1539
    return-void
.end method

.method closeDrawers(Z)V
    .locals 9
    .param p1, "peekingOnly"    # Z

    .prologue
    .line 1542
    const/4 v5, 0x0

    .line 1543
    .local v5, "needsInvalidate":Z
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildCount()I

    move-result v1

    .line 1544
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 1545
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1546
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    .line 1548
    .local v4, "lp":Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz p1, :cond_1

    iget-boolean v6, v4, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->isPeeking:Z

    if-nez v6, :cond_1

    .line 1544
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1552
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 1554
    .local v2, "childWidth":I
    const/4 v6, 0x3

    invoke-virtual {p0, v0, v6}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1555
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLeftDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    neg-int v7, v2

    .line 1556
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v8

    .line 1555
    invoke-virtual {v6, v0, v7, v8}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v6

    or-int/2addr v5, v6

    .line 1562
    :goto_2
    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->isPeeking:Z

    goto :goto_1

    .line 1558
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mRightDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    .line 1559
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v8

    .line 1558
    invoke-virtual {v6, v0, v7, v8}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v6

    or-int/2addr v5, v6

    goto :goto_2

    .line 1565
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childWidth":I
    .end local v4    # "lp":Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLeftCallback:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 1566
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mRightCallback:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 1568
    if-eqz v5, :cond_4

    .line 1569
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->invalidate()V

    .line 1571
    :cond_4
    return-void
.end method

.method public computeScroll()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1257
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildCount()I

    move-result v0

    .line 1258
    .local v0, "childCount":I
    const/4 v3, 0x0

    .line 1259
    .local v3, "scrimOpacity":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1260
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    iget v2, v4, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->onScreen:F

    .line 1261
    .local v2, "onscreen":F
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1259
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1263
    .end local v2    # "onscreen":F
    :cond_0
    iput v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mScrimOpacity:F

    .line 1266
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLeftDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v4, v6}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->continueSettling(Z)Z

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mRightDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->continueSettling(Z)Z

    move-result v5

    or-int/2addr v4, v5

    if-eqz v4, :cond_1

    .line 1267
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->postInvalidateOnAnimation()V

    .line 1269
    :cond_1
    return-void
.end method

.method dispatchOnDrawerClosed(Landroid/view/View;)V
    .locals 7
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 825
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    .line 826
    .local v2, "lp":Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;
    iget v4, v2, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->openState:I

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 827
    iput v6, v2, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->openState:I

    .line 829
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 832
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 833
    .local v1, "listenerCount":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 834
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$DrawerListener;

    invoke-interface {v4, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$DrawerListener;->onDrawerClosed(Landroid/view/View;)V

    .line 833
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 838
    .end local v0    # "i":I
    .end local v1    # "listenerCount":I
    :cond_0
    invoke-direct {p0, p1, v6}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    .line 843
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->hasWindowFocus()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 844
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 845
    .local v3, "rootView":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 846
    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 850
    .end local v3    # "rootView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method dispatchOnDrawerOpened(Landroid/view/View;)V
    .locals 5
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 853
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    .line 854
    .local v2, "lp":Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;
    iget v3, v2, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->openState:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_1

    .line 855
    iput v4, v2, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->openState:I

    .line 856
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 859
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 860
    .local v1, "listenerCount":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 861
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$DrawerListener;

    invoke-interface {v3, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$DrawerListener;->onDrawerOpened(Landroid/view/View;)V

    .line 860
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 865
    .end local v0    # "i":I
    .end local v1    # "listenerCount":I
    :cond_0
    invoke-direct {p0, p1, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    .line 868
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->hasWindowFocus()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 869
    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->sendAccessibilityEvent(I)V

    .line 872
    :cond_1
    return-void
.end method

.method dispatchOnDrawerSlide(Landroid/view/View;F)V
    .locals 3
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .prologue
    .line 892
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 895
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 896
    .local v1, "listenerCount":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 897
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$DrawerListener;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$DrawerListener;->onDrawerSlide(Landroid/view/View;F)V

    .line 896
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 900
    .end local v0    # "i":I
    .end local v1    # "listenerCount":I
    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 29
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 1340
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getHeight()I

    move-result v18

    .line 1341
    .local v18, "height":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v17

    .line 1342
    .local v17, "drawingContent":Z
    const/4 v13, 0x0

    .local v13, "clipLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getWidth()I

    move-result v14

    .line 1344
    .local v14, "clipRight":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v21

    .line 1345
    .local v21, "restoreCount":I
    if-eqz v17, :cond_4

    .line 1346
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildCount()I

    move-result v10

    .line 1347
    .local v10, "childCount":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    move/from16 v0, v19

    if-ge v0, v10, :cond_3

    .line 1348
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 1349
    .local v25, "v":Landroid/view/View;
    move-object/from16 v0, v25

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1350
    invoke-static/range {v25 .. v25}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->hasOpaqueBackground(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1351
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getHeight()I

    move-result v2

    move/from16 v0, v18

    if-ge v2, v0, :cond_1

    .line 1347
    :cond_0
    :goto_1
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 1355
    :cond_1
    const/4 v2, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1356
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getRight()I

    move-result v27

    .line 1357
    .local v27, "vright":I
    move/from16 v0, v27

    if-le v0, v13, :cond_0

    move/from16 v13, v27

    goto :goto_1

    .line 1359
    .end local v27    # "vright":I
    :cond_2
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLeft()I

    move-result v26

    .line 1360
    .local v26, "vleft":I
    move/from16 v0, v26

    if-ge v0, v14, :cond_0

    move/from16 v14, v26

    goto :goto_1

    .line 1363
    .end local v25    # "v":Landroid/view/View;
    .end local v26    # "vleft":I
    :cond_3
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getHeight()I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v2, v14, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1365
    .end local v10    # "childCount":I
    .end local v19    # "i":I
    :cond_4
    invoke-super/range {p0 .. p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v22

    .line 1366
    .local v22, "result":Z
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1368
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mScrimOpacity:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    if-eqz v17, :cond_6

    .line 1369
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mScrimColor:I

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    ushr-int/lit8 v9, v2, 0x18

    .line 1370
    .local v9, "baseAlpha":I
    int-to-float v2, v9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mScrimOpacity:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v20, v0

    .line 1371
    .local v20, "imag":I
    shl-int/lit8 v2, v20, 0x18

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mScrimColor:I

    const v4, 0xffffff

    and-int/2addr v3, v4

    or-int v15, v2, v3

    .line 1372
    .local v15, "color":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 1374
    int-to-float v3, v13

    const/4 v4, 0x0

    int-to-float v5, v14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getHeight()I

    move-result v2

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1399
    .end local v9    # "baseAlpha":I
    .end local v15    # "color":I
    .end local v20    # "imag":I
    :cond_5
    :goto_2
    return v22

    .line 1375
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7

    const/4 v2, 0x3

    .line 1376
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    .line 1378
    .local v23, "shadowWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v12

    .line 1379
    .local v12, "childRight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLeftDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->getEdgeSize()I

    move-result v16

    .line 1380
    .local v16, "drawerPeekDistance":I
    const/4 v2, 0x0

    int-to-float v3, v12

    move/from16 v0, v16

    int-to-float v4, v0

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1381
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 1382
    .local v8, "alpha":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v3

    add-int v4, v12, v23

    .line 1383
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 1382
    invoke-virtual {v2, v12, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1384
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v3, v8

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1385
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 1386
    .end local v8    # "alpha":F
    .end local v12    # "childRight":I
    .end local v16    # "drawerPeekDistance":I
    .end local v23    # "shadowWidth":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    const/4 v2, 0x5

    .line 1387
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    .line 1389
    .restart local v23    # "shadowWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v11

    .line 1390
    .local v11, "childLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getWidth()I

    move-result v2

    sub-int v24, v2, v11

    .line 1391
    .local v24, "showing":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mRightDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->getEdgeSize()I

    move-result v16

    .line 1392
    .restart local v16    # "drawerPeekDistance":I
    const/4 v2, 0x0

    move/from16 v0, v24

    int-to-float v3, v0

    move/from16 v0, v16

    int-to-float v4, v0

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1393
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 1394
    .restart local v8    # "alpha":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    sub-int v3, v11, v23

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1395
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 1394
    invoke-virtual {v2, v3, v4, v11, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v3, v8

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2
.end method

.method findDrawerWithGravity(I)Landroid/view/View;
    .locals 6
    .param p1, "gravity"    # I

    .prologue
    .line 961
    .line 962
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getLayoutDirection()I

    move-result v5

    .line 961
    invoke-static {p1, v5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v5

    and-int/lit8 v0, v5, 0x7

    .line 963
    .local v0, "absHorizGravity":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildCount()I

    move-result v3

    .line 964
    .local v3, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 965
    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 966
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v2

    .line 967
    .local v2, "childAbsGravity":I
    and-int/lit8 v5, v2, 0x7

    if-ne v5, v0, :cond_0

    .line 971
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childAbsGravity":I
    :goto_1
    return-object v1

    .line 964
    .restart local v1    # "child":Landroid/view/View;
    .restart local v2    # "childAbsGravity":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 971
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childAbsGravity":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method findOpenDrawer()Landroid/view/View;
    .locals 6

    .prologue
    .line 931
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildCount()I

    move-result v1

    .line 932
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 933
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 934
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    .line 935
    .local v2, "childLp":Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;
    iget v4, v2, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->openState:I

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 939
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childLp":Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;
    :goto_1
    return-object v0

    .line 932
    .restart local v0    # "child":Landroid/view/View;
    .restart local v2    # "childLp":Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 939
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childLp":Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method findVisibleDrawer()Landroid/view/View;
    .locals 4

    .prologue
    .line 1850
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildCount()I

    move-result v1

    .line 1851
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1852
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1853
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1857
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return-object v0

    .line 1851
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1857
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 1788
    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1807
    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1793
    instance-of v0, p1, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    check-cast p1, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;-><init>(Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;)V

    :goto_0
    return-object v0

    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getDrawerElevation()F
    .locals 1

    .prologue
    .line 421
    sget-boolean v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v0, :cond_0

    .line 422
    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mDrawerElevation:F

    .line 424
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDrawerLockMode(I)I
    .locals 7
    .param p1, "edgeGravity"    # I

    .prologue
    const/4 v6, 0x3

    .line 680
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getLayoutDirection()I

    move-result v1

    .line 682
    .local v1, "layoutDirection":I
    sparse-switch p1, :sswitch_data_0

    .line 725
    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 684
    :sswitch_0
    iget v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeLeft:I

    if-eq v5, v6, :cond_1

    .line 685
    iget v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeLeft:I

    goto :goto_0

    .line 687
    :cond_1
    if-nez v1, :cond_2

    iget v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeStart:I

    .line 689
    .local v2, "leftLockMode":I
    :goto_1
    if-eq v2, v6, :cond_0

    goto :goto_0

    .line 687
    .end local v2    # "leftLockMode":I
    :cond_2
    iget v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeEnd:I

    goto :goto_1

    .line 694
    :sswitch_1
    iget v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeRight:I

    if-eq v5, v6, :cond_3

    .line 695
    iget v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeRight:I

    goto :goto_0

    .line 697
    :cond_3
    if-nez v1, :cond_4

    iget v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeEnd:I

    .line 699
    .local v3, "rightLockMode":I
    :goto_2
    if-eq v3, v6, :cond_0

    move v2, v3

    .line 700
    goto :goto_0

    .line 697
    .end local v3    # "rightLockMode":I
    :cond_4
    iget v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeStart:I

    goto :goto_2

    .line 704
    :sswitch_2
    iget v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeStart:I

    if-eq v5, v6, :cond_5

    .line 705
    iget v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeStart:I

    goto :goto_0

    .line 707
    :cond_5
    if-nez v1, :cond_6

    iget v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeLeft:I

    .line 709
    .local v4, "startLockMode":I
    :goto_3
    if-eq v4, v6, :cond_0

    move v2, v4

    .line 710
    goto :goto_0

    .line 707
    .end local v4    # "startLockMode":I
    :cond_6
    iget v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeRight:I

    goto :goto_3

    .line 714
    :sswitch_3
    iget v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeEnd:I

    if-eq v5, v6, :cond_7

    .line 715
    iget v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeEnd:I

    goto :goto_0

    .line 717
    :cond_7
    if-nez v1, :cond_8

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeRight:I

    .line 719
    .local v0, "endLockMode":I
    :goto_4
    if-eq v0, v6, :cond_0

    move v2, v0

    .line 720
    goto :goto_0

    .line 717
    .end local v0    # "endLockMode":I
    :cond_8
    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeLeft:I

    goto :goto_4

    .line 682
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0x800003 -> :sswitch_2
        0x800005 -> :sswitch_3
    .end sparse-switch
.end method

.method public getDrawerLockMode(Landroid/view/View;)I
    .locals 4
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 737
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 738
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a drawer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 740
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    iget v0, v1, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->gravity:I

    .line 741
    .local v0, "drawerGravity":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getDrawerLockMode(I)I

    move-result v1

    return v1
.end method

.method public getDrawerTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "edgeGravity"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 774
    .line 775
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getLayoutDirection()I

    move-result v1

    .line 774
    invoke-static {p1, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 776
    .local v0, "absGravity":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 777
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mTitleLeft:Ljava/lang/CharSequence;

    .line 781
    :goto_0
    return-object v1

    .line 778
    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 779
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mTitleRight:Ljava/lang/CharSequence;

    goto :goto_0

    .line 781
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getDrawerViewAbsoluteGravity(Landroid/view/View;)I
    .locals 2
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 921
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    iget v0, v1, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->gravity:I

    .line 922
    .local v0, "gravity":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getLayoutDirection()I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    return v1
.end method

.method getDrawerViewOffset(Landroid/view/View;)F
    .locals 1
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 913
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->onScreen:F

    return v0
.end method

.method public getStatusBarBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method isContentView(Landroid/view/View;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1403
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->gravity:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDrawerOpen(I)Z
    .locals 2
    .param p1, "drawerGravity"    # I

    .prologue
    .line 1737
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 1738
    .local v0, "drawerView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1739
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v1

    .line 1741
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDrawerOpen(Landroid/view/View;)Z
    .locals 4
    .param p1, "drawer"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 1720
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1721
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a drawer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1723
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    .line 1724
    .local v0, "drawerLp":Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;
    iget v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->openState:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isDrawerView(Landroid/view/View;)Z
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 1407
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    iget v1, v2, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->gravity:I

    .line 1409
    .local v1, "gravity":I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    .line 1408
    invoke-static {v1, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 1410
    .local v0, "absGravity":I
    and-int/lit8 v2, v0, 0x3

    if-eqz v2, :cond_0

    move v2, v3

    .line 1418
    :goto_0
    return v2

    .line 1414
    :cond_0
    and-int/lit8 v2, v0, 0x5

    if-eqz v2, :cond_1

    move v2, v3

    .line 1416
    goto :goto_0

    .line 1418
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isDrawerVisible(I)Z
    .locals 2
    .param p1, "drawerGravity"    # I

    .prologue
    .line 1768
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 1769
    .local v0, "drawerView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1770
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    move-result v1

    .line 1772
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDrawerVisible(Landroid/view/View;)Z
    .locals 3
    .param p1, "drawer"    # Landroid/view/View;

    .prologue
    .line 1753
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1754
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1756
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->onScreen:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method moveDrawerToOffset(Landroid/view/View;F)V
    .locals 6
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .prologue
    .line 943
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getDrawerViewOffset(Landroid/view/View;)F

    move-result v2

    .line 944
    .local v2, "oldOffset":F
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 945
    .local v4, "width":I
    int-to-float v5, v4

    mul-float/2addr v5, v2

    float-to-int v3, v5

    .line 946
    .local v3, "oldPos":I
    int-to-float v5, v4

    mul-float/2addr v5, p2

    float-to-int v1, v5

    .line 947
    .local v1, "newPos":I
    sub-int v0, v1, v3

    .line 949
    .local v0, "dx":I
    const/4 v5, 0x3

    .line 950
    invoke-virtual {p0, p1, v5}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 949
    .end local v0    # "dx":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 951
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    .line 952
    return-void

    .line 950
    .restart local v0    # "dx":I
    :cond_0
    neg-int v0, v0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 998
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 999
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mFirstLayout:Z

    .line 1000
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 992
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 993
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mFirstLayout:Z

    .line 994
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 1328
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 1329
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mDrawStatusBarBackground:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1330
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getTopInset()I

    move-result v0

    .line 1331
    .local v0, "inset":I
    if-lez v0, :cond_0

    .line 1332
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getWidth()I

    move-result v2

    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1333
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1336
    .end local v0    # "inset":I
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1423
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1426
    .local v0, "action":I
    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLeftDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v8, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mRightDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    .line 1427
    invoke-virtual {v9, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    or-int v2, v8, v9

    .line 1429
    .local v2, "interceptForDrag":Z
    const/4 v3, 0x0

    .line 1431
    .local v3, "interceptForTap":Z
    packed-switch v0, :pswitch_data_0

    .line 1465
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->hasPeekingDrawer()Z

    move-result v8

    if-nez v8, :cond_1

    iget-boolean v8, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mChildrenCanceledTouch:Z

    if-eqz v8, :cond_2

    :cond_1
    move v6, v7

    :cond_2
    return v6

    .line 1433
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 1434
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 1435
    .local v5, "y":F
    iput v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mInitialMotionX:F

    .line 1436
    iput v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mInitialMotionY:F

    .line 1437
    iget v8, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mScrimOpacity:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3

    .line 1438
    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLeftDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    float-to-int v9, v4

    float-to-int v10, v5

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v1

    .line 1439
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1440
    const/4 v3, 0x1

    .line 1443
    .end local v1    # "child":Landroid/view/View;
    :cond_3
    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mDisallowInterceptRequested:Z

    .line 1444
    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_0

    .line 1450
    .end local v4    # "x":F
    .end local v5    # "y":F
    :pswitch_1
    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLeftDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->checkTouchSlop(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1451
    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLeftCallback:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;

    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 1452
    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mRightCallback:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;

    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->removeCallbacks()V

    goto :goto_0

    .line 1459
    :pswitch_2
    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->closeDrawers(Z)V

    .line 1460
    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mDisallowInterceptRequested:Z

    .line 1461
    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_0

    .line 1431
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1877
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->hasVisibleDrawer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1878
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1879
    const/4 v0, 0x1

    .line 1881
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1886
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 1887
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object v0

    .line 1888
    .local v0, "visibleDrawer":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1889
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->closeDrawers()V

    .line 1891
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 1893
    .end local v0    # "visibleDrawer":Landroid/view/View;
    :goto_0
    return v1

    .line 1891
    .restart local v0    # "visibleDrawer":Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1893
    .end local v0    # "visibleDrawer":Landroid/view/View;
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 23
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1166
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mInLayout:Z

    .line 1167
    sub-int v17, p4, p2

    .line 1168
    .local v17, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildCount()I

    move-result v6

    .line 1169
    .local v6, "childCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v6, :cond_9

    .line 1170
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1172
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 1169
    :cond_0
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1176
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    .line 1178
    .local v13, "lp":Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1179
    iget v0, v13, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->leftMargin:I

    move/from16 v18, v0

    iget v0, v13, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->topMargin:I

    move/from16 v19, v0

    iget v0, v13, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->leftMargin:I

    move/from16 v20, v0

    .line 1180
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    add-int v20, v20, v21

    iget v0, v13, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->topMargin:I

    move/from16 v21, v0

    .line 1181
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    add-int v21, v21, v22

    .line 1179
    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 1183
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 1184
    .local v10, "childWidth":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1188
    .local v7, "childHeight":I
    const/16 v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 1189
    neg-int v0, v10

    move/from16 v18, v0

    int-to-float v0, v10

    move/from16 v19, v0

    iget v0, v13, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->onScreen:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    add-int v8, v18, v19

    .line 1190
    .local v8, "childLeft":I
    add-int v18, v10, v8

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-float v0, v10

    move/from16 v19, v0

    div-float v14, v18, v19

    .line 1196
    .local v14, "newOffset":F
    :goto_2
    iget v0, v13, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->onScreen:F

    move/from16 v18, v0

    cmpl-float v18, v14, v18

    if-eqz v18, :cond_5

    const/4 v4, 0x1

    .line 1198
    .local v4, "changeOffset":Z
    :goto_3
    iget v0, v13, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->gravity:I

    move/from16 v18, v0

    and-int/lit8 v16, v18, 0x70

    .line 1200
    .local v16, "vgrav":I
    sparse-switch v16, :sswitch_data_0

    .line 1203
    iget v0, v13, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->topMargin:I

    move/from16 v18, v0

    add-int v19, v8, v10

    iget v0, v13, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->topMargin:I

    move/from16 v20, v0

    add-int v20, v20, v7

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v5, v8, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 1234
    :goto_4
    if-eqz v4, :cond_3

    .line 1235
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v14}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    .line 1238
    :cond_3
    iget v0, v13, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->onScreen:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_8

    const/4 v15, 0x0

    .line 1239
    .local v15, "newVisibility":I
    :goto_5
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v18

    move/from16 v0, v18

    if-eq v0, v15, :cond_0

    .line 1240
    invoke-virtual {v5, v15}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 1192
    .end local v4    # "changeOffset":Z
    .end local v8    # "childLeft":I
    .end local v14    # "newOffset":F
    .end local v15    # "newVisibility":I
    .end local v16    # "vgrav":I
    :cond_4
    int-to-float v0, v10

    move/from16 v18, v0

    iget v0, v13, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->onScreen:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    sub-int v8, v17, v18

    .line 1193
    .restart local v8    # "childLeft":I
    sub-int v18, v17, v8

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-float v0, v10

    move/from16 v19, v0

    div-float v14, v18, v19

    .restart local v14    # "newOffset":F
    goto :goto_2

    .line 1196
    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    .line 1209
    .restart local v4    # "changeOffset":Z
    .restart local v16    # "vgrav":I
    :sswitch_0
    sub-int v11, p5, p3

    .line 1210
    .local v11, "height":I
    iget v0, v13, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    sub-int v18, v11, v18

    .line 1211
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    sub-int v18, v18, v19

    add-int v19, v8, v10

    iget v0, v13, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v20, v0

    sub-int v20, v11, v20

    .line 1210
    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v5, v8, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    .line 1218
    .end local v11    # "height":I
    :sswitch_1
    sub-int v11, p5, p3

    .line 1219
    .restart local v11    # "height":I
    sub-int v18, v11, v7

    div-int/lit8 v9, v18, 0x2

    .line 1223
    .local v9, "childTop":I
    iget v0, v13, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->topMargin:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v9, v0, :cond_7

    .line 1224
    iget v9, v13, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->topMargin:I

    .line 1228
    :cond_6
    :goto_6
    add-int v18, v8, v10

    add-int v19, v9, v7

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v8, v9, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    .line 1225
    :cond_7
    add-int v18, v9, v7

    iget v0, v13, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v19, v0

    sub-int v19, v11, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_6

    .line 1226
    iget v0, v13, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    sub-int v18, v11, v18

    sub-int v9, v18, v7

    goto :goto_6

    .line 1238
    .end local v9    # "childTop":I
    .end local v11    # "height":I
    :cond_8
    const/4 v15, 0x4

    goto :goto_5

    .line 1244
    .end local v4    # "changeOffset":Z
    .end local v5    # "child":Landroid/view/View;
    .end local v7    # "childHeight":I
    .end local v8    # "childLeft":I
    .end local v10    # "childWidth":I
    .end local v13    # "lp":Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;
    .end local v14    # "newOffset":F
    .end local v16    # "vgrav":I
    :cond_9
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mInLayout:Z

    .line 1245
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mFirstLayout:Z

    .line 1246
    return-void

    .line 1200
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 25
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1004
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v20

    .line 1005
    .local v20, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    .line 1006
    .local v14, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v21

    .line 1007
    .local v21, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .line 1009
    .local v15, "heightSize":I
    const/high16 v22, 0x40000000    # 2.0f

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    const/high16 v22, 0x40000000    # 2.0f

    move/from16 v0, v22

    if-eq v14, v0, :cond_2

    .line 1010
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isInEditMode()Z

    move-result v22

    if-eqz v22, :cond_5

    .line 1015
    const/high16 v22, -0x80000000

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 1016
    const/high16 v20, 0x40000000    # 2.0f

    .line 1021
    :cond_1
    :goto_0
    const/high16 v22, -0x80000000

    move/from16 v0, v22

    if-ne v14, v0, :cond_4

    .line 1022
    const/high16 v14, 0x40000000    # 2.0f

    .line 1033
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->setMeasuredDimension(II)V

    .line 1035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLastInsets:Landroid/view/WindowInsets;

    move-object/from16 v22, v0

    if-eqz v22, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getFitsSystemWindows()Z

    move-result v22

    if-eqz v22, :cond_6

    const/4 v3, 0x1

    .line 1036
    .local v3, "applyInsets":Z
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getLayoutDirection()I

    move-result v18

    .line 1040
    .local v18, "layoutDirection":I
    const/4 v12, 0x0

    .line 1041
    .local v12, "hasDrawerOnLeftEdge":Z
    const/4 v13, 0x0

    .line 1042
    .local v13, "hasDrawerOnRightEdge":Z
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildCount()I

    move-result v6

    .line 1043
    .local v6, "childCount":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_3
    move/from16 v0, v16

    if-ge v0, v6, :cond_12

    .line 1044
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1046
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    .line 1043
    :goto_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 1017
    .end local v3    # "applyInsets":Z
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childCount":I
    .end local v12    # "hasDrawerOnLeftEdge":Z
    .end local v13    # "hasDrawerOnRightEdge":Z
    .end local v16    # "i":I
    .end local v18    # "layoutDirection":I
    :cond_3
    if-nez v20, :cond_1

    .line 1018
    const/high16 v20, 0x40000000    # 2.0f

    .line 1019
    const/16 v21, 0x12c

    goto :goto_0

    .line 1023
    :cond_4
    if-nez v14, :cond_2

    .line 1024
    const/high16 v14, 0x40000000    # 2.0f

    .line 1025
    const/16 v15, 0x12c

    goto :goto_1

    .line 1028
    :cond_5
    new-instance v22, Ljava/lang/IllegalArgumentException;

    const-string v23, "DrawerLayout must be measured with MeasureSpec.EXACTLY."

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 1035
    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    .line 1050
    .restart local v3    # "applyInsets":Z
    .restart local v5    # "child":Landroid/view/View;
    .restart local v6    # "childCount":I
    .restart local v12    # "hasDrawerOnLeftEdge":Z
    .restart local v13    # "hasDrawerOnRightEdge":Z
    .restart local v16    # "i":I
    .restart local v18    # "layoutDirection":I
    :cond_7
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    .line 1052
    .local v19, "lp":Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;
    if-eqz v3, :cond_8

    .line 1053
    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->gravity:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v4

    .line 1054
    .local v4, "cgrav":I
    invoke-virtual {v5}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v22

    if-eqz v22, :cond_9

    .line 1055
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->dispatchChildInsets(Landroid/view/View;I)V

    .line 1061
    .end local v4    # "cgrav":I
    :cond_8
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 1063
    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->leftMargin:I

    move/from16 v22, v0

    sub-int v22, v21, v22

    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->rightMargin:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 1065
    .local v9, "contentWidthSpec":I
    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->topMargin:I

    move/from16 v22, v0

    sub-int v22, v15, v22

    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 1067
    .local v8, "contentHeightSpec":I
    invoke-virtual {v5, v9, v8}, Landroid/view/View;->measure(II)V

    goto :goto_4

    .line 1057
    .end local v8    # "contentHeightSpec":I
    .end local v9    # "contentWidthSpec":I
    .restart local v4    # "cgrav":I
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->applyMarginInsets(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    goto :goto_5

    .line 1068
    .end local v4    # "cgrav":I
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v22

    if-eqz v22, :cond_11

    .line 1069
    sget-boolean v22, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v22, :cond_b

    .line 1070
    invoke-virtual {v5}, Landroid/view/View;->getElevation()F

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mDrawerElevation:F

    move/from16 v23, v0

    cmpl-float v22, v22, v23

    if-eqz v22, :cond_b

    .line 1071
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mDrawerElevation:F

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/view/View;->setElevation(F)V

    .line 1075
    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v22

    and-int/lit8 v7, v22, 0x7

    .line 1078
    .local v7, "childGravity":I
    const/16 v22, 0x3

    move/from16 v0, v22

    if-ne v7, v0, :cond_e

    const/16 v17, 0x1

    .line 1079
    .local v17, "isLeftEdgeDrawer":Z
    :goto_6
    if-eqz v17, :cond_c

    if-nez v12, :cond_d

    :cond_c
    if-nez v17, :cond_f

    if-eqz v13, :cond_f

    .line 1081
    :cond_d
    new-instance v22, Ljava/lang/IllegalStateException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Child drawer has absolute gravity "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 1082
    invoke-static {v7}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " but this "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "DrawerLayout"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " already has a drawer view along that edge"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 1078
    .end local v17    # "isLeftEdgeDrawer":Z
    :cond_e
    const/16 v17, 0x0

    goto :goto_6

    .line 1085
    .restart local v17    # "isLeftEdgeDrawer":Z
    :cond_f
    if-eqz v17, :cond_10

    .line 1086
    const/4 v12, 0x1

    .line 1090
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mMinDrawerMargin:I

    move/from16 v22, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->leftMargin:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->rightMargin:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->width:I

    move/from16 v23, v0

    move/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildMeasureSpec(III)I

    move-result v11

    .line 1093
    .local v11, "drawerWidthSpec":I
    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->topMargin:I

    move/from16 v22, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->height:I

    move/from16 v23, v0

    move/from16 v0, p2

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildMeasureSpec(III)I

    move-result v10

    .line 1096
    .local v10, "drawerHeightSpec":I
    invoke-virtual {v5, v11, v10}, Landroid/view/View;->measure(II)V

    goto/16 :goto_4

    .line 1088
    .end local v10    # "drawerHeightSpec":I
    .end local v11    # "drawerWidthSpec":I
    :cond_10
    const/4 v13, 0x1

    goto :goto_7

    .line 1098
    .end local v7    # "childGravity":I
    .end local v17    # "isLeftEdgeDrawer":Z
    :cond_11
    new-instance v22, Ljava/lang/IllegalStateException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Child "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " at index "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " does not have a valid layout_gravity - must be Gravity.LEFT, Gravity.RIGHT or Gravity.NO_GRAVITY"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 1103
    .end local v5    # "child":Landroid/view/View;
    .end local v19    # "lp":Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;
    :cond_12
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const/4 v4, 0x3

    .line 1898
    instance-of v2, p1, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;

    if-nez v2, :cond_1

    .line 1899
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1925
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 1903
    check-cast v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;

    .line 1904
    .local v0, "ss":Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1906
    iget v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;->openDrawerGravity:I

    if-eqz v2, :cond_2

    .line 1907
    iget v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;->openDrawerGravity:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v1

    .line 1908
    .local v1, "toOpen":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 1909
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->openDrawer(Landroid/view/View;)V

    .line 1913
    .end local v1    # "toOpen":Landroid/view/View;
    :cond_2
    iget v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;->lockModeLeft:I

    if-eq v2, v4, :cond_3

    .line 1914
    iget v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;->lockModeLeft:I

    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->setDrawerLockMode(II)V

    .line 1916
    :cond_3
    iget v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;->lockModeRight:I

    if-eq v2, v4, :cond_4

    .line 1917
    iget v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;->lockModeRight:I

    const/4 v3, 0x5

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->setDrawerLockMode(II)V

    .line 1919
    :cond_4
    iget v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;->lockModeStart:I

    if-eq v2, v4, :cond_5

    .line 1920
    iget v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;->lockModeStart:I

    const v3, 0x800003

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->setDrawerLockMode(II)V

    .line 1922
    :cond_5
    iget v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;->lockModeEnd:I

    if-eq v2, v4, :cond_0

    .line 1923
    iget v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;->lockModeEnd:I

    const v3, 0x800005

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->setDrawerLockMode(II)V

    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .prologue
    .line 1323
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->resolveShadowDrawables()V

    .line 1324
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1929
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v7

    .line 1930
    .local v7, "superState":Landroid/os/Parcelable;
    new-instance v6, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;

    invoke-direct {v6, v7}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1932
    .local v6, "ss":Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildCount()I

    move-result v1

    .line 1933
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1934
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1935
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    .line 1937
    .local v5, "lp":Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;
    iget v10, v5, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->openState:I

    if-ne v10, v8, :cond_2

    move v4, v8

    .line 1939
    .local v4, "isOpenedAndNotClosing":Z
    :goto_1
    iget v10, v5, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->openState:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    move v3, v8

    .line 1940
    .local v3, "isClosedAndOpening":Z
    :goto_2
    if-nez v4, :cond_0

    if-eqz v3, :cond_4

    .line 1943
    :cond_0
    iget v8, v5, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->gravity:I

    iput v8, v6, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;->openDrawerGravity:I

    .line 1948
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "isClosedAndOpening":Z
    .end local v4    # "isOpenedAndNotClosing":Z
    .end local v5    # "lp":Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;
    :cond_1
    iget v8, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeLeft:I

    iput v8, v6, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;->lockModeLeft:I

    .line 1949
    iget v8, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeRight:I

    iput v8, v6, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;->lockModeRight:I

    .line 1950
    iget v8, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeStart:I

    iput v8, v6, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;->lockModeStart:I

    .line 1951
    iget v8, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeEnd:I

    iput v8, v6, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;->lockModeEnd:I

    .line 1953
    return-object v6

    .restart local v0    # "child":Landroid/view/View;
    .restart local v5    # "lp":Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;
    :cond_2
    move v4, v9

    .line 1937
    goto :goto_1

    .restart local v4    # "isOpenedAndNotClosing":Z
    :cond_3
    move v3, v9

    .line 1939
    goto :goto_2

    .line 1933
    .restart local v3    # "isClosedAndOpening":Z
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1470
    iget-object v10, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLeftDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v10, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 1471
    iget-object v10, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mRightDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v10, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 1473
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1474
    .local v0, "action":I
    const/4 v7, 0x1

    .line 1476
    .local v7, "wantTouchEvents":Z
    and-int/lit16 v10, v0, 0xff

    packed-switch v10, :pswitch_data_0

    .line 1517
    :goto_0
    :pswitch_0
    return v7

    .line 1478
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 1479
    .local v8, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 1480
    .local v9, "y":F
    iput v8, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mInitialMotionX:F

    .line 1481
    iput v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mInitialMotionY:F

    .line 1482
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mDisallowInterceptRequested:Z

    .line 1483
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_0

    .line 1488
    .end local v8    # "x":F
    .end local v9    # "y":F
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 1489
    .restart local v8    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 1490
    .restart local v9    # "y":F
    const/4 v4, 0x1

    .line 1491
    .local v4, "peekingOnly":Z
    iget-object v10, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLeftDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    float-to-int v11, v8

    float-to-int v12, v9

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v6

    .line 1492
    .local v6, "touchedView":Landroid/view/View;
    if-eqz v6, :cond_0

    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1493
    iget v10, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mInitialMotionX:F

    sub-float v1, v8, v10

    .line 1494
    .local v1, "dx":F
    iget v10, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mInitialMotionY:F

    sub-float v2, v9, v10

    .line 1495
    .local v2, "dy":F
    iget-object v10, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLeftDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v10}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->getTouchSlop()I

    move-result v5

    .line 1496
    .local v5, "slop":I
    mul-float v10, v1, v1

    mul-float v11, v2, v2

    add-float/2addr v10, v11

    mul-int v11, v5, v5

    int-to-float v11, v11

    cmpg-float v10, v10, v11

    if-gez v10, :cond_0

    .line 1498
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->findOpenDrawer()Landroid/view/View;

    move-result-object v3

    .line 1499
    .local v3, "openDrawer":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 1500
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    const/4 v4, 0x1

    .line 1504
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    .end local v3    # "openDrawer":Landroid/view/View;
    .end local v5    # "slop":I
    :cond_0
    :goto_1
    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->closeDrawers(Z)V

    .line 1505
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mDisallowInterceptRequested:Z

    goto :goto_0

    .line 1500
    .restart local v1    # "dx":F
    .restart local v2    # "dy":F
    .restart local v3    # "openDrawer":Landroid/view/View;
    .restart local v5    # "slop":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 1510
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    .end local v3    # "openDrawer":Landroid/view/View;
    .end local v4    # "peekingOnly":Z
    .end local v5    # "slop":I
    .end local v6    # "touchedView":Landroid/view/View;
    .end local v8    # "x":F
    .end local v9    # "y":F
    :pswitch_3
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->closeDrawers(Z)V

    .line 1511
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mDisallowInterceptRequested:Z

    .line 1512
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_0

    .line 1476
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public openDrawer(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 1623
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->openDrawer(IZ)V

    .line 1624
    return-void
.end method

.method public openDrawer(IZ)V
    .locals 4
    .param p1, "gravity"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 1634
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 1635
    .local v0, "drawerView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 1636
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No drawer view found with gravity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1637
    invoke-static {p1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1639
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->openDrawer(Landroid/view/View;Z)V

    .line 1640
    return-void
.end method

.method public openDrawer(Landroid/view/View;)V
    .locals 1
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 1579
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->openDrawer(Landroid/view/View;Z)V

    .line 1580
    return-void
.end method

.method public openDrawer(Landroid/view/View;Z)V
    .locals 5
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    const/4 v4, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 1589
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1590
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a sliding drawer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1593
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    .line 1594
    .local v0, "lp":Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mFirstLayout:Z

    if-eqz v1, :cond_1

    .line 1595
    iput v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->onScreen:F

    .line 1596
    iput v4, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->openState:I

    .line 1598
    invoke-direct {p0, p1, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    .line 1613
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->invalidate()V

    .line 1614
    return-void

    .line 1599
    :cond_1
    if-eqz p2, :cond_3

    .line 1600
    iget v1, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->openState:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->openState:I

    .line 1602
    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1603
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLeftDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v1, p1, v3, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    .line 1605
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mRightDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1606
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1605
    invoke-virtual {v1, p1, v2, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    .line 1609
    :cond_3
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->moveDrawerToOffset(Landroid/view/View;F)V

    .line 1610
    iget v1, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v1, v3, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->updateDrawerState(IILandroid/view/View;)V

    .line 1611
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public removeDrawerListener(Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$DrawerListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$DrawerListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 556
    if-nez p1, :cond_1

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 1526
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1528
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mDisallowInterceptRequested:Z

    .line 1529
    if-eqz p1, :cond_0

    .line 1530
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->closeDrawers(Z)V

    .line 1532
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1250
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mInLayout:Z

    if-nez v0, :cond_0

    .line 1251
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1253
    :cond_0
    return-void
.end method

.method public setChildInsets(Landroid/view/WindowInsets;Z)V
    .locals 1
    .param p1, "insets"    # Landroid/view/WindowInsets;
    .param p2, "draw"    # Z

    .prologue
    .line 433
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLastInsets:Landroid/view/WindowInsets;

    .line 434
    iput-boolean p2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mDrawStatusBarBackground:Z

    .line 435
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->setWillNotDraw(Z)V

    .line 436
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->requestLayout()V

    .line 437
    return-void

    .line 435
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDrawerElevation(F)V
    .locals 3
    .param p1, "elevation"    # F

    .prologue
    .line 404
    iput p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mDrawerElevation:F

    .line 405
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 406
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 407
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 408
    iget v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mDrawerElevation:F

    invoke-virtual {v0, v2}, Landroid/view/View;->setElevation(F)V

    .line 405
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 411
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setDrawerListener(Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$DrawerListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$DrawerListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 521
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mListener:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$DrawerListener;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mListener:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$DrawerListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->removeDrawerListener(Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$DrawerListener;)V

    .line 524
    :cond_0
    if-eqz p1, :cond_1

    .line 525
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->addDrawerListener(Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$DrawerListener;)V

    .line 529
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mListener:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$DrawerListener;

    .line 530
    return-void
.end method

.method public setDrawerLockMode(I)V
    .locals 1
    .param p1, "lockMode"    # I

    .prologue
    .line 580
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->setDrawerLockMode(II)V

    .line 581
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->setDrawerLockMode(II)V

    .line 582
    return-void
.end method

.method public setDrawerLockMode(II)V
    .locals 5
    .param p1, "lockMode"    # I
    .param p2, "edgeGravity"    # I

    .prologue
    .line 604
    .line 605
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getLayoutDirection()I

    move-result v4

    .line 604
    invoke-static {p2, v4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 607
    .local v0, "absGravity":I
    sparse-switch p2, :sswitch_data_0

    .line 622
    :goto_0
    if-eqz p1, :cond_0

    .line 624
    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLeftDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    .line 625
    .local v1, "helper":Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;
    :goto_1
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->cancel()V

    .line 627
    .end local v1    # "helper":Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 642
    :cond_1
    :goto_2
    return-void

    .line 609
    :sswitch_0
    iput p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeLeft:I

    goto :goto_0

    .line 612
    :sswitch_1
    iput p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeRight:I

    goto :goto_0

    .line 615
    :sswitch_2
    iput p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeStart:I

    goto :goto_0

    .line 618
    :sswitch_3
    iput p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeEnd:I

    goto :goto_0

    .line 624
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mRightDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    goto :goto_1

    .line 629
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v3

    .line 630
    .local v3, "toOpen":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 631
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->openDrawer(Landroid/view/View;)V

    goto :goto_2

    .line 635
    .end local v3    # "toOpen":Landroid/view/View;
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v2

    .line 636
    .local v2, "toClose":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 637
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->closeDrawer(Landroid/view/View;)V

    goto :goto_2

    .line 607
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0x800003 -> :sswitch_2
        0x800005 -> :sswitch_3
    .end sparse-switch

    .line 627
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDrawerLockMode(ILandroid/view/View;)V
    .locals 4
    .param p1, "lockMode"    # I
    .param p2, "drawerView"    # Landroid/view/View;

    .prologue
    .line 663
    invoke-virtual {p0, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 664
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a drawer with appropriate layout_gravity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 667
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    iget v0, v1, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->gravity:I

    .line 668
    .local v0, "gravity":I
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->setDrawerLockMode(II)V

    .line 669
    return-void
.end method

.method public setDrawerShadow(II)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "gravity"    # I

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V

    .line 494
    return-void
.end method

.method public setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V
    .locals 3
    .param p1, "shadowDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "gravity"    # I

    .prologue
    const v2, 0x800005

    const v1, 0x800003

    .line 459
    sget-boolean v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v0, :cond_1

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    and-int v0, p2, v1

    if-ne v0, v1, :cond_2

    .line 464
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    .line 474
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->resolveShadowDrawables()V

    .line 475
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->invalidate()V

    goto :goto_0

    .line 465
    :cond_2
    and-int v0, p2, v2

    if-ne v0, v2, :cond_3

    .line 466
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 467
    :cond_3
    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 468
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 469
    :cond_4
    and-int/lit8 v0, p2, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 470
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public setDrawerTitle(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "edgeGravity"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 755
    .line 756
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getLayoutDirection()I

    move-result v1

    .line 755
    invoke-static {p1, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 757
    .local v0, "absGravity":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 758
    iput-object p2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mTitleLeft:Ljava/lang/CharSequence;

    .line 762
    :cond_0
    :goto_0
    return-void

    .line 759
    :cond_1
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 760
    iput-object p2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mTitleRight:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method setDrawerViewOffset(Landroid/view/View;F)V
    .locals 2
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .prologue
    .line 903
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    .line 904
    .local v0, "lp":Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;
    iget v1, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->onScreen:F

    cmpl-float v1, p2, v1

    if-nez v1, :cond_0

    .line 910
    :goto_0
    return-void

    .line 908
    :cond_0
    iput p2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->onScreen:F

    .line 909
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->dispatchOnDrawerSlide(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public setScrimColor(I)V
    .locals 0
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 502
    iput p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mScrimColor:I

    .line 503
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->invalidate()V

    .line 504
    return-void
.end method

.method public setStatusBarBackground(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1306
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 1307
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->invalidate()V

    .line 1308
    return-void

    .line 1306
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1286
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 1287
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->invalidate()V

    .line 1288
    return-void
.end method

.method public setStatusBarBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 1318
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 1319
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->invalidate()V

    .line 1320
    return-void
.end method

.method updateDrawerState(IILandroid/view/View;)V
    .locals 9
    .param p1, "forGravity"    # I
    .param p2, "activeState"    # I
    .param p3, "activeDrawer"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 789
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLeftDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->getViewDragState()I

    move-result v1

    .line 790
    .local v1, "leftState":I
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mRightDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->getViewDragState()I

    move-result v4

    .line 793
    .local v4, "rightState":I
    if-eq v1, v7, :cond_0

    if-ne v4, v7, :cond_2

    .line 794
    :cond_0
    const/4 v5, 0x1

    .line 801
    .local v5, "state":I
    :goto_0
    if-eqz p3, :cond_1

    if-nez p2, :cond_1

    .line 802
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    .line 803
    .local v3, "lp":Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;
    iget v6, v3, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->onScreen:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_5

    .line 804
    invoke-virtual {p0, p3}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->dispatchOnDrawerClosed(Landroid/view/View;)V

    .line 810
    .end local v3    # "lp":Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;
    :cond_1
    :goto_1
    iget v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mDrawerState:I

    if-eq v5, v6, :cond_6

    .line 811
    iput v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mDrawerState:I

    .line 813
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v6, :cond_6

    .line 816
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    .line 817
    .local v2, "listenerCount":I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_6

    .line 818
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$DrawerListener;

    invoke-interface {v6, v5}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$DrawerListener;->onDrawerStateChanged(I)V

    .line 817
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 795
    .end local v0    # "i":I
    .end local v2    # "listenerCount":I
    .end local v5    # "state":I
    :cond_2
    if-eq v1, v8, :cond_3

    if-ne v4, v8, :cond_4

    .line 796
    :cond_3
    const/4 v5, 0x2

    .restart local v5    # "state":I
    goto :goto_0

    .line 798
    .end local v5    # "state":I
    :cond_4
    const/4 v5, 0x0

    .restart local v5    # "state":I
    goto :goto_0

    .line 805
    .restart local v3    # "lp":Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;
    :cond_5
    iget v6, v3, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->onScreen:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1

    .line 806
    invoke-virtual {p0, p3}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->dispatchOnDrawerOpened(Landroid/view/View;)V

    goto :goto_1

    .line 822
    .end local v3    # "lp":Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;
    :cond_6
    return-void
.end method
