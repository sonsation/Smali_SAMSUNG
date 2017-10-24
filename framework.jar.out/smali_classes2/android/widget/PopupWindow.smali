.class public Landroid/widget/PopupWindow;
.super Ljava/lang/Object;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/PopupWindow$1;,
        Landroid/widget/PopupWindow$2;,
        Landroid/widget/PopupWindow$OnDismissListener;,
        Landroid/widget/PopupWindow$PopupBackgroundView;,
        Landroid/widget/PopupWindow$PopupDecorView;
    }
.end annotation


# static fields
.field private static final ABOVE_ANCHOR_STATE_SET:[I

.field private static final ANIMATION_STYLE_DEFAULT:I = -0x1

.field private static final DEFAULT_ANCHORED_GRAVITY:I = 0x800033

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PopupWindow"


# instance fields
.field private mAboveAnchor:Z

.field private mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mAllowScrollingAnchorParent:Z

.field private mAnchor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnchorRoot:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnchorXoff:I

.field private mAnchorYoff:I

.field private mAnchoredGravity:I

.field private mAnimationStyle:I

.field private mAttachedInDecor:Z

.field private mAttachedInDecorSet:Z

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundView:Landroid/view/View;

.field private mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mClipToScreen:Z

.field private mClippingEnabled:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

.field private mElevation:F

.field private mEnterTransition:Landroid/transition/Transition;

.field private mEpicenterBounds:Landroid/graphics/Rect;

.field private mExitTransition:Landroid/transition/Transition;

.field private mFocusable:Z

.field private mHeight:I

.field private mHeightMode:I

.field private mIgnoreCheekPress:Z

.field private mInputMethodMode:I

.field private mIsAnchorRootAttached:Z

.field private mIsAutoCompleteTextPopup:Z

.field private mIsDeviceDefaultLight:Z

.field private mIsDropdown:Z

.field private mIsFixedPos:Z

.field private mIsShowing:Z

.field private mIsSpaceBelow:Z

.field private mIsTransitioningToDismiss:Z

.field private mIsWindowPopupOutsideBound:Z

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLayoutInScreen:Z

.field private mLayoutInsetDecor:Z

.field private mNavigationBarHeight:I

.field private mNotTouchModal:Z

.field private mOldDisplayId:I

.field private final mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mOutsideTouchable:Z

.field private mOverlapAnchor:Z

.field private mPopupViewInitialLayoutDirectionInherited:Z

.field private mSoftInputMode:I

.field private mSplitTouchEnabled:I

.field private mStatusBarHeight:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTmpDrawingLocation:[I

.field private final mTmpScreenLocation:[I

.field private mTouchInterceptor:Landroid/view/View$OnTouchListener;

.field private mTouchable:Z

.field private mWidth:I

.field private mWidthMode:I

.field private mWindowLayoutType:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0()[I
    .locals 1

    sget-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/PopupWindow;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method static synthetic -get2(Landroid/widget/PopupWindow;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic -get3(Landroid/widget/PopupWindow;)I
    .locals 1

    iget v0, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    return v0
.end method

.method static synthetic -get4(Landroid/widget/PopupWindow;)I
    .locals 1

    iget v0, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    return v0
.end method

.method static synthetic -get5(Landroid/widget/PopupWindow;)I
    .locals 1

    iget v0, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    return v0
.end method

.method static synthetic -get6(Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow$PopupDecorView;
    .locals 1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    return-object v0
.end method

.method static synthetic -get7(Landroid/widget/PopupWindow;)Landroid/view/View$OnTouchListener;
    .locals 1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic -set0(Landroid/widget/PopupWindow;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/widget/PopupWindow;)Landroid/graphics/Rect;
    .locals 1

    invoke-direct {p0}, Landroid/widget/PopupWindow;->getTransitionEpicenter()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIII)Z
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "outParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "xOffset"    # I
    .param p4, "yOffset"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "gravity"    # I

    .prologue
    invoke-direct/range {p0 .. p7}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIII)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0
    .param p1, "decorView"    # Landroid/view/View;
    .param p2, "contentHolder"    # Landroid/view/ViewGroup;
    .param p3, "contentView"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap3(Landroid/widget/PopupWindow;Z)V
    .locals 0
    .param p1, "aboveAnchor"    # Z

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 210
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 211
    const v1, 0x10100aa

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 210
    sput-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    .line 112
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 354
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 353
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 381
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 380
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 270
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 269
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 279
    const v0, 0x1010076

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 278
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 288
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 287
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    .line 149
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Landroid/widget/PopupWindow;->mTmpScreenLocation:[I

    .line 150
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 169
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 170
    const/4 v7, 0x1

    iput v7, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 171
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 172
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 173
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 174
    const/4 v7, -0x1

    iput v7, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 177
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 178
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 180
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    .line 181
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    .line 186
    const/4 v7, -0x2

    iput v7, p0, Landroid/widget/PopupWindow;->mWidth:I

    .line 189
    const/4 v7, -0x2

    iput v7, p0, Landroid/widget/PopupWindow;->mHeight:I

    .line 203
    const/16 v7, 0x3e8

    iput v7, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 206
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 208
    const/4 v7, -0x1

    iput v7, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 215
    new-instance v7, Landroid/widget/PopupWindow$1;

    invoke-direct {v7, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    .line 214
    iput-object v7, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 229
    new-instance v7, Landroid/widget/PopupWindow$2;

    invoke-direct {v7, p0}, Landroid/widget/PopupWindow$2;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v7, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 252
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mIsDeviceDefaultLight:Z

    .line 253
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/PopupWindow;->mOldDisplayId:I

    .line 254
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    .line 255
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/PopupWindow;->mNavigationBarHeight:I

    .line 256
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mIsWindowPopupOutsideBound:Z

    .line 259
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mIsAutoCompleteTextPopup:Z

    .line 260
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mIsSpaceBelow:Z

    .line 261
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mIsFixedPos:Z

    .line 297
    iput-object p1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 298
    const-string/jumbo v7, "window"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    iput-object v7, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 301
    sget-object v7, Lcom/android/internal/R$styleable;->PopupWindow:[I

    .line 300
    invoke-virtual {p1, p2, v7, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 302
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 303
    .local v2, "bg":Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Landroid/widget/PopupWindow;->mElevation:F

    .line 304
    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    .line 309
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 310
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 311
    .local v1, "animStyle":I
    const v7, 0x10302f4

    if-ne v1, v7, :cond_0

    .line 312
    const/4 v7, -0x1

    iput v7, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 321
    .end local v1    # "animStyle":I
    :goto_0
    const/4 v7, 0x4

    const/4 v8, 0x0

    .line 320
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-direct {p0, v7}, Landroid/widget/PopupWindow;->getTransition(I)Landroid/transition/Transition;

    move-result-object v4

    .line 323
    .local v4, "enterTransition":Landroid/transition/Transition;
    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 325
    const/4 v7, 0x5

    const/4 v8, 0x0

    .line 324
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-direct {p0, v7}, Landroid/widget/PopupWindow;->getTransition(I)Landroid/transition/Transition;

    move-result-object v5

    .line 330
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 332
    invoke-virtual {p0, v4}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    .line 333
    invoke-virtual {p0, v5}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    .line 334
    invoke-virtual {p0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 337
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 338
    .local v6, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x11600cb

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v6, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 339
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 340
    .local v3, "colorValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x11600cd

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v3, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 341
    iget v7, v6, Landroid/util/TypedValue;->data:I

    if-eqz v7, :cond_4

    iget v7, v3, Landroid/util/TypedValue;->data:I

    if-nez v7, :cond_4

    const/4 v7, 0x1

    :goto_2
    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mIsDeviceDefaultLight:Z

    .line 343
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/PopupWindow;->mOldDisplayId:I

    .line 296
    return-void

    .line 314
    .end local v3    # "colorValue":Landroid/util/TypedValue;
    .end local v4    # "enterTransition":Landroid/transition/Transition;
    .end local v6    # "outValue":Landroid/util/TypedValue;
    .restart local v1    # "animStyle":I
    :cond_0
    iput v1, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    goto :goto_0

    .line 317
    .end local v1    # "animStyle":I
    :cond_1
    const/4 v7, -0x1

    iput v7, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    goto :goto_0

    .line 327
    .restart local v4    # "enterTransition":Landroid/transition/Transition;
    :cond_2
    if-nez v4, :cond_3

    const/4 v5, 0x0

    .local v5, "exitTransition":Landroid/transition/Transition;
    goto :goto_1

    .end local v5    # "exitTransition":Landroid/transition/Transition;
    :cond_3
    invoke-virtual {v4}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object v5

    .local v5, "exitTransition":Landroid/transition/Transition;
    goto :goto_1

    .line 341
    .end local v5    # "exitTransition":Landroid/transition/Transition;
    .restart local v3    # "colorValue":Landroid/util/TypedValue;
    .restart local v6    # "outValue":Landroid/util/TypedValue;
    :cond_4
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 367
    invoke-direct {p0, p1, v0, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 366
    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 397
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 396
    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 6
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "focusable"    # Z

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, -0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    new-array v0, v5, [I

    iput-object v0, p0, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    .line 149
    new-array v0, v5, [I

    iput-object v0, p0, Landroid/widget/PopupWindow;->mTmpScreenLocation:[I

    .line 150
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 169
    iput v1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 170
    iput v2, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 171
    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 172
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 173
    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 174
    iput v4, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 177
    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 178
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 180
    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    .line 181
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    .line 186
    iput v3, p0, Landroid/widget/PopupWindow;->mWidth:I

    .line 189
    iput v3, p0, Landroid/widget/PopupWindow;->mHeight:I

    .line 203
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 206
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 208
    iput v4, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 215
    new-instance v0, Landroid/widget/PopupWindow$1;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    .line 214
    iput-object v0, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 229
    new-instance v0, Landroid/widget/PopupWindow$2;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow$2;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 252
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDeviceDefaultLight:Z

    .line 253
    iput v1, p0, Landroid/widget/PopupWindow;->mOldDisplayId:I

    .line 254
    iput v1, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    .line 255
    iput v1, p0, Landroid/widget/PopupWindow;->mNavigationBarHeight:I

    .line 256
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsWindowPopupOutsideBound:Z

    .line 259
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsAutoCompleteTextPopup:Z

    .line 260
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsSpaceBelow:Z

    .line 261
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsFixedPos:Z

    .line 413
    if-eqz p1, :cond_0

    .line 414
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 415
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 418
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 419
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 420
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 421
    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 412
    return-void
.end method

.method private attachToAnchor(Landroid/view/View;III)V
    .locals 3
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    .prologue
    .line 2388
    invoke-direct {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    .line 2390
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 2391
    .local v1, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v1, :cond_0

    .line 2392
    iget-object v2, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 2395
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 2396
    .local v0, "anchorRoot":Landroid/view/View;
    iget-object v2, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 2398
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 2399
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    .line 2400
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    .line 2402
    iput p2, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    .line 2403
    iput p3, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    .line 2404
    iput p4, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    .line 2387
    return-void
.end method

.method private computeAnimationResource()I
    .locals 2

    .prologue
    .line 1547
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1548
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-eqz v0, :cond_1

    .line 1549
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_0

    .line 1550
    const v0, 0x10302ec

    .line 1549
    :goto_0
    return v0

    .line 1551
    :cond_0
    const v0, 0x10302eb

    goto :goto_0

    .line 1553
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 1555
    :cond_2
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    return v0
.end method

.method private computeFlags(I)I
    .locals 3
    .param p1, "curFlags"    # I

    .prologue
    const/high16 v2, 0x20000

    .line 1500
    const v0, -0x868219

    and-int/2addr p1, v0

    .line 1508
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    if-eqz v0, :cond_0

    .line 1509
    const v0, 0x8000

    or-int/2addr p1, v0

    .line 1511
    :cond_0
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    if-nez v0, :cond_b

    .line 1512
    or-int/lit8 p1, p1, 0x8

    .line 1513
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1514
    or-int/2addr p1, v2

    .line 1519
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    if-nez v0, :cond_2

    .line 1520
    or-int/lit8 p1, p1, 0x10

    .line 1522
    :cond_2
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    if-eqz v0, :cond_3

    .line 1523
    const/high16 v0, 0x40000

    or-int/2addr p1, v0

    .line 1525
    :cond_3
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    if-eqz v0, :cond_5

    .line 1526
    :cond_4
    or-int/lit16 p1, p1, 0x200

    .line 1528
    :cond_5
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isSplitTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1529
    const/high16 v0, 0x800000

    or-int/2addr p1, v0

    .line 1531
    :cond_6
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    if-eqz v0, :cond_7

    .line 1532
    or-int/lit16 p1, p1, 0x100

    .line 1534
    :cond_7
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    if-eqz v0, :cond_8

    .line 1535
    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    .line 1537
    :cond_8
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    if-eqz v0, :cond_9

    .line 1538
    or-int/lit8 p1, p1, 0x20

    .line 1540
    :cond_9
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    if-eqz v0, :cond_a

    .line 1541
    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr p1, v0

    .line 1543
    :cond_a
    return p1

    .line 1516
    :cond_b
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1517
    or-int/2addr p1, v2

    goto :goto_0
.end method

.method private computeGravity()I
    .locals 2

    .prologue
    .line 1444
    const v0, 0x800033

    .line 1445
    .local v0, "gravity":I
    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    if-eqz v1, :cond_1

    .line 1446
    :cond_0
    const v0, 0x10800033

    .line 1448
    :cond_1
    return v0
.end method

.method private createBackgroundView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupBackgroundView;
    .locals 6
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 1363
    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1365
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_0

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_0

    .line 1366
    const/4 v1, -0x2

    .line 1371
    .local v1, "height":I
    :goto_0
    new-instance v0, Landroid/widget/PopupWindow$PopupBackgroundView;

    iget-object v4, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v4}, Landroid/widget/PopupWindow$PopupBackgroundView;-><init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    .line 1372
    .local v0, "backgroundView":Landroid/widget/PopupWindow$PopupBackgroundView;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 1373
    const/4 v4, -0x1

    .line 1372
    invoke-direct {v3, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1374
    .local v3, "listParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, p1, v3}, Landroid/widget/PopupWindow$PopupBackgroundView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1376
    return-object v0

    .line 1368
    .end local v0    # "backgroundView":Landroid/widget/PopupWindow$PopupBackgroundView;
    .end local v1    # "height":I
    .end local v3    # "listParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    const/4 v1, -0x1

    .restart local v1    # "height":I
    goto :goto_0
.end method

.method private createDecorView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupDecorView;
    .locals 6
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 1386
    iget-object v3, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1388
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_0

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_0

    .line 1389
    const/4 v1, -0x2

    .line 1394
    .local v1, "height":I
    :goto_0
    new-instance v0, Landroid/widget/PopupWindow$PopupDecorView;

    iget-object v3, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v3}, Landroid/widget/PopupWindow$PopupDecorView;-><init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    .line 1395
    .local v0, "decorView":Landroid/widget/PopupWindow$PopupDecorView;
    const/4 v3, -0x1

    invoke-virtual {v0, p1, v3, v1}, Landroid/widget/PopupWindow$PopupDecorView;->addView(Landroid/view/View;II)V

    .line 1396
    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow$PopupDecorView;->setClipChildren(Z)V

    .line 1397
    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow$PopupDecorView;->setClipToPadding(Z)V

    .line 1399
    return-object v0

    .line 1391
    .end local v0    # "decorView":Landroid/widget/PopupWindow$PopupDecorView;
    .end local v1    # "height":I
    :cond_0
    const/4 v1, -0x1

    .restart local v1    # "height":I
    goto :goto_0
.end method

.method private createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1459
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1465
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeGravity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1466
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1467
    iget v1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1468
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1469
    iget v1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1470
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1472
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1473
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1478
    :goto_0
    iget v1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v1, :cond_1

    .line 1479
    iget v1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1484
    :goto_1
    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v1, :cond_2

    .line 1485
    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1490
    :goto_2
    const v1, 0x18000

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1494
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PopupWindow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1496
    return-object v0

    .line 1475
    :cond_0
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_0

    .line 1481
    :cond_1
    iget v1, p0, Landroid/widget/PopupWindow;->mHeight:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1

    .line 1487
    :cond_2
    iget v1, p0, Landroid/widget/PopupWindow;->mWidth:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_2
.end method

.method private detachFromAnchor()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2371
    iget-object v3, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v0, v3

    .line 2372
    .local v0, "anchor":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_0

    .line 2373
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 2374
    .local v2, "vto":Landroid/view/ViewTreeObserver;
    iget-object v3, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 2377
    .end local v2    # "vto":Landroid/view/ViewTreeObserver;
    :cond_0
    iget-object v3, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v1, v3

    .line 2378
    .local v1, "anchorRoot":Landroid/view/View;
    :goto_1
    if-eqz v1, :cond_1

    .line 2379
    iget-object v3, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 2382
    :cond_1
    iput-object v4, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 2383
    iput-object v4, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    .line 2384
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    .line 2370
    return-void

    .end local v0    # "anchor":Landroid/view/View;
    .end local v1    # "anchorRoot":Landroid/view/View;
    :cond_2
    move-object v0, v4

    .line 2371
    goto :goto_0

    .restart local v0    # "anchor":Landroid/view/View;
    :cond_3
    move-object v1, v4

    .line 2377
    goto :goto_1
.end method

.method private dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 2
    .param p1, "decorView"    # Landroid/view/View;
    .param p2, "contentHolder"    # Landroid/view/ViewGroup;
    .param p3, "contentView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 2081
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2082
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 2085
    :cond_0
    if-eqz p2, :cond_1

    .line 2086
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2091
    :cond_1
    iput-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 2092
    iput-object v1, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    .line 2093
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    .line 2077
    return-void
.end method

.method private findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIII)Z
    .locals 28
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "outParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "xOffset"    # I
    .param p4, "yOffset"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "gravity"    # I

    .prologue
    .line 1575
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 1576
    .local v7, "anchorHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v18

    .line 1577
    .local v18, "anchorWidth":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    if-eqz v3, :cond_0

    .line 1578
    sub-int p4, p4, v7

    .line 1582
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    move-object/from16 v20, v0

    .line 1583
    .local v20, "drawingLocation":[I
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1584
    const/4 v3, 0x0

    aget v3, v20, v3

    add-int v3, v3, p3

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1587
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/PopupWindow;->mIsDeviceDefaultLight:Z

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/PopupWindow;->mIsAutoCompleteTextPopup:Z

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/PopupWindow;->mIsFixedPos:Z

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/PopupWindow;->mIsSpaceBelow:Z

    if-eqz v3, :cond_5

    .line 1592
    :cond_1
    const/4 v3, 0x1

    aget v3, v20, v3

    add-int/2addr v3, v7

    add-int v3, v3, p4

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1595
    :goto_0
    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    .line 1598
    .local v19, "displayFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupWindow;->getVisibleDisplayRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1601
    const/4 v3, -0x1

    move/from16 v0, p5

    if-ne v0, v3, :cond_2

    .line 1602
    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int p5, v3, v4

    .line 1604
    :cond_2
    const/4 v3, -0x1

    move/from16 v0, p6

    if-ne v0, v3, :cond_3

    .line 1605
    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int p6, v3, v4

    .line 1609
    :cond_3
    const/16 v3, 0x33

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1610
    move/from16 v0, p5

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1611
    move/from16 v0, p6

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1615
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    move/from16 v0, p7

    invoke-static {v0, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v3

    and-int/lit8 v23, v3, 0x7

    .line 1617
    .local v23, "hgrav":I
    const/4 v3, 0x5

    move/from16 v0, v23

    if-ne v0, v3, :cond_4

    .line 1618
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v4, p5, v18

    sub-int/2addr v3, v4

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1621
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mTmpScreenLocation:[I

    move-object/from16 v25, v0

    .line 1622
    .local v25, "screenLocation":[I
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1626
    const/4 v3, 0x1

    aget v8, v20, v3

    const/4 v3, 0x1

    aget v9, v25, v3

    move-object/from16 v0, v19

    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 1627
    move-object/from16 v0, v19

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    const/4 v12, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move/from16 v5, p4

    move/from16 v6, p6

    .line 1625
    invoke-direct/range {v3 .. v12}, Landroid/widget/PopupWindow;->tryFitVertical(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    move-result v22

    .line 1631
    .local v22, "fitsVertical":Z
    const/4 v3, 0x0

    aget v13, v20, v3

    const/4 v3, 0x0

    aget v14, v25, v3

    move-object/from16 v0, v19

    iget v15, v0, Landroid/graphics/Rect;->left:I

    .line 1632
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p5

    move/from16 v12, v18

    .line 1630
    invoke-direct/range {v8 .. v17}, Landroid/widget/PopupWindow;->tryFitHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    move-result v21

    .line 1635
    .local v21, "fitsHorizontal":Z
    if-eqz v22, :cond_6

    if-eqz v21, :cond_6

    .line 1660
    :goto_1
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v4, 0x1

    aget v4, v20, v4

    if-ge v3, v4, :cond_8

    const/4 v3, 0x1

    :goto_2
    return v3

    .line 1590
    .end local v19    # "displayFrame":Landroid/graphics/Rect;
    .end local v21    # "fitsHorizontal":Z
    .end local v22    # "fitsVertical":Z
    .end local v23    # "hgrav":I
    .end local v25    # "screenLocation":[I
    :cond_5
    const/4 v3, 0x1

    aget v3, v20, v3

    sub-int v3, v3, p6

    add-int v3, v3, p4

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_0

    .line 1636
    .restart local v19    # "displayFrame":Landroid/graphics/Rect;
    .restart local v21    # "fitsHorizontal":Z
    .restart local v22    # "fitsVertical":Z
    .restart local v23    # "hgrav":I
    .restart local v25    # "screenLocation":[I
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v26

    .line 1637
    .local v26, "scrollX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v27

    .line 1638
    .local v27, "scrollY":I
    new-instance v24, Landroid/graphics/Rect;

    add-int v3, v26, p5

    add-int v3, v3, p3

    .line 1639
    add-int v4, v27, p6

    add-int/2addr v4, v7

    add-int v4, v4, p4

    .line 1638
    move-object/from16 v0, v24

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1640
    .local v24, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1642
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1643
    const/4 v3, 0x0

    aget v3, v20, v3

    add-int v3, v3, p3

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1644
    const/4 v3, 0x1

    aget v3, v20, v3

    add-int/2addr v3, v7

    add-int v3, v3, p4

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1647
    const/4 v3, 0x5

    move/from16 v0, v23

    if-ne v0, v3, :cond_7

    .line 1648
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v4, p5, v18

    sub-int/2addr v3, v4

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1653
    :cond_7
    const/4 v3, 0x1

    aget v8, v20, v3

    .line 1654
    const/4 v3, 0x1

    aget v9, v25, v3

    move-object/from16 v0, v19

    iget v10, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v19

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move/from16 v5, p4

    move/from16 v6, p6

    .line 1653
    invoke-direct/range {v3 .. v12}, Landroid/widget/PopupWindow;->tryFitVertical(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    .line 1655
    const/4 v3, 0x0

    aget v13, v20, v3

    .line 1656
    const/4 v3, 0x0

    aget v14, v25, v3

    move-object/from16 v0, v19

    iget v15, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    move/from16 v17, v0

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p5

    move/from16 v12, v18

    .line 1655
    invoke-direct/range {v8 .. v17}, Landroid/widget/PopupWindow;->tryFitHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    goto/16 :goto_1

    .line 1660
    .end local v24    # "r":Landroid/graphics/Rect;
    .end local v26    # "scrollX":I
    .end local v27    # "scrollY":I
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_2
.end method

.method private getTransition(I)Landroid/transition/Transition;
    .locals 5
    .param p1, "resId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 491
    if-eqz p1, :cond_1

    const/high16 v3, 0x10f0000

    if-eq p1, v3, :cond_1

    .line 492
    iget-object v3, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v0

    .line 493
    .local v0, "inflater":Landroid/transition/TransitionInflater;
    invoke-virtual {v0, p1}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v2

    .line 494
    .local v2, "transition":Landroid/transition/Transition;
    if-eqz v2, :cond_1

    .line 495
    instance-of v3, v2, Landroid/transition/TransitionSet;

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 496
    check-cast v3, Landroid/transition/TransitionSet;

    invoke-virtual {v3}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    .line 497
    .local v1, "isEmpty":Z
    :cond_0
    if-nez v1, :cond_1

    .line 498
    return-object v2

    .line 502
    .end local v0    # "inflater":Landroid/transition/TransitionInflater;
    .end local v1    # "isEmpty":Z
    .end local v2    # "transition":Landroid/transition/Transition;
    :cond_1
    return-object v4
.end method

.method private getTransitionEpicenter()Landroid/graphics/Rect;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 2049
    iget-object v7, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2050
    :goto_0
    iget-object v3, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 2051
    .local v3, "decor":Landroid/view/View;
    if-eqz v0, :cond_0

    if-nez v3, :cond_2

    .line 2052
    :cond_0
    return-object v8

    .line 2049
    .end local v3    # "decor":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    .local v0, "anchor":Landroid/view/View;
    goto :goto_0

    .line 2055
    .end local v0    # "anchor":Landroid/view/View;
    .restart local v3    # "decor":Landroid/view/View;
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v1

    .line 2056
    .local v1, "anchorLocation":[I
    iget-object v7, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v7}, Landroid/widget/PopupWindow$PopupDecorView;->getLocationOnScreen()[I

    move-result-object v6

    .line 2059
    .local v6, "popupLocation":[I
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-direct {v2, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2060
    .local v2, "bounds":Landroid/graphics/Rect;
    aget v7, v1, v9

    aget v8, v6, v9

    sub-int/2addr v7, v8

    aget v8, v1, v10

    aget v9, v6, v10

    sub-int/2addr v8, v9

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 2063
    iget-object v7, p0, Landroid/widget/PopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    if-eqz v7, :cond_3

    .line 2064
    iget v4, v2, Landroid/graphics/Rect;->left:I

    .line 2065
    .local v4, "offsetX":I
    iget v5, v2, Landroid/graphics/Rect;->top:I

    .line 2066
    .local v5, "offsetY":I
    iget-object v7, p0, Landroid/widget/PopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2067
    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 2070
    .end local v4    # "offsetX":I
    .end local v5    # "offsetY":I
    :cond_3
    return-object v2
.end method

.method private getVisibleDisplayRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 9
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "outRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v7, 0x0

    .line 1668
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1669
    :cond_0
    return-void

    .line 1672
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 1674
    .local v1, "root":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 1675
    .local v4, "vlp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v5, 0x0

    .line 1677
    .local v5, "wlp":Landroid/view/WindowManager$LayoutParams;
    instance-of v6, v4, Landroid/view/WindowManager$LayoutParams;

    if-eqz v6, :cond_2

    move-object v5, v4

    .line 1678
    check-cast v5, Landroid/view/WindowManager$LayoutParams;

    .line 1680
    .local v5, "wlp":Landroid/view/WindowManager$LayoutParams;
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v6, v6, 0x200

    if-nez v6, :cond_4

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Landroid/widget/PopupWindow;->mIsWindowPopupOutsideBound:Z

    .line 1684
    .end local v5    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1685
    .local v3, "visibleDisplayFrame":Landroid/graphics/Rect;
    iput v7, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    .line 1686
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1687
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget-object v6, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1689
    if-eqz v5, :cond_3

    iget-object v6, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_3

    .line 1690
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v8, v5, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int v2, v6, v8

    .line 1691
    .local v2, "systemUiVisibility":I
    and-int/lit16 v6, v2, 0x404

    if-nez v6, :cond_3

    .line 1693
    iget-object v6, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x1050017

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    .line 1697
    .end local v2    # "systemUiVisibility":I
    :cond_3
    iget-boolean v6, p0, Landroid/widget/PopupWindow;->mIsWindowPopupOutsideBound:Z

    if-eqz v6, :cond_5

    iget-boolean v6, p0, Landroid/widget/PopupWindow;->mIsDeviceDefaultLight:Z

    if-eqz v6, :cond_5

    .line 1698
    iput v7, v3, Landroid/graphics/Rect;->left:I

    .line 1699
    iget v6, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    iput v6, v3, Landroid/graphics/Rect;->top:I

    .line 1700
    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v6, v3, Landroid/graphics/Rect;->right:I

    .line 1701
    iget v6, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v6, v3, Landroid/graphics/Rect;->bottom:I

    .line 1705
    :goto_1
    invoke-virtual {p2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1667
    return-void

    .line 1680
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v3    # "visibleDisplayFrame":Landroid/graphics/Rect;
    .restart local v5    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_4
    const/4 v6, 0x1

    goto :goto_0

    .line 1703
    .end local v5    # "wlp":Landroid/view/WindowManager$LayoutParams;
    .restart local v0    # "dm":Landroid/util/DisplayMetrics;
    .restart local v3    # "visibleDisplayFrame":Landroid/graphics/Rect;
    :cond_5
    invoke-virtual {p1, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    goto :goto_1
.end method

.method private invokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1411
    iget-object v1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 1412
    iget-object v1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1415
    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 1416
    .local v0, "decorView":Landroid/widget/PopupWindow$PopupDecorView;
    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->setFitsSystemWindows(Z)V

    .line 1418
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    .line 1427
    iget-object v1, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1429
    iget-object v1, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    if-eqz v1, :cond_1

    .line 1430
    iget-object v1, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->requestEnterTransition(Landroid/transition/Transition;)V

    .line 1410
    :cond_1
    return-void
.end method

.method private positionInDisplayHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z
    .locals 6
    .param p1, "outParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "width"    # I
    .param p3, "drawingLocationX"    # I
    .param p4, "screenLocationX"    # I
    .param p5, "displayFrameLeft"    # I
    .param p6, "displayFrameRight"    # I
    .param p7, "canResize"    # Z

    .prologue
    .line 1832
    const/4 v1, 0x1

    .line 1835
    .local v1, "fitsInDisplay":Z
    sub-int v3, p4, p3

    .line 1836
    .local v3, "winOffsetX":I
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v4, v3

    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1838
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int v2, v4, p2

    .line 1839
    .local v2, "right":I
    if-le v2, p6, :cond_0

    .line 1841
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v5, v2, p6

    sub-int/2addr v4, v5

    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1844
    :cond_0
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ge v4, p5, :cond_1

    .line 1847
    iput p5, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1849
    sub-int v0, p6, p5

    .line 1850
    .local v0, "displayFrameWidth":I
    if-eqz p7, :cond_2

    if-le p2, v0, :cond_2

    .line 1851
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1857
    .end local v0    # "displayFrameWidth":I
    :cond_1
    :goto_0
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v4, v3

    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1859
    return v1

    .line 1853
    .restart local v0    # "displayFrameWidth":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private positionInDisplayVertical(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z
    .locals 6
    .param p1, "outParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "height"    # I
    .param p3, "drawingLocationY"    # I
    .param p4, "screenLocationY"    # I
    .param p5, "displayFrameTop"    # I
    .param p6, "displayFrameBottom"    # I
    .param p7, "canResize"    # Z

    .prologue
    .line 1766
    const/4 v2, 0x1

    .line 1769
    .local v2, "fitsInDisplay":Z
    iget-boolean v4, p0, Landroid/widget/PopupWindow;->mIsDeviceDefaultLight:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Landroid/widget/PopupWindow;->mIsAutoCompleteTextPopup:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Landroid/widget/PopupWindow;->mIsSpaceBelow:Z

    if-eqz v4, :cond_3

    .line 1775
    :cond_0
    :goto_0
    sub-int v3, p4, p3

    .line 1776
    .local v3, "winOffsetY":I
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v4, v3

    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1777
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1779
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int v0, v4, p2

    .line 1780
    .local v0, "bottom":I
    if-le v0, p6, :cond_1

    .line 1782
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v5, v0, p6

    sub-int/2addr v4, v5

    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1785
    :cond_1
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ge v4, p5, :cond_2

    .line 1788
    iput p5, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1790
    sub-int v1, p6, p5

    .line 1791
    .local v1, "displayFrameHeight":I
    if-eqz p7, :cond_4

    if-le p2, v1, :cond_4

    .line 1792
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1798
    .end local v1    # "displayFrameHeight":I
    :cond_2
    :goto_1
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v4, v3

    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1800
    return v2

    .line 1771
    .end local v0    # "bottom":I
    .end local v3    # "winOffsetY":I
    :cond_3
    sub-int v4, p3, p2

    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    .line 1794
    .restart local v0    # "bottom":I
    .restart local v1    # "displayFrameHeight":I
    .restart local v3    # "winOffsetY":I
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private preparePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 3
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v0, 0x1

    .line 1320
    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 1321
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1320
    :cond_1
    iget-object v1, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v1, :cond_0

    .line 1327
    iget-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    if-eqz v1, :cond_2

    .line 1328
    iget-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v1}, Landroid/widget/PopupWindow$PopupDecorView;->cancelTransitions()V

    .line 1333
    :cond_2
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 1334
    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-direct {p0, v1}, Landroid/widget/PopupWindow;->createBackgroundView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupBackgroundView;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    .line 1335
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    iget-object v2, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1336
    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDeviceDefaultLight:Z

    if-eqz v1, :cond_3

    .line 1337
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 1343
    :cond_3
    :goto_0
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    invoke-direct {p0, v1}, Landroid/widget/PopupWindow;->createDecorView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupDecorView;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 1346
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    iget v2, p0, Landroid/widget/PopupWindow;->mElevation:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setElevation(F)V

    .line 1350
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    invoke-virtual {p1, v1, v0, v0}, Landroid/view/WindowManager$LayoutParams;->setSurfaceInsets(Landroid/view/View;ZZ)V

    .line 1353
    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 1352
    :goto_1
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    .line 1319
    return-void

    .line 1340
    :cond_4
    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    iput-object v1, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    goto :goto_0

    .line 1353
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setLayoutDirectionFromAnchor()V
    .locals 3

    .prologue
    .line 1435
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 1436
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1437
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    if-eqz v1, :cond_0

    .line 1438
    iget-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow$PopupDecorView;->setLayoutDirection(I)V

    .line 1434
    .end local v0    # "anchor":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private tryFitHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z
    .locals 12
    .param p1, "outParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "xOffset"    # I
    .param p3, "width"    # I
    .param p4, "anchorWidth"    # I
    .param p5, "drawingLocationX"    # I
    .param p6, "screenLocationX"    # I
    .param p7, "displayFrameLeft"    # I
    .param p8, "displayFrameRight"    # I
    .param p9, "allowResize"    # Z

    .prologue
    .line 1806
    sub-int v11, p6, p5

    .line 1807
    .local v11, "winOffsetX":I
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int v9, v1, v11

    .line 1808
    .local v9, "anchorLeftInScreen":I
    sub-int v10, p8, v9

    .line 1810
    .local v10, "spaceRight":I
    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDeviceDefaultLight:Z

    if-eqz v1, :cond_0

    .line 1811
    move/from16 v0, p7

    if-lt v9, v0, :cond_1

    if-gt p3, v10, :cond_1

    .line 1812
    const/4 v1, 0x1

    return v1

    .line 1815
    :cond_0
    if-ltz v9, :cond_1

    if-gt p3, v10, :cond_1

    .line 1816
    const/4 v1, 0x1

    return v1

    :cond_1
    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    .line 1821
    invoke-direct/range {v1 .. v8}, Landroid/widget/PopupWindow;->positionInDisplayHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1823
    const/4 v1, 0x1

    return v1

    .line 1826
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private tryFitVertical(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z
    .locals 12
    .param p1, "outParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "yOffset"    # I
    .param p3, "height"    # I
    .param p4, "anchorHeight"    # I
    .param p5, "drawingLocationY"    # I
    .param p6, "screenLocationY"    # I
    .param p7, "displayFrameTop"    # I
    .param p8, "displayFrameBottom"    # I
    .param p9, "allowResize"    # Z

    .prologue
    .line 1711
    sub-int v11, p6, p5

    .line 1712
    .local v11, "winOffsetY":I
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int v8, v0, v11

    .line 1713
    .local v8, "anchorTopInScreen":I
    sub-int v10, p8, v8

    .line 1714
    .local v10, "spaceBelow":I
    sub-int v0, v8, p4

    sub-int v9, v0, p7

    .line 1718
    .local v9, "spaceAbove":I
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDeviceDefaultLight:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsAutoCompleteTextPopup:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsFixedPos:Z

    if-eqz v0, :cond_3

    .line 1719
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    .line 1720
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsSpaceBelow:Z

    if-eqz v0, :cond_1

    .line 1721
    if-gt v10, p3, :cond_0

    .line 1723
    iput v10, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1732
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1727
    :cond_1
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    if-eqz v0, :cond_2

    .line 1728
    add-int p2, p2, p4

    .line 1730
    :cond_2
    sub-int v0, p5, p3

    add-int/2addr v0, p2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    .line 1735
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsFixedPos:Z

    .line 1738
    if-ltz v8, :cond_4

    if-gt p3, v10, :cond_4

    .line 1739
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsSpaceBelow:Z

    .line 1740
    const/4 v0, 0x1

    return v0

    .line 1743
    :cond_4
    if-gt p3, v9, :cond_6

    .line 1745
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    if-eqz v0, :cond_5

    .line 1746
    add-int p2, p2, p4

    .line 1748
    :cond_5
    sub-int v0, p5, p3

    add-int/2addr v0, p2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1749
    const/4 v0, 0x1

    return v0

    :cond_6
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    .line 1755
    invoke-direct/range {v0 .. v7}, Landroid/widget/PopupWindow;->positionInDisplayVertical(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1757
    const/4 v0, 0x1

    return v0

    .line 1760
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method private update(Landroid/view/View;ZIIII)V
    .locals 26
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "updateLocation"    # Z
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I

    .prologue
    .line 2316
    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 2317
    :cond_0
    return-void

    .line 2320
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    move-object/from16 v20, v0

    .line 2321
    .local v20, "oldAnchor":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    .line 2323
    .local v11, "gravity":I
    if-eqz p2, :cond_8

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    move/from16 v0, p3

    if-ne v4, v0, :cond_2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    move/from16 v0, p4

    if-eq v4, v0, :cond_8

    :cond_2
    const/16 v19, 0x1

    .line 2324
    .local v19, "needsUpdate":Z
    :goto_0
    if-eqz v20, :cond_3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p1

    if-eq v4, v0, :cond_9

    .line 2325
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v11}, Landroid/widget/PopupWindow;->attachToAnchor(Landroid/view/View;III)V

    .line 2332
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v4}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    .line 2333
    .local v6, "p":Landroid/view/WindowManager$LayoutParams;
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v21, v0

    .line 2334
    .local v21, "oldGravity":I
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v23, v0

    .line 2335
    .local v23, "oldWidth":I
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v22, v0

    .line 2336
    .local v22, "oldHeight":I
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v24, v0

    .line 2337
    .local v24, "oldX":I
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v25, v0

    .line 2341
    .local v25, "oldY":I
    if-gez p5, :cond_5

    .line 2342
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mWidth:I

    move/from16 p5, v0

    .line 2344
    :cond_5
    if-gez p6, :cond_6

    .line 2345
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mHeight:I

    move/from16 p6, v0

    .line 2348
    :cond_6
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v4 .. v11}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIII)Z

    move-result v18

    .line 2350
    .local v18, "aboveAnchor":Z
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 2352
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v0, v21

    if-ne v0, v4, :cond_7

    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v0, v24

    if-eq v0, v4, :cond_b

    :cond_7
    const/16 v17, 0x1

    .line 2357
    .local v17, "paramsChanged":Z
    :goto_2
    iget v13, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v14, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    if-gez p5, :cond_d

    move/from16 v15, p5

    :goto_3
    if-gez p6, :cond_e

    move/from16 v16, p6

    :goto_4
    move-object/from16 v12, p0

    invoke-virtual/range {v12 .. v17}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 2314
    return-void

    .line 2323
    .end local v6    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v17    # "paramsChanged":Z
    .end local v18    # "aboveAnchor":Z
    .end local v19    # "needsUpdate":Z
    .end local v21    # "oldGravity":I
    .end local v22    # "oldHeight":I
    .end local v23    # "oldWidth":I
    .end local v24    # "oldX":I
    .end local v25    # "oldY":I
    :cond_8
    const/16 v19, 0x0

    .restart local v19    # "needsUpdate":Z
    goto :goto_0

    .line 2324
    :cond_9
    if-eqz v19, :cond_a

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-eqz v4, :cond_3

    .line 2326
    :cond_a
    if-eqz v19, :cond_4

    .line 2328
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mAnchorXoff:I

    .line 2329
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mAnchorYoff:I

    goto/16 :goto_1

    .line 2352
    .restart local v6    # "p":Landroid/view/WindowManager$LayoutParams;
    .restart local v18    # "aboveAnchor":Z
    .restart local v21    # "oldGravity":I
    .restart local v22    # "oldHeight":I
    .restart local v23    # "oldWidth":I
    .restart local v24    # "oldX":I
    .restart local v25    # "oldY":I
    :cond_b
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v0, v25

    if-ne v0, v4, :cond_7

    .line 2353
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v0, v23

    if-ne v0, v4, :cond_7

    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v0, v22

    if-eq v0, v4, :cond_c

    const/16 v17, 0x1

    .restart local v17    # "paramsChanged":Z
    goto :goto_2

    .end local v17    # "paramsChanged":Z
    :cond_c
    const/16 v17, 0x0

    .restart local v17    # "paramsChanged":Z
    goto :goto_2

    .line 2357
    :cond_d
    iget v15, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_3

    :cond_e
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v16, v0

    goto :goto_4
.end method

.method private updateAboveAnchor(Z)V
    .locals 2
    .param p1, "aboveAnchor"    # Z

    .prologue
    .line 1277
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eq p1, v0, :cond_0

    .line 1278
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    .line 1280
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1284
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 1285
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_1

    .line 1286
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1276
    :cond_0
    :goto_0
    return-void

    .line 1288
    :cond_1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1291
    :cond_2
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1961
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    if-eqz v8, :cond_1

    .line 1962
    :cond_0
    return-void

    .line 1965
    :cond_1
    iget-object v4, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 1966
    .local v4, "decorView":Landroid/widget/PopupWindow$PopupDecorView;
    iget-object v3, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 1969
    .local v3, "contentView":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 1970
    .local v2, "contentParent":Landroid/view/ViewParent;
    instance-of v8, v2, Landroid/view/ViewGroup;

    if-eqz v8, :cond_2

    move-object v1, v2

    .line 1971
    check-cast v1, Landroid/view/ViewGroup;

    .line 1978
    :goto_0
    iput-boolean v9, p0, Landroid/widget/PopupWindow;->mIsSpaceBelow:Z

    .line 1979
    iput-boolean v9, p0, Landroid/widget/PopupWindow;->mIsFixedPos:Z

    .line 1983
    if-nez v4, :cond_3

    .line 1984
    return-void

    .line 1973
    :cond_2
    const/4 v1, 0x0

    .local v1, "contentHolder":Landroid/view/ViewGroup;
    goto :goto_0

    .line 1989
    .end local v1    # "contentHolder":Landroid/view/ViewGroup;
    :cond_3
    invoke-virtual {v4}, Landroid/widget/PopupWindow$PopupDecorView;->cancelTransitions()V

    .line 1991
    iput-boolean v9, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 1992
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    .line 1999
    iget-object v6, p0, Landroid/widget/PopupWindow;->mExitTransition:Landroid/transition/Transition;

    .line 2000
    .local v6, "exitTransition":Landroid/transition/Transition;
    iget-boolean v8, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    if-eqz v8, :cond_6

    if-eqz v6, :cond_6

    invoke-virtual {v4}, Landroid/widget/PopupWindow$PopupDecorView;->isLaidOut()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2002
    invoke-virtual {v4}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager$LayoutParams;

    .line 2003
    .local v7, "p":Landroid/view/WindowManager$LayoutParams;
    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v8, v8, 0x10

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2004
    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v8, v8, 0x8

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2005
    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v9, -0x20001

    and-int/2addr v8, v9

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2006
    iget-object v8, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v8, v4, v7}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2011
    iget-object v8, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    if-eqz v8, :cond_5

    iget-object v8, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2012
    :goto_1
    invoke-direct {p0}, Landroid/widget/PopupWindow;->getTransitionEpicenter()Landroid/graphics/Rect;

    move-result-object v5

    .line 2013
    .local v5, "epicenter":Landroid/graphics/Rect;
    new-instance v8, Landroid/widget/PopupWindow$3;

    invoke-direct {v8, p0, v5}, Landroid/widget/PopupWindow$3;-><init>(Landroid/widget/PopupWindow;Landroid/graphics/Rect;)V

    invoke-virtual {v6, v8}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 2020
    new-instance v8, Landroid/widget/PopupWindow$4;

    invoke-direct {v8, p0, v4, v1, v3}, Landroid/widget/PopupWindow$4;-><init>(Landroid/widget/PopupWindow;Landroid/widget/PopupWindow$PopupDecorView;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 2019
    invoke-virtual {v4, v6, v0, v8}, Landroid/widget/PopupWindow$PopupDecorView;->startExitTransition(Landroid/transition/Transition;Landroid/view/View;Landroid/transition/Transition$TransitionListener;)V

    .line 2031
    .end local v5    # "epicenter":Landroid/graphics/Rect;
    .end local v7    # "p":Landroid/view/WindowManager$LayoutParams;
    :goto_2
    invoke-direct {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    .line 2033
    iget-object v8, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v8, :cond_4

    .line 2034
    iget-object v8, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v8}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 1960
    :cond_4
    return-void

    .line 2011
    .restart local v7    # "p":Landroid/view/WindowManager$LayoutParams;
    :cond_5
    const/4 v0, 0x0

    .local v0, "anchorRoot":Landroid/view/View;
    goto :goto_1

    .line 2027
    .end local v0    # "anchorRoot":Landroid/view/View;
    .end local v7    # "p":Landroid/view/WindowManager$LayoutParams;
    :cond_6
    invoke-direct {p0, v4, v1, v3}, Landroid/widget/PopupWindow;->dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    goto :goto_2
.end method

.method public getAnimationStyle()I
    .locals 1

    .prologue
    .line 591
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getElevation()F
    .locals 1

    .prologue
    .line 571
    iget v0, p0, Landroid/widget/PopupWindow;->mElevation:F

    return v0
.end method

.method public getEnterTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public getExitTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Landroid/widget/PopupWindow;->mExitTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 1051
    iget v0, p0, Landroid/widget/PopupWindow;->mHeight:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    .prologue
    .line 723
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 1873
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;I)I
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I

    .prologue
    .line 1888
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 10
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I
    .param p3, "ignoreBottomDecorations"    # Z

    .prologue
    const/4 v9, 0x1

    .line 1908
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1909
    .local v2, "displayFrame":Landroid/graphics/Rect;
    if-eqz p3, :cond_2

    .line 1910
    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowDisplayFrame(Landroid/graphics/Rect;)V

    .line 1913
    iget-boolean v7, p0, Landroid/widget/PopupWindow;->mIsDeviceDefaultLight:Z

    if-eqz v7, :cond_0

    sget-boolean v7, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->SUPPORT_NAVIGATION_BAR:Z

    if-eqz v7, :cond_0

    .line 1914
    iget-object v7, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v5, v7, Landroid/content/res/Configuration;->orientation:I

    .line 1915
    .local v5, "mOrientation":I
    const/4 v7, 0x2

    if-eq v5, v7, :cond_0

    .line 1916
    iget-object v7, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1917
    const v8, 0x1050018

    .line 1916
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Landroid/widget/PopupWindow;->mNavigationBarHeight:I

    .line 1918
    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    iget v8, p0, Landroid/widget/PopupWindow;->mNavigationBarHeight:I

    sub-int/2addr v7, v8

    iput v7, v2, Landroid/graphics/Rect;->bottom:I

    .line 1926
    .end local v5    # "mOrientation":I
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    .line 1930
    .local v0, "anchorPos":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1933
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 1936
    .local v1, "bottomEdge":I
    iget-boolean v7, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    if-eqz v7, :cond_3

    .line 1937
    aget v7, v0, v9

    sub-int v7, v1, v7

    sub-int v3, v7, p2

    .line 1941
    .local v3, "distanceToBottom":I
    :goto_1
    aget v7, v0, v9

    iget v8, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    add-int v4, v7, p2

    .line 1944
    .local v4, "distanceToTop":I
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1945
    .local v6, "returnedHeight":I
    iget-object v7, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_1

    .line 1946
    iget-object v7, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1947
    iget-object v7, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    sub-int/2addr v6, v7

    .line 1950
    :cond_1
    return v6

    .line 1922
    .end local v0    # "anchorPos":[I
    .end local v1    # "bottomEdge":I
    .end local v3    # "distanceToBottom":I
    .end local v4    # "distanceToTop":I
    .end local v6    # "returnedHeight":I
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1939
    .restart local v0    # "anchorPos":[I
    .restart local v1    # "bottomEdge":I
    :cond_3
    aget v7, v0, v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    sub-int v7, v1, v7

    sub-int v3, v7, p2

    .restart local v3    # "distanceToBottom":I
    goto :goto_1
.end method

.method public getOverlapAnchor()Z
    .locals 1

    .prologue
    .line 1129
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    return v0
.end method

.method public getSoftInputMode()I
    .locals 1

    .prologue
    .line 764
    iget v0, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 1083
    iget v0, p0, Landroid/widget/PopupWindow;->mWidth:I

    return v0
.end method

.method public getWindowLayoutType()I
    .locals 1

    .prologue
    .line 998
    iget v0, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    return v0
.end method

.method public isAboveAnchor()Z
    .locals 1

    .prologue
    .line 1309
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method public isAttachedInDecor()Z
    .locals 1

    .prologue
    .line 943
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    return v0
.end method

.method public isClippingEnabled()Z
    .locals 1

    .prologue
    .line 838
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    return v0
.end method

.method public isFocusable()Z
    .locals 1

    .prologue
    .line 694
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    return v0
.end method

.method public isLayoutInScreenEnabled()Z
    .locals 1

    .prologue
    .line 918
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    return v0
.end method

.method public isOutsideTouchable()Z
    .locals 1

    .prologue
    .line 806
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 1138
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    return v0
.end method

.method public isSplitTouchEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 887
    iget v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    if-gez v2, :cond_1

    iget-object v2, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 888
    iget-object v2, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 890
    :cond_1
    iget v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    if-ne v2, v0, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public isTouchable()Z
    .locals 1

    .prologue
    .line 775
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    return v0
.end method

.method setAllowScrollingAnchorParent(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 876
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 875
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 0
    .param p1, "animationStyle"    # I

    .prologue
    .line 624
    iput p1, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 623
    return-void
.end method

.method public setAttachedInDecor(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 959
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    .line 960
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    .line 958
    return-void
.end method

.method setAutoCompleteTextPopup()V
    .locals 1

    .prologue
    .line 2641
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsAutoCompleteTextPopup:Z

    .line 2640
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 525
    iput-object p1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 536
    iget-object v5, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v5, v5, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v5, :cond_1

    .line 537
    iget-object v4, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    check-cast v4, Landroid/graphics/drawable/StateListDrawable;

    .line 540
    .local v4, "stateList":Landroid/graphics/drawable/StateListDrawable;
    sget-object v5, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    move-result v0

    .line 544
    .local v0, "aboveAnchorStateIndex":I
    invoke-virtual {v4}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v2

    .line 545
    .local v2, "count":I
    const/4 v1, -0x1

    .line 546
    .local v1, "belowAnchorStateIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 547
    if-eq v3, v0, :cond_2

    .line 548
    move v1, v3

    .line 555
    :cond_0
    if-eq v0, v6, :cond_3

    if-eq v1, v6, :cond_3

    .line 556
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 557
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 524
    .end local v0    # "aboveAnchorStateIndex":I
    .end local v1    # "belowAnchorStateIndex":I
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v4    # "stateList":Landroid/graphics/drawable/StateListDrawable;
    :cond_1
    :goto_1
    return-void

    .line 546
    .restart local v0    # "aboveAnchorStateIndex":I
    .restart local v1    # "belowAnchorStateIndex":I
    .restart local v2    # "count":I
    .restart local v3    # "i":I
    .restart local v4    # "stateList":Landroid/graphics/drawable/StateListDrawable;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 559
    :cond_3
    iput-object v7, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 560
    iput-object v7, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public setClipToScreenEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 866
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    .line 865
    return-void
.end method

.method public setClippingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 856
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 855
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 650
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    return-void

    .line 654
    :cond_0
    iput-object p1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 656
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 657
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 660
    :cond_1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 661
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 668
    :cond_2
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    if-eqz v0, :cond_4

    .line 649
    :cond_3
    :goto_0
    return-void

    .line 672
    :cond_4
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 673
    const/16 v1, 0x16

    .line 672
    if-lt v0, v1, :cond_5

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setAttachedInDecor(Z)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setElevation(F)V
    .locals 0
    .param p1, "elevation"    # F

    .prologue
    .line 582
    iput p1, p0, Landroid/widget/PopupWindow;->mElevation:F

    .line 581
    return-void
.end method

.method public setEnterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "enterTransition"    # Landroid/transition/Transition;

    .prologue
    .line 432
    iput-object p1, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    .line 431
    return-void
.end method

.method public setEpicenterBounds(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 487
    iput-object p1, p0, Landroid/widget/PopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    .line 486
    return-void
.end method

.method public setExitTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "exitTransition"    # Landroid/transition/Transition;

    .prologue
    .line 455
    iput-object p1, p0, Landroid/widget/PopupWindow;->mExitTransition:Landroid/transition/Transition;

    .line 454
    return-void
.end method

.method public setFocusable(Z)V
    .locals 0
    .param p1, "focusable"    # Z

    .prologue
    .line 714
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    .line 713
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 1069
    iput p1, p0, Landroid/widget/PopupWindow;->mHeight:I

    .line 1068
    return-void
.end method

.method public setIgnoreCheekPress()V
    .locals 1

    .prologue
    .line 606
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 605
    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 740
    iput p1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 739
    return-void
.end method

.method public setLayoutInScreenEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 930
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    .line 929
    return-void
.end method

.method public setLayoutInsetDecor(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 976
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 975
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .param p1, "onDismissListener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .prologue
    .line 2102
    iput-object p1, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 2101
    return-void
.end method

.method public setOutsideTouchable(Z)V
    .locals 0
    .param p1, "touchable"    # Z

    .prologue
    .line 827
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 826
    return-void
.end method

.method public setOverlapAnchor(Z)V
    .locals 0
    .param p1, "overlapAnchor"    # Z

    .prologue
    .line 1117
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    .line 1116
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 754
    iput p1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 753
    return-void
.end method

.method public setSplitTouchEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 907
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 906
    return-void

    .line 907
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 683
    iput-object p1, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    .line 682
    return-void
.end method

.method public setTouchModal(Z)V
    .locals 1
    .param p1, "touchModal"    # Z

    .prologue
    .line 1007
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    .line 1006
    return-void

    .line 1007
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setTouchable(Z)V
    .locals 0
    .param p1, "touchable"    # Z

    .prologue
    .line 794
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 793
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 1101
    iput p1, p0, Landroid/widget/PopupWindow;->mWidth:I

    .line 1100
    return-void
.end method

.method public setWindowLayoutMode(II)V
    .locals 0
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1036
    iput p1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    .line 1037
    iput p2, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    .line 1035
    return-void
.end method

.method public setWindowLayoutType(I)V
    .locals 0
    .param p1, "layoutType"    # I

    .prologue
    .line 989
    iput p1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 988
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 1209
    invoke-virtual {p0, p1, v0, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 1208
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I

    .prologue
    .line 1230
    const v0, 0x800033

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 1229
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 9
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    .prologue
    const/4 v1, 0x1

    .line 1254
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1255
    :cond_0
    return-void

    .line 1258
    :cond_1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-static {v0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    .line 1260
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->attachToAnchor(Landroid/view/View;III)V

    .line 1262
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 1263
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 1265
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 1266
    .local v2, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v2}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 1269
    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v7, p4

    .line 1268
    invoke-direct/range {v0 .. v7}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIII)Z

    move-result v8

    .line 1270
    .local v8, "aboveAnchor":Z
    invoke-direct {p0, v8}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 1271
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    :goto_0
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:I

    .line 1273
    invoke-direct {p0, v2}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 1253
    return-void

    .line 1271
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public showAtLocation(Landroid/os/IBinder;III)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 1171
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 1172
    :cond_0
    return-void

    .line 1175
    :cond_1
    iget-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-static {v1}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    .line 1177
    invoke-direct {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    .line 1179
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 1180
    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 1182
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1183
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 1186
    if-eqz p2, :cond_2

    .line 1187
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1190
    :cond_2
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1191
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1193
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 1170
    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 1156
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    .line 1155
    return-void
.end method

.method public update()V
    .locals 7

    .prologue
    .line 2120
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v5, :cond_1

    .line 2121
    :cond_0
    return-void

    .line 2125
    :cond_1
    iget-object v5, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v5}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    .line 2127
    .local v3, "p":Landroid/view/WindowManager$LayoutParams;
    const/4 v4, 0x0

    .line 2129
    .local v4, "update":Z
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v0

    .line 2130
    .local v0, "newAnim":I
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v0, v5, :cond_2

    .line 2131
    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2132
    const/4 v4, 0x1

    .line 2135
    :cond_2
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v5}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v1

    .line 2136
    .local v1, "newFlags":I
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v1, v5, :cond_3

    .line 2137
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2138
    const/4 v4, 0x1

    .line 2141
    :cond_3
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeGravity()I

    move-result v2

    .line 2142
    .local v2, "newGravity":I
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq v2, v5, :cond_4

    .line 2143
    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2144
    const/4 v4, 0x1

    .line 2147
    :cond_4
    if-eqz v4, :cond_5

    .line 2148
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    .line 2149
    iget-object v5, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v6, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-interface {v5, v6, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2119
    :cond_5
    return-void
.end method

.method public update(II)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 2164
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    .line 2165
    .local v6, "p":Landroid/view/WindowManager$LayoutParams;
    iget v1, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 2162
    return-void
.end method

.method public update(IIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 2181
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 2180
    return-void
.end method

.method public update(IIIIZ)V
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "force"    # Z

    .prologue
    const/4 v9, -0x1

    .line 2200
    if-ltz p3, :cond_0

    .line 2201
    iput p3, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    .line 2202
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 2205
    :cond_0
    if-ltz p4, :cond_1

    .line 2206
    iput p4, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    .line 2207
    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 2210
    :cond_1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v8, :cond_3

    .line 2211
    :cond_2
    return-void

    .line 2215
    :cond_3
    iget-object v8, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v8}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    .line 2217
    .local v6, "p":Landroid/view/WindowManager$LayoutParams;
    move v7, p5

    .line 2219
    .local v7, "update":Z
    iget v8, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v8, :cond_d

    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    .line 2227
    .local v1, "finalWidth":I
    :goto_0
    if-eq p3, v9, :cond_4

    iget v8, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v8, v1, :cond_4

    .line 2228
    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2229
    const/4 v7, 0x1

    .line 2232
    .end local v7    # "update":Z
    :cond_4
    iget v8, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v8, :cond_e

    iget v0, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    .line 2233
    .local v0, "finalHeight":I
    :goto_1
    if-eq p4, v9, :cond_5

    iget v8, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v8, v0, :cond_5

    .line 2234
    iput v0, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2235
    const/4 v7, 0x1

    .line 2238
    :cond_5
    iget v8, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v8, p1, :cond_6

    .line 2239
    iput p1, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2240
    const/4 v7, 0x1

    .line 2243
    :cond_6
    iget v8, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v8, p2, :cond_7

    .line 2244
    iput p2, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2245
    const/4 v7, 0x1

    .line 2248
    :cond_7
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v3

    .line 2249
    .local v3, "newAnim":I
    iget v8, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v3, v8, :cond_8

    .line 2250
    iput v3, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2251
    const/4 v7, 0x1

    .line 2254
    :cond_8
    iget v8, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v8}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v4

    .line 2255
    .local v4, "newFlags":I
    iget v8, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v4, v8, :cond_9

    .line 2256
    iput v4, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2257
    const/4 v7, 0x1

    .line 2260
    :cond_9
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeGravity()I

    move-result v5

    .line 2261
    .local v5, "newGravity":I
    iget v8, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq v5, v8, :cond_a

    .line 2262
    iput v5, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2263
    const/4 v7, 0x1

    .line 2267
    :cond_a
    iget-object v8, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v8, :cond_f

    iget-object v8, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v2

    .line 2268
    .local v2, "newAccessibilityIdOfAnchor":I
    :goto_2
    iget v8, v6, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:I

    if-eq v2, v8, :cond_b

    .line 2269
    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:I

    .line 2270
    const/4 v7, 0x1

    .line 2273
    :cond_b
    if-eqz v7, :cond_c

    .line 2274
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    .line 2275
    iget-object v8, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v9, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-interface {v8, v9, v6}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2199
    :cond_c
    return-void

    .line 2219
    .end local v0    # "finalHeight":I
    .end local v1    # "finalWidth":I
    .end local v2    # "newAccessibilityIdOfAnchor":I
    .end local v3    # "newAnim":I
    .end local v4    # "newFlags":I
    .end local v5    # "newGravity":I
    .restart local v7    # "update":Z
    :cond_d
    iget v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    .restart local v1    # "finalWidth":I
    goto :goto_0

    .line 2232
    .end local v7    # "update":Z
    :cond_e
    iget v0, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    .restart local v0    # "finalHeight":I
    goto :goto_1

    .line 2267
    .restart local v3    # "newAnim":I
    .restart local v4    # "newFlags":I
    .restart local v5    # "newGravity":I
    :cond_f
    const/4 v2, -0x1

    .restart local v2    # "newAccessibilityIdOfAnchor":I
    goto :goto_2
.end method

.method public update(Landroid/view/View;II)V
    .locals 7
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, p2

    move v6, p3

    .line 2290
    invoke-direct/range {v0 .. v6}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIII)V

    .line 2289
    return-void
.end method

.method public update(Landroid/view/View;IIII)V
    .locals 7
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 2310
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIII)V

    .line 2309
    return-void
.end method
