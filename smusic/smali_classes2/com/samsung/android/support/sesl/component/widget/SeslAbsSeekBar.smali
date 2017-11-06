.class public abstract Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;
.super Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;
.source "SeslAbsSeekBar.java"


# static fields
.field private static final CURRENT_SEC_ACTIVE_THEMEPACKAGE:Ljava/lang/String; = "current_sec_active_themepackage"

.field private static final HOVER_DETECT_TIME:I = 0xc8

.field private static final HOVER_POPUP_WINDOW_GRAVITY_CENTER_HORIZONTAL_ON_POINT:I = 0x201

.field private static final HOVER_POPUP_WINDOW_GRAVITY_TOP_ABOVE:I = 0x3030

.field private static final IS_BASE_SDK_VERSION:Z

.field private static final MUTE_VIB_DISTANCE_LVL:I = 0x190

.field private static final MUTE_VIB_DURATION:I = 0x1f4

.field private static final MUTE_VIB_TOTAL:I = 0x4

.field private static final NO_ALPHA:I = 0xff

.field private static final SIDE_LEFT:I = 0x1

.field private static final SIDE_NONE:I = 0x2

.field private static final SIDE_RIGHT:I = 0x0

.field private static final STATUS_STOP:I = 0x0

.field private static final STATUS_TAIL_CLOSE:I = 0x2

.field private static final STATUS_TAIL_OPEN:I = 0x1


# instance fields
.field private mAllowedSeekBarAnimation:Z

.field private mAnimationCurrentFrame:I

.field private mAnimationTotalFrame:I

.field private mCircleTotal:I

.field private mCurrentProgressLevel:I

.field private mCurrentSide:I

.field private mCurrentSkipFrameWhenActionDown:I

.field private mCurrentStatus:I

.field private mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

.field private mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

.field private mDefaultNormalProgressColor:Landroid/content/res/ColorStateList;

.field private mDisabledAlpha:F

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mHasThumbTint:Z

.field private mHasThumbTintMode:Z

.field private mHasTickMarkTint:Z

.field private mHasTickMarkTintMode:Z

.field private mHoveringLevel:I

.field private mIsDragging:Z

.field private mIsDraggingForSliding:Z

.field private mIsFirstSetProgress:Z

.field private mIsFluidEnabled:Z

.field private mIsTouchDisabled:Z

.field mIsUserSeekable:Z

.field private mKeyProgressIncrement:I

.field private mLargeFont:Z

.field private mMuteAnimationSet:Landroid/animation/AnimatorSet;

.field private mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

.field private mOverlapActivatedThumbColor:Landroid/content/res/ColorStateList;

.field private mOverlapBackground:Landroid/graphics/drawable/Drawable;

.field private mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

.field private mOverlapPoint:I

.field private mOverlapPrimary:Landroid/graphics/drawable/Drawable;

.field private mPaint:Landroid/graphics/Paint;

.field private mPressedThumbWidth:I

.field private mPreviousHoverPopupType:I

.field private mPreviousProgress:I

.field private mScaledTouchSlop:I

.field private mSliderPath:Lcom/samsung/android/support/sesl/component/widget/SeslSeekBarFluidPath;

.field private mSplitProgress:Landroid/graphics/drawable/Drawable;

.field private mSplitTrack:Z

.field private mTailWidthFromCircleCenter:F

.field private mTargetFrame:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbOffset:I

.field private mThumbPosX:I

.field private mThumbPosXFloat:F

.field private mThumbPosY:I

.field private mThumbPosYFloat:F

.field private mThumbTintList:Landroid/content/res/ColorStateList;

.field private mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mTickMark:Landroid/graphics/drawable/Drawable;

.field private mTickMarkTintList:Landroid/content/res/ColorStateList;

.field private mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mTouchDownX:F

.field private mTouchDownY:F

.field mTouchProgressOffset:F

.field private mUseMuteAnimation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->IS_BASE_SDK_VERSION:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 174
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;-><init>(Landroid/content/Context;)V

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 75
    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 76
    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 77
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mHasThumbTint:Z

    .line 78
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mHasThumbTintMode:Z

    .line 81
    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    .line 82
    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 83
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mHasTickMarkTint:Z

    .line 84
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mHasTickMarkTintMode:Z

    .line 98
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mIsUserSeekable:Z

    .line 103
    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mKeyProgressIncrement:I

    .line 120
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mHoveringLevel:I

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mOverlapPoint:I

    .line 141
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mAllowedSeekBarAnimation:Z

    .line 142
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mUseMuteAnimation:Z

    .line 143
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mIsFirstSetProgress:Z

    .line 144
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mIsDraggingForSliding:Z

    .line 152
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mIsFluidEnabled:Z

    .line 153
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mLargeFont:Z

    .line 154
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mIsTouchDisabled:Z

    .line 162
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mCurrentSide:I

    .line 163
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mCurrentStatus:I

    .line 167
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mPreviousHoverPopupType:I

    .line 175
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 178
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 75
    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 76
    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 77
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mHasThumbTint:Z

    .line 78
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mHasThumbTintMode:Z

    .line 81
    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    .line 82
    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 83
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mHasTickMarkTint:Z

    .line 84
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mHasTickMarkTintMode:Z

    .line 98
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mIsUserSeekable:Z

    .line 103
    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mKeyProgressIncrement:I

    .line 120
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mHoveringLevel:I

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mOverlapPoint:I

    .line 141
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mAllowedSeekBarAnimation:Z

    .line 142
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mUseMuteAnimation:Z

    .line 143
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mIsFirstSetProgress:Z

    .line 144
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mIsDraggingForSliding:Z

    .line 152
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mIsFluidEnabled:Z

    .line 153
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mLargeFont:Z

    .line 154
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mIsTouchDisabled:Z

    .line 162
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mCurrentSide:I

    .line 163
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mCurrentStatus:I

    .line 167
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mPreviousHoverPopupType:I

    .line 179
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 183
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 186
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 72
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 75
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 76
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 77
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mHasThumbTint:Z

    .line 78
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mHasThumbTintMode:Z

    .line 81
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    .line 82
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 83
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mHasTickMarkTint:Z

    .line 84
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mHasTickMarkTintMode:Z

    .line 98
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mIsUserSeekable:Z

    .line 103
    const/4 v7, 0x1

    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mKeyProgressIncrement:I

    .line 120
    const/4 v7, 0x0

    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mHoveringLevel:I

    .line 130
    const/4 v7, -0x1

    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mOverlapPoint:I

    .line 141
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mAllowedSeekBarAnimation:Z

    .line 142
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mUseMuteAnimation:Z

    .line 143
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mIsFirstSetProgress:Z

    .line 144
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mIsDraggingForSliding:Z

    .line 152
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mIsFluidEnabled:Z

    .line 153
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mLargeFont:Z

    .line 154
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mIsTouchDisabled:Z

    .line 162
    const/4 v7, 0x2

    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mCurrentSide:I

    .line 163
    const/4 v7, 0x0

    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mCurrentStatus:I

    .line 167
    const/4 v7, 0x0

    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mPreviousHoverPopupType:I

    .line 188
    sget-object v7, Lcom/samsung/android/support/sesl/R$styleable;->SeslSeekBar:[I

    invoke-virtual {p1, p2, v7, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 191
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v7, Lcom/samsung/android/support/sesl/R$styleable;->SeslSeekBar_android_thumb:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 192
    .local v3, "thumb":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 194
    sget v7, Lcom/samsung/android/support/sesl/R$styleable;->SeslSeekBar_android_thumbTintMode:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 195
    sget v7, Lcom/samsung/android/support/sesl/R$styleable;->SeslSeekBar_android_thumbTintMode:I

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslDrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 197
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mHasThumbTintMode:Z

    .line 200
    :cond_0
    sget v7, Lcom/samsung/android/support/sesl/R$styleable;->SeslSeekBar_android_thumbTint:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 201
    sget v7, Lcom/samsung/android/support/sesl/R$styleable;->SeslSeekBar_android_thumbTint:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 202
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mHasThumbTint:Z

    .line 205
    :cond_1
    sget v7, Lcom/samsung/android/support/sesl/R$styleable;->SeslSeekBar_seslTickMark:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 206
    .local v5, "tickMark":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    .line 208
    sget v7, Lcom/samsung/android/support/sesl/R$styleable;->SeslSeekBar_seslTickMarkTintMode:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 209
    sget v7, Lcom/samsung/android/support/sesl/R$styleable;->SeslSeekBar_seslTickMarkTintMode:I

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslDrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 211
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mHasTickMarkTintMode:Z

    .line 214
    :cond_2
    sget v7, Lcom/samsung/android/support/sesl/R$styleable;->SeslSeekBar_seslTickMarkTint:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 215
    sget v7, Lcom/samsung/android/support/sesl/R$styleable;->SeslSeekBar_seslTickMarkTint:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    .line 216
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mHasTickMarkTint:Z

    .line 219
    :cond_3
    sget v7, Lcom/samsung/android/support/sesl/R$styleable;->SeslSeekBar_android_splitTrack:I

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mSplitTrack:Z

    .line 222
    sget v7, Lcom/samsung/android/support/sesl/R$styleable;->SeslSeekBar_android_thumbOffset:I

    .line 223
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getThumbOffset()I

    move-result v8

    .line 222
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    .line 224
    .local v4, "thumbOffset":I
    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->setThumbOffset(I)V

    .line 226
    sget v7, Lcom/samsung/android/support/sesl/R$styleable;->SeslSeekBar_seslUseDisabledAlpha:I

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 228
    .local v6, "useDisabledAlpha":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 230
    if-eqz v6, :cond_6

    .line 231
    sget-object v7, Lcom/samsung/android/support/sesl/R$styleable;->SeslCompatTheme:[I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p1, p2, v7, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 233
    .local v2, "ta":Landroid/content/res/TypedArray;
    sget v7, Lcom/samsung/android/support/sesl/R$styleable;->SeslCompatTheme_android_disabledAlpha:I

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-virtual {v2, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mDisabledAlpha:F

    .line 234
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 239
    .end local v2    # "ta":Landroid/content/res/TypedArray;
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->applyThumbTint()V

    .line 240
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->applyTickMarkTint()V

    .line 242
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v7

    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mScaledTouchSlop:I

    .line 245
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 246
    .local v1, "res":Landroid/content/res/Resources;
    sget v7, Lcom/samsung/android/support/sesl/R$color;->sesl_seekbar_control_color_normal:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mDefaultNormalProgressColor:Landroid/content/res/ColorStateList;

    .line 248
    sget v7, Lcom/samsung/android/support/sesl/R$color;->sesl_seekbar_control_color_activated:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    .line 250
    sget v7, Lcom/samsung/android/support/sesl/R$color;->sesl_thumb_control_color_activated:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    .line 252
    sget v7, Lcom/samsung/android/support/sesl/R$color;->sesl_seekbar_overlap_color_normal:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    .line 254
    sget v7, Lcom/samsung/android/support/sesl/R$color;->sesl_seekbar_overlap_color_activated:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    .line 256
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    iput-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mOverlapActivatedThumbColor:Landroid/content/res/ColorStateList;

    .line 258
    sget v7, Lcom/samsung/android/support/sesl/R$bool;->sesl_seekbar_sliding_animation:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mAllowedSeekBarAnimation:Z

    .line 259
    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mAllowedSeekBarAnimation:Z

    if-eqz v7, :cond_4

    .line 260
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->initMuteAnimation()V

    .line 263
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->isFluidEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 264
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->seekBarFluidInit()V

    .line 267
    :cond_5
    return-void

    .line 236
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_6
    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mDisabledAlpha:F

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;

    .prologue
    .line 56
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mCurrentProgressLevel:I

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mCurrentProgressLevel:I

    return p1
.end method

.method private applyThumbTint()V
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mHasThumbTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mHasThumbTintMode:Z

    if-eqz v0, :cond_3

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 451
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mHasThumbTint:Z

    if-eqz v0, :cond_1

    .line 452
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 455
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mHasThumbTintMode:Z

    if-eqz v0, :cond_2

    .line 456
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 461
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 462
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 465
    :cond_3
    return-void
.end method

.method private applyTickMarkTint()V
    .locals 2

    .prologue
    .line 602
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mHasTickMarkTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mHasTickMarkTintMode:Z

    if-eqz v0, :cond_3

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    .line 605
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mHasTickMarkTint:Z

    if-eqz v0, :cond_1

    .line 606
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 609
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mHasTickMarkTintMode:Z

    if-eqz v0, :cond_2

    .line 610
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 615
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 616
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 619
    :cond_3
    return-void
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    .line 1407
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1408
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1410
    :cond_0
    return-void
.end method

.method private cancelMuteAnimation()V
    .locals 1

    .prologue
    .line 1870
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1871
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1873
    :cond_0
    return-void
.end method

.method private checkInvalidatedDualColorMode()Z
    .locals 2

    .prologue
    .line 1796
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mOverlapPoint:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private closeTail()V
    .locals 1

    .prologue
    .line 790
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mCurrentStatus:I

    .line 791
    return-void
.end method

.method private colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4
    .param p1, "color"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1824
    new-array v0, v2, [[I

    new-array v1, v3, [I

    aput-object v1, v0, v3

    .line 1825
    .local v0, "EMPTY":[[I
    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-direct {v1, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method

.method private drawFrame(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x43340000    # 180.0f

    .line 1104
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mAnimationCurrentFrame:I

    if-gez v2, :cond_2

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mAnimationCurrentFrame:I

    neg-int v0, v2

    .line 1105
    .local v0, "frame":I
    :goto_0
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mAnimationTotalFrame:I

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_0

    .line 1106
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mAnimationTotalFrame:I

    add-int/lit8 v0, v2, -0x1

    .line 1108
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mSliderPath:Lcom/samsung/android/support/sesl/component/widget/SeslSeekBarFluidPath;

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSeekBarFluidPath;->getPath(I)Landroid/graphics/Path;

    move-result-object v1

    .line 1110
    .local v1, "path":Landroid/graphics/Path;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1111
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mCurrentMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 1112
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mAnimationCurrentFrame:I

    if-gez v2, :cond_3

    .line 1113
    const/high16 v2, 0x42b40000    # 90.0f

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbPosXFloat:F

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbPosYFloat:F

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1124
    :cond_1
    :goto_1
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbPosXFloat:F

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbPosYFloat:F

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1125
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1126
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1127
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getHeight()I

    move-result v3

    invoke-virtual {p0, v5, v5, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->invalidate(IIII)V

    .line 1128
    return-void

    .line 1104
    .end local v0    # "frame":I
    .end local v1    # "path":Landroid/graphics/Path;
    :cond_2
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mAnimationCurrentFrame:I

    goto :goto_0

    .line 1115
    .restart local v0    # "frame":I
    .restart local v1    # "path":Landroid/graphics/Path;
    :cond_3
    const/high16 v2, -0x3d4c0000    # -90.0f

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbPosXFloat:F

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbPosYFloat:F

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_1

    .line 1118
    :cond_4
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mAnimationCurrentFrame:I

    if-lez v2, :cond_5

    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mMirrorForRtl:Z

    if-eqz v2, :cond_5

    invoke-static {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1119
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbPosXFloat:F

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbPosYFloat:F

    invoke-virtual {p1, v4, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_1

    .line 1120
    :cond_5
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mAnimationCurrentFrame:I

    if-gez v2, :cond_1

    .line 1121
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbPosXFloat:F

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbPosYFloat:F

    invoke-virtual {p1, v4, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_1
.end method

.method private getDualOverlapDrawable()V
    .locals 2

    .prologue
    .line 1800
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mCurrentMode:I

    if-nez v0, :cond_1

    .line 1801
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/sesl/R$drawable;->sesl_scrubber_progress_horizontal_extra:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    .line 1803
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/sesl/R$drawable;->sesl_scrubber_progress_horizontal_extra:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    .line 1811
    :cond_0
    :goto_0
    return-void

    .line 1805
    :cond_1
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mCurrentMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1806
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/sesl/R$drawable;->sesl_scrubber_progress_vertical_extra:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    .line 1808
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/sesl/R$drawable;->sesl_scrubber_progress_vertical_extra:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private getHoverPopupType()I
    .locals 1

    .prologue
    .line 2011
    sget-boolean v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_0

    .line 2012
    invoke-static {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->semGetHoverPopupType(Landroid/view/View;)I

    move-result v0

    .line 2014
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getScale()F
    .locals 3

    .prologue
    .line 881
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getMax()I

    move-result v0

    .line 882
    .local v0, "max":I
    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initMuteAnimation()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1843
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    .line 1845
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1846
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/16 v6, 0x8

    .line 1847
    .local v6, "total":I
    const/16 v9, 0x1f4

    div-int v1, v9, v6

    .line 1848
    .local v1, "duration":I
    const/16 v0, 0x190

    .line 1849
    .local v0, "distance":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_3

    .line 1850
    rem-int/lit8 v9, v2, 0x2

    if-nez v9, :cond_1

    move v3, v7

    .line 1851
    .local v3, "isGoingDirection":Z
    :goto_1
    if-eqz v3, :cond_2

    new-array v9, v14, [I

    aput v8, v9, v8

    aput v0, v9, v7

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 1853
    .local v5, "progressZeroAnimation":Landroid/animation/ValueAnimator;
    :goto_2
    int-to-long v10, v1

    invoke-virtual {v5, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1854
    new-instance v9, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v9}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1855
    new-instance v9, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar$1;

    invoke-direct {v9, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar$1;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;)V

    invoke-virtual {v5, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1861
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1862
    if-eqz v3, :cond_0

    .line 1863
    int-to-double v10, v0

    const-wide v12, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v10, v12

    double-to-int v0, v10

    .line 1849
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v3    # "isGoingDirection":Z
    .end local v5    # "progressZeroAnimation":Landroid/animation/ValueAnimator;
    :cond_1
    move v3, v8

    .line 1850
    goto :goto_1

    .line 1851
    .restart local v3    # "isGoingDirection":Z
    :cond_2
    new-array v9, v14, [I

    aput v0, v9, v8

    aput v8, v9, v7

    .line 1852
    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    goto :goto_2

    .line 1866
    .end local v3    # "isGoingDirection":Z
    :cond_3
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v4}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 1867
    return-void
.end method

.method private isHoverPopupTypeNone(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 2006
    sget-boolean v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_0

    .line 2007
    invoke-static {}, Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector;->getField_TYPE_NONE()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    .line 2006
    :goto_0
    return v0

    .line 2007
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHoverPopupTypeUserCustom(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 2001
    sget-boolean v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_0

    .line 2002
    invoke-static {}, Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector;->getField_TYPE_USER_CUSTOM()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    .line 2001
    :goto_0
    return v0

    .line 2002
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openTail(I)V
    .locals 4
    .param p1, "progress"    # I

    .prologue
    const/4 v3, 0x1

    .line 760
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mPreviousProgress:I

    if-ne v1, p1, :cond_1

    .line 787
    :cond_0
    :goto_0
    return-void

    .line 762
    :cond_1
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mCurrentSkipFrameWhenActionDown:I

    if-gtz v1, :cond_6

    .line 763
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mPreviousProgress:I

    if-ge v1, p1, :cond_5

    .line 764
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mCurrentMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 765
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbPosYFloat:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingBottom()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTailWidthFromCircleCenter:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 768
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbPosXFloat:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingRight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTailWidthFromCircleCenter:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mMirrorForRtl:Z

    if-eqz v1, :cond_3

    .line 770
    invoke-static {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 772
    :cond_3
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbPosXFloat:F

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTailWidthFromCircleCenter:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 775
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mCurrentSide:I

    .line 776
    const/4 v0, 0x5

    .line 777
    .local v0, "delayedFramesBeforeReduce":I
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mAnimationTotalFrame:I

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTargetFrame:I

    .line 782
    .end local v0    # "delayedFramesBeforeReduce":I
    :cond_4
    :goto_1
    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mCurrentStatus:I

    .line 786
    :goto_2
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mPreviousProgress:I

    goto :goto_0

    .line 778
    :cond_5
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mPreviousProgress:I

    if-le v1, p1, :cond_4

    .line 779
    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mCurrentSide:I

    .line 780
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mCircleTotal:I

    neg-int v1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTargetFrame:I

    goto :goto_1

    .line 784
    :cond_6
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mCurrentSkipFrameWhenActionDown:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mCurrentSkipFrameWhenActionDown:I

    goto :goto_2
.end method

.method private seekBarFluidInit()V
    .locals 3

    .prologue
    .line 270
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 271
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mPaint:Landroid/graphics/Paint;

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 276
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/sesl/R$color;->sesl_thumb_control_color_activated:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/content/res/SeslResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->setFluidColor(I)V

    .line 279
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mPressedThumbWidth:I

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mSliderPath:Lcom/samsung/android/support/sesl/component/widget/SeslSeekBarFluidPath;

    if-nez v0, :cond_2

    .line 284
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslSeekBarFluidPath;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mPressedThumbWidth:I

    int-to-float v1, v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslSeekBarFluidPath;-><init>(F)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mSliderPath:Lcom/samsung/android/support/sesl/component/widget/SeslSeekBarFluidPath;

    .line 286
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mSliderPath:Lcom/samsung/android/support/sesl/component/widget/SeslSeekBarFluidPath;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSeekBarFluidPath;->getPathCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mAnimationTotalFrame:I

    .line 287
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mSliderPath:Lcom/samsung/android/support/sesl/component/widget/SeslSeekBarFluidPath;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSeekBarFluidPath;->getCircleCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mCircleTotal:I

    .line 288
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mPreviousProgress:I

    .line 289
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mSliderPath:Lcom/samsung/android/support/sesl/component/widget/SeslSeekBarFluidPath;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSeekBarFluidPath;->getTailWidthFromCircleCenter()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTailWidthFromCircleCenter:F

    .line 290
    return-void
.end method

.method private setHotspot(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1326
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1327
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1328
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 1330
    :cond_0
    return-void
.end method

.method private setHoverPopupDetectTime()V
    .locals 2

    .prologue
    .line 1981
    sget-boolean v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_0

    .line 1982
    const/4 v0, 0x1

    .line 1983
    invoke-static {p0, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->semGetHoverPopup(Landroid/view/View;Z)Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xc8

    .line 1982
    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector;->setHoverDetectTime(Ljava/lang/Object;I)V

    .line 1986
    :cond_0
    return-void
.end method

.method private setHoverPopupGravity(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 1967
    sget-boolean v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_0

    .line 1968
    const/4 v0, 0x1

    .line 1969
    invoke-static {p0, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->semGetHoverPopup(Landroid/view/View;Z)Ljava/lang/Object;

    move-result-object v0

    .line 1968
    invoke-static {v0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector;->setGravity(Ljava/lang/Object;I)V

    .line 1971
    :cond_0
    return-void
.end method

.method private setHoverPopupOffset(I)V
    .locals 2
    .param p1, "y"    # I

    .prologue
    .line 1974
    sget-boolean v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_0

    .line 1975
    const/4 v0, 0x1

    .line 1976
    invoke-static {p0, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->semGetHoverPopup(Landroid/view/View;Z)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 1975
    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector;->setOffset(Ljava/lang/Object;II)V

    .line 1978
    :cond_0
    return-void
.end method

.method private setHoveringPoint(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1989
    sget-boolean v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_0

    .line 1990
    invoke-static {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector;->setHoveringPoint(Ljava/lang/Object;II)V

    .line 1992
    :cond_0
    return-void
.end method

.method private setProgressOverlapTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1959
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1960
    return-void
.end method

.method private setThumbOverlapTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1936
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 1937
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mHasThumbTint:Z

    .line 1939
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->applyThumbTint()V

    .line 1941
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->isFluidEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1942
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_1

    .line 1943
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->setFluidColor(I)V

    .line 1948
    :cond_0
    :goto_0
    return-void

    .line 1945
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->setFluidColor(I)V

    goto :goto_0
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 21
    .param p1, "w"    # I
    .param p2, "thumb"    # Landroid/graphics/drawable/Drawable;
    .param p3, "scale"    # F
    .param p4, "offset"    # I

    .prologue
    .line 895
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mCurrentMode:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 896
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getHeight()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->setThumbPosInVertical(ILandroid/graphics/drawable/Drawable;FI)V

    .line 943
    :goto_0
    return-void

    .line 900
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v17

    sub-int v17, p1, v17

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingRight()I

    move-result v18

    sub-int v5, v17, v18

    .line 901
    .local v5, "available":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    .line 902
    .local v15, "thumbWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .line 903
    .local v13, "thumbHeight":I
    sub-int/2addr v5, v15

    .line 906
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbOffset:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x2

    add-int v5, v5, v17

    .line 908
    int-to-float v0, v5

    move/from16 v17, v0

    mul-float v17, v17, p3

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v14, v0

    .line 911
    .local v14, "thumbPos":I
    const/high16 v17, -0x80000000

    move/from16 v0, p4

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 912
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    .line 913
    .local v11, "oldBounds":Landroid/graphics/Rect;
    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    .line 914
    .local v16, "top":I
    iget v7, v11, Landroid/graphics/Rect;->bottom:I

    .line 920
    .end local v11    # "oldBounds":Landroid/graphics/Rect;
    .local v7, "bottom":I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mMirrorForRtl:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v17

    if-eqz v17, :cond_3

    sub-int v8, v5, v14

    .line 922
    .local v8, "left":I
    :goto_2
    add-int v12, v8, v15

    .line 924
    .local v12, "right":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 925
    .local v6, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_1

    .line 926
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbOffset:I

    move/from16 v18, v0

    sub-int v9, v17, v18

    .line 927
    .local v9, "offsetX":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v10

    .line 928
    .local v10, "offsetY":I
    add-int v17, v8, v9

    add-int v18, v16, v10

    add-int v19, v12, v9

    add-int v20, v7, v10

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 933
    .end local v9    # "offsetX":I
    .end local v10    # "offsetY":I
    :cond_1
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v8, v1, v12, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 936
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v17

    add-int v17, v17, v8

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbPosX:I

    .line 937
    div-int/lit8 v17, v13, 0x2

    add-int v17, v17, v16

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v18

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbPosY:I

    .line 939
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbPosX:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    int-to-float v0, v15

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    add-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbOffset:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbPosXFloat:F

    .line 940
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    int-to-float v0, v13

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    add-float v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbPosYFloat:F

    .line 942
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->updateSplitProgress()V

    goto/16 :goto_0

    .line 916
    .end local v6    # "background":Landroid/graphics/drawable/Drawable;
    .end local v7    # "bottom":I
    .end local v8    # "left":I
    .end local v12    # "right":I
    .end local v16    # "top":I
    :cond_2
    move/from16 v16, p4

    .line 917
    .restart local v16    # "top":I
    add-int v7, p4, v13

    .restart local v7    # "bottom":I
    goto/16 :goto_1

    :cond_3
    move v8, v14

    .line 920
    goto/16 :goto_2
.end method

.method private setThumbPosInVertical(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 17
    .param p1, "h"    # I
    .param p2, "thumb"    # Landroid/graphics/drawable/Drawable;
    .param p3, "scale"    # F
    .param p4, "offset"    # I

    .prologue
    .line 946
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v13

    sub-int v13, p1, v13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingBottom()I

    move-result v14

    sub-int v1, v13, v14

    .line 947
    .local v1, "available":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    .line 948
    .local v11, "thumbWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 949
    .local v9, "thumbHeight":I
    sub-int/2addr v1, v9

    .line 952
    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbOffset:I

    mul-int/lit8 v13, v13, 0x2

    add-int/2addr v1, v13

    .line 954
    int-to-float v13, v1

    mul-float v13, v13, p3

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v10, v13

    .line 957
    .local v10, "thumbPos":I
    const/high16 v13, -0x80000000

    move/from16 v0, p4

    if-ne v0, v13, :cond_1

    .line 958
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 959
    .local v7, "oldBounds":Landroid/graphics/Rect;
    iget v4, v7, Landroid/graphics/Rect;->left:I

    .line 960
    .local v4, "left":I
    iget v8, v7, Landroid/graphics/Rect;->right:I

    .line 966
    .end local v7    # "oldBounds":Landroid/graphics/Rect;
    .local v8, "right":I
    :goto_0
    sub-int v12, v1, v10

    .line 967
    .local v12, "top":I
    add-int v3, v12, v9

    .line 969
    .local v3, "bottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 970
    .local v2, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 971
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v5

    .line 972
    .local v5, "offsetX":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbOffset:I

    sub-int v6, v13, v14

    .line 974
    .local v6, "offsetY":I
    add-int v13, v4, v5

    add-int v14, v12, v6

    add-int v15, v8, v5

    add-int v16, v3, v6

    move/from16 v0, v16

    invoke-virtual {v2, v13, v14, v15, v0}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 979
    .end local v5    # "offsetX":I
    .end local v6    # "offsetY":I
    :cond_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v12, v8, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 982
    div-int/lit8 v13, v11, 0x2

    add-int/2addr v13, v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v14

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbPosX:I

    .line 983
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v13

    add-int/2addr v13, v12

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbPosY:I

    .line 985
    int-to-float v13, v4

    int-to-float v14, v11

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    add-float/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbPosXFloat:F

    .line 986
    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbPosY:I

    int-to-float v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbPosYFloat:F

    .line 987
    return-void

    .line 962
    .end local v2    # "background":Landroid/graphics/drawable/Drawable;
    .end local v3    # "bottom":I
    .end local v4    # "left":I
    .end local v8    # "right":I
    .end local v12    # "top":I
    :cond_1
    move/from16 v4, p4

    .line 963
    .restart local v4    # "left":I
    add-int v8, p4, v11

    .restart local v8    # "right":I
    goto :goto_0
.end method

.method private startDrag(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1313
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->setPressed(Z)V

    .line 1315
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1317
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    .line 1320
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->onStartTrackingTouch()V

    .line 1321
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 1322
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->attemptClaimDrag()V

    .line 1323
    return-void
.end method

.method private startMuteAnimation()V
    .locals 1

    .prologue
    .line 1876
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->cancelMuteAnimation()V

    .line 1878
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 1879
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1881
    :cond_0
    return-void
.end method

.method private supportIsHoveringUIEnabled()Z
    .locals 1

    .prologue
    .line 1963
    sget-boolean v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->isHoveringUIEnabled(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private supportIsInScrollingContainer()Z
    .locals 1

    .prologue
    .line 2018
    sget-boolean v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->isInScrollingContainer(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private trackHoverEvent(I)V
    .locals 7
    .param p1, "posX"    # I

    .prologue
    .line 1603
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getWidth()I

    move-result v4

    .line 1604
    .local v4, "width":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v5

    sub-int v5, v4, v5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingRight()I

    move-result v6

    sub-int v0, v5, v6

    .line 1606
    .local v0, "available":I
    const/4 v1, 0x0

    .line 1608
    .local v1, "hoverLevel":F
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v5

    if-ge p1, v5, :cond_0

    .line 1609
    const/4 v3, 0x0

    .line 1617
    .local v3, "scale":F
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getMax()I

    move-result v2

    .line 1618
    .local v2, "max":I
    int-to-float v5, v2

    mul-float/2addr v5, v3

    add-float/2addr v1, v5

    .line 1619
    float-to-int v5, v1

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mHoveringLevel:I

    .line 1620
    return-void

    .line 1610
    .end local v2    # "max":I
    .end local v3    # "scale":F
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingRight()I

    move-result v5

    sub-int v5, v4, v5

    if-le p1, v5, :cond_1

    .line 1611
    const/high16 v3, 0x3f800000    # 1.0f

    .restart local v3    # "scale":F
    goto :goto_0

    .line 1613
    .end local v3    # "scale":F
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v5

    sub-int v5, p1, v5

    int-to-float v5, v5

    int-to-float v6, v0

    div-float v3, v5, v6

    .line 1614
    .restart local v3    # "scale":F
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTouchProgressOffset:F

    goto :goto_0
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    .line 1333
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mCurrentMode:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_0

    .line 1334
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->trackTouchEventInVertical(Landroid/view/MotionEvent;)V

    .line 1378
    :goto_0
    return-void

    .line 1338
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 1339
    .local v7, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 1340
    .local v8, "y":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getWidth()I

    move-result v6

    .line 1341
    .local v6, "width":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v9

    sub-int v9, v6, v9

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingRight()I

    move-result v10

    sub-int v0, v9, v10

    .line 1344
    .local v0, "availableWidth":I
    const/4 v3, 0x0

    .line 1345
    .local v3, "progress":F
    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mMirrorForRtl:Z

    if-eqz v9, :cond_4

    invoke-static {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1346
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingRight()I

    move-result v9

    sub-int v9, v6, v9

    if-le v7, v9, :cond_2

    .line 1347
    const/4 v5, 0x0

    .line 1364
    .local v5, "scale":F
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getMax()I

    move-result v2

    .line 1365
    .local v2, "max":I
    int-to-float v9, v2

    div-float v1, v11, v9

    .line 1367
    .local v1, "basicWidth":F
    const/4 v9, 0x0

    cmpl-float v9, v5, v9

    if-lez v9, :cond_1

    cmpg-float v9, v5, v11

    if-gez v9, :cond_1

    .line 1368
    rem-float v4, v5, v1

    .line 1369
    .local v4, "remainder":F
    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v1, v9

    cmpl-float v9, v4, v9

    if-lez v9, :cond_1

    .line 1370
    sub-float v9, v1, v4

    add-float/2addr v5, v9

    .line 1374
    .end local v4    # "remainder":F
    :cond_1
    int-to-float v9, v2

    mul-float/2addr v9, v5

    add-float/2addr v3, v9

    .line 1376
    int-to-float v9, v7

    int-to-float v10, v8

    invoke-direct {p0, v9, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->setHotspot(FF)V

    .line 1377
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {p0, v9, v10, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->setProgressInternal(IZZ)Z

    goto :goto_0

    .line 1348
    .end local v1    # "basicWidth":F
    .end local v2    # "max":I
    .end local v5    # "scale":F
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v9

    if-ge v7, v9, :cond_3

    .line 1349
    const/high16 v5, 0x3f800000    # 1.0f

    .restart local v5    # "scale":F
    goto :goto_1

    .line 1351
    .end local v5    # "scale":F
    :cond_3
    sub-int v9, v0, v7

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    int-to-float v10, v0

    div-float v5, v9, v10

    .line 1352
    .restart local v5    # "scale":F
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTouchProgressOffset:F

    goto :goto_1

    .line 1355
    .end local v5    # "scale":F
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v9

    if-ge v7, v9, :cond_5

    .line 1356
    const/4 v5, 0x0

    .restart local v5    # "scale":F
    goto :goto_1

    .line 1357
    .end local v5    # "scale":F
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingRight()I

    move-result v9

    sub-int v9, v6, v9

    if-le v7, v9, :cond_6

    .line 1358
    const/high16 v5, 0x3f800000    # 1.0f

    .restart local v5    # "scale":F
    goto :goto_1

    .line 1360
    .end local v5    # "scale":F
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v9

    sub-int v9, v7, v9

    int-to-float v9, v9

    int-to-float v10, v0

    div-float v5, v9, v10

    .line 1361
    .restart local v5    # "scale":F
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTouchProgressOffset:F

    goto :goto_1
.end method

.method private trackTouchEventInVertical(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1381
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getHeight()I

    move-result v1

    .line 1382
    .local v1, "height":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v7

    sub-int v7, v1, v7

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingBottom()I

    move-result v8

    sub-int v0, v7, v8

    .line 1383
    .local v0, "availableHeight":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 1384
    .local v5, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    sub-int v6, v1, v7

    .line 1386
    .local v6, "y":I
    const/4 v3, 0x0

    .line 1387
    .local v3, "progress":F
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingBottom()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 1388
    const/4 v4, 0x0

    .line 1395
    .local v4, "scale":F
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getMax()I

    move-result v2

    .line 1396
    .local v2, "max":I
    int-to-float v7, v2

    mul-float/2addr v7, v4

    add-float/2addr v3, v7

    .line 1398
    int-to-float v7, v5

    int-to-float v8, v6

    invoke-direct {p0, v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->setHotspot(FF)V

    .line 1399
    float-to-int v7, v3

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0, v7, v8, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->setProgressInternal(IZZ)Z

    .line 1400
    return-void

    .line 1389
    .end local v2    # "max":I
    .end local v4    # "scale":F
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v7

    sub-int v7, v1, v7

    if-le v6, v7, :cond_1

    .line 1390
    const/high16 v4, 0x3f800000    # 1.0f

    .restart local v4    # "scale":F
    goto :goto_0

    .line 1392
    .end local v4    # "scale":F
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingBottom()I

    move-result v7

    sub-int v7, v6, v7

    int-to-float v7, v7

    int-to-float v8, v0

    div-float v4, v7, v8

    .line 1393
    .restart local v4    # "scale":F
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTouchProgressOffset:F

    goto :goto_0
.end method

.method private updateBoundsForDualColor()V
    .locals 13

    .prologue
    .line 1760
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->checkInvalidatedDualColorMode()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1790
    :cond_0
    :goto_0
    return-void

    .line 1764
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1765
    .local v0, "base":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getMax()I

    move-result v5

    .line 1766
    .local v5, "maxProgress":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getProgress()I

    move-result v2

    .line 1767
    .local v2, "curProgress":I
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mCurrentMode:I

    if-nez v9, :cond_3

    .line 1768
    iget v9, v0, Landroid/graphics/Rect;->right:I

    iget v10, v0, Landroid/graphics/Rect;->left:I

    sub-int v8, v9, v10

    .line 1770
    .local v8, "width":I
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mOverlapPoint:I

    if-eqz v9, :cond_2

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mOverlapPoint:I

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getProgress()I

    move-result v10

    if-ge v9, v10, :cond_2

    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mLargeFont:Z

    if-nez v9, :cond_2

    .line 1771
    iget v4, v0, Landroid/graphics/Rect;->left:I

    .line 1776
    .local v4, "left":I
    :goto_1
    iget v9, v0, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    int-to-float v10, v8

    int-to-float v11, v2

    int-to-float v12, v5

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v6, v9

    .line 1777
    .local v6, "right":I
    iget v9, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1778
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    iget v10, v0, Landroid/graphics/Rect;->top:I

    iget v11, v0, Landroid/graphics/Rect;->right:I

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v4, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1779
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    iget v10, v0, Landroid/graphics/Rect;->top:I

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v4, v10, v6, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 1773
    .end local v4    # "left":I
    .end local v6    # "right":I
    :cond_2
    iget v9, v0, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    int-to-float v10, v8

    iget v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mOverlapPoint:I

    int-to-float v11, v11

    int-to-float v12, v5

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v4, v9

    .restart local v4    # "left":I
    goto :goto_1

    .line 1780
    .end local v4    # "left":I
    .end local v8    # "width":I
    :cond_3
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mCurrentMode:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_0

    .line 1781
    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    iget v10, v0, Landroid/graphics/Rect;->top:I

    sub-int v3, v9, v10

    .line 1782
    .local v3, "height":I
    iget v9, v0, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    int-to-float v10, v3

    iget v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mOverlapPoint:I

    sub-int v11, v5, v11

    int-to-float v11, v11

    int-to-float v12, v5

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v1, v9

    .line 1784
    .local v1, "bottom":I
    iget v9, v0, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    int-to-float v10, v3

    sub-int v11, v5, v2

    int-to-float v11, v11

    int-to-float v12, v5

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v7, v9

    .line 1787
    .local v7, "top":I
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    iget v10, v0, Landroid/graphics/Rect;->left:I

    iget v11, v0, Landroid/graphics/Rect;->top:I

    iget v12, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v9, v10, v11, v12, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1788
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    iget v10, v0, Landroid/graphics/Rect;->left:I

    iget v11, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v9, v10, v7, v11, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_0
.end method

.method private updateDualColorMode()V
    .locals 2

    .prologue
    .line 1739
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->checkInvalidatedDualColorMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1757
    :goto_0
    return-void

    .line 1743
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 1744
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 1746
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mLargeFont:Z

    if-nez v0, :cond_1

    .line 1747
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mOverlapPoint:I

    if-le v0, v1, :cond_2

    .line 1748
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->setProgressOverlapTintList(Landroid/content/res/ColorStateList;)V

    .line 1749
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mOverlapActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->setThumbOverlapTintList(Landroid/content/res/ColorStateList;)V

    .line 1756
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->updateBoundsForDualColor()V

    goto :goto_0

    .line 1751
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1752
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1
.end method

.method private updateHoverPopup()V
    .locals 1

    .prologue
    .line 1995
    sget-boolean v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_0

    .line 1996
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->semGetHoverPopup(Landroid/view/View;Z)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector;->update(Ljava/lang/Object;)V

    .line 1998
    :cond_0
    return-void
.end method

.method private updateSplitProgress()V
    .locals 12

    .prologue
    const/high16 v11, 0x41b00000    # 22.0f

    const/high16 v9, 0x40800000    # 4.0f

    const/high16 v10, 0x40000000    # 2.0f

    .line 993
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mCurrentMode:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    .line 1015
    :cond_0
    :goto_0
    return-void

    .line 995
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    .line 996
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 997
    .local v0, "base":Landroid/graphics/Rect;
    if-eqz v1, :cond_2

    .line 998
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mMirrorForRtl:Z

    if-eqz v4, :cond_3

    invoke-static {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 999
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbPosX:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1005
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getWidth()I

    move-result v3

    .line 1006
    .local v3, "w":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getHeight()I

    move-result v2

    .line 1008
    .local v2, "h":I
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 1009
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    int-to-float v5, v3

    div-float/2addr v5, v10

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mDensity:F

    mul-float/2addr v6, v9

    div-float/2addr v6, v10

    sub-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v6, v2

    div-float/2addr v6, v10

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mDensity:F

    mul-float/2addr v7, v11

    div-float/2addr v7, v10

    sub-float/2addr v6, v7

    float-to-int v6, v6

    int-to-float v7, v3

    div-float/2addr v7, v10

    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mDensity:F

    mul-float/2addr v8, v9

    div-float/2addr v8, v10

    add-float/2addr v7, v8

    float-to-int v7, v7

    int-to-float v8, v2

    div-float/2addr v8, v10

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mDensity:F

    mul-float/2addr v9, v11

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 1001
    .end local v2    # "h":I
    .end local v3    # "w":I
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v4

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbPosX:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1
.end method

.method private updateThumbAndTrackPos(II)V
    .locals 13
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v10, 0x0

    .line 802
    iget v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mCurrentMode:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_0

    .line 803
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->updateThumbAndTrackPosInVertical(II)V

    .line 845
    :goto_0
    return-void

    .line 807
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v11

    sub-int v11, p2, v11

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingBottom()I

    move-result v12

    sub-int v2, v11, v12

    .line 808
    .local v2, "paddedHeight":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 809
    .local v6, "track":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 813
    .local v3, "thumb":Landroid/graphics/drawable/Drawable;
    iget v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mMaxHeight:I

    invoke-static {v11, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 814
    .local v7, "trackHeight":I
    if-nez v3, :cond_4

    move v4, v10

    .line 820
    .local v4, "thumbHeight":I
    :goto_1
    const/4 v0, 0x0

    .line 822
    .local v0, "fluidOffset":I
    if-le v4, v7, :cond_5

    .line 823
    sub-int v11, v2, v4

    div-int/lit8 v1, v11, 0x2

    .line 824
    .local v1, "offsetHeight":I
    sub-int v11, v4, v7

    rem-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->isFluidEnabled()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 825
    const/4 v0, 0x1

    .line 827
    :cond_1
    sub-int v11, v4, v7

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v1

    add-int v8, v11, v0

    .line 828
    .local v8, "trackOffset":I
    move v5, v1

    .line 835
    .local v5, "thumbOffset":I
    :goto_2
    if-eqz v6, :cond_2

    .line 836
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingRight()I

    move-result v11

    sub-int v11, p1, v11

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v12

    sub-int v9, v11, v12

    .line 837
    .local v9, "trackWidth":I
    add-int v11, v8, v7

    invoke-virtual {v6, v10, v8, v9, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 840
    .end local v9    # "trackWidth":I
    :cond_2
    if-eqz v3, :cond_3

    .line 841
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getScale()F

    move-result v10

    invoke-direct {p0, p1, v3, v10, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 844
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->updateSplitProgress()V

    goto :goto_0

    .line 814
    .end local v0    # "fluidOffset":I
    .end local v1    # "offsetHeight":I
    .end local v4    # "thumbHeight":I
    .end local v5    # "thumbOffset":I
    .end local v8    # "trackOffset":I
    :cond_4
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    goto :goto_1

    .line 830
    .restart local v0    # "fluidOffset":I
    .restart local v4    # "thumbHeight":I
    :cond_5
    sub-int v11, v2, v7

    div-int/lit8 v1, v11, 0x2

    .line 831
    .restart local v1    # "offsetHeight":I
    move v8, v1

    .line 832
    .restart local v8    # "trackOffset":I
    sub-int v11, v7, v4

    div-int/lit8 v11, v11, 0x2

    add-int v5, v1, v11

    .restart local v5    # "thumbOffset":I
    goto :goto_2
.end method

.method private updateThumbAndTrackPosInVertical(II)V
    .locals 12
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v9, 0x0

    .line 848
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v10

    sub-int v10, p1, v10

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingRight()I

    move-result v11

    sub-int v1, v10, v11

    .line 849
    .local v1, "paddedWidth":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 850
    .local v5, "track":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 854
    .local v2, "thumb":Landroid/graphics/drawable/Drawable;
    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mMaxWidth:I

    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 855
    .local v8, "trackWidth":I
    if-nez v2, :cond_2

    move v4, v9

    .line 860
    .local v4, "thumbWidth":I
    :goto_0
    if-le v4, v8, :cond_3

    .line 861
    sub-int v10, v1, v4

    div-int/lit8 v0, v10, 0x2

    .line 862
    .local v0, "offsetWidth":I
    sub-int v10, v4, v8

    div-int/lit8 v10, v10, 0x2

    add-int v7, v0, v10

    .line 863
    .local v7, "trackOffset":I
    move v3, v0

    .line 870
    .local v3, "thumbOffset":I
    :goto_1
    if-eqz v5, :cond_0

    .line 871
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingBottom()I

    move-result v10

    sub-int v10, p2, v10

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v11

    sub-int v6, v10, v11

    .line 872
    .local v6, "trackHeight":I
    sub-int v10, v1, v7

    invoke-virtual {v5, v7, v9, v10, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 875
    .end local v6    # "trackHeight":I
    :cond_0
    if-eqz v2, :cond_1

    .line 876
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getScale()F

    move-result v9

    invoke-direct {p0, p2, v2, v9, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->setThumbPosInVertical(ILandroid/graphics/drawable/Drawable;FI)V

    .line 878
    :cond_1
    return-void

    .line 855
    .end local v0    # "offsetWidth":I
    .end local v3    # "thumbOffset":I
    .end local v4    # "thumbWidth":I
    .end local v7    # "trackOffset":I
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    goto :goto_0

    .line 865
    .restart local v4    # "thumbWidth":I
    :cond_3
    sub-int v10, v1, v8

    div-int/lit8 v0, v10, 0x2

    .line 866
    .restart local v0    # "offsetWidth":I
    move v7, v0

    .line 867
    .restart local v7    # "trackOffset":I
    sub-int v10, v8, v4

    div-int/lit8 v10, v10, 0x2

    add-int v3, v0, v10

    .restart local v3    # "thumbOffset":I
    goto :goto_1
.end method

.method private updateWarningMode(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    const/4 v0, 0x1

    .line 1829
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mCurrentMode:I

    if-ne v1, v0, :cond_0

    .line 1830
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getMax()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 1832
    .local v0, "isMax":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 1833
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->setProgressOverlapTintList(Landroid/content/res/ColorStateList;)V

    .line 1834
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mOverlapActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->setThumbOverlapTintList(Landroid/content/res/ColorStateList;)V

    .line 1840
    .end local v0    # "isMax":Z
    :cond_0
    :goto_1
    return-void

    .line 1830
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1836
    .restart local v0    # "isMax":Z
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1837
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1
.end method


# virtual methods
.method canUserSetProgress()Z
    .locals 1

    .prologue
    .line 1560
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->isIndeterminate()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method drawThumb(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1198
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1199
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 1202
    .local v0, "saveCount":I
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mCurrentMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1203
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbOffset:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1208
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1209
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1211
    .end local v0    # "saveCount":I
    :cond_0
    return-void

    .line 1205
    .restart local v0    # "saveCount":I
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbOffset:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 1206
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    .line 1205
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method drawTickMarks(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x1

    .line 1172
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_3

    .line 1173
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getMax()I

    move-result v0

    .line 1174
    .local v0, "count":I
    if-le v0, v2, :cond_3

    .line 1175
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 1176
    .local v7, "w":I
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 1177
    .local v1, "h":I
    if-ltz v7, :cond_1

    div-int/lit8 v3, v7, 0x2

    .line 1178
    .local v3, "halfW":I
    :goto_0
    if-ltz v1, :cond_0

    div-int/lit8 v2, v1, 0x2

    .line 1179
    .local v2, "halfH":I
    :cond_0
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    neg-int v9, v3

    neg-int v10, v2

    invoke-virtual {v8, v9, v10, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1182
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    int-to-float v9, v0

    div-float v6, v8, v9

    .line 1183
    .local v6, "spacing":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 1184
    .local v5, "saveCount":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getHeight()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1185
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-gt v4, v0, :cond_2

    .line 1186
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1187
    const/4 v8, 0x0

    invoke-virtual {p1, v6, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1185
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v2    # "halfH":I
    .end local v3    # "halfW":I
    .end local v4    # "i":I
    .end local v5    # "saveCount":I
    .end local v6    # "spacing":F
    :cond_1
    move v3, v2

    .line 1177
    goto :goto_0

    .line 1189
    .restart local v2    # "halfH":I
    .restart local v3    # "halfW":I
    .restart local v4    # "i":I
    .restart local v5    # "saveCount":I
    .restart local v6    # "spacing":F
    :cond_2
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1192
    .end local v0    # "count":I
    .end local v1    # "h":I
    .end local v2    # "halfH":I
    .end local v3    # "halfW":I
    .end local v4    # "i":I
    .end local v5    # "saveCount":I
    .end local v6    # "spacing":F
    .end local v7    # "w":I
    :cond_3
    return-void
.end method

.method drawTrack(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1132
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 1133
    .local v3, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_2

    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mSplitTrack:Z

    if-eqz v4, :cond_2

    .line 1134
    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslDrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1135
    .local v0, "insets":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 1136
    .local v2, "tempRect":Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1137
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v4

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbOffset:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 1138
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 1139
    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 1141
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1142
    .local v1, "saveCount":I
    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1143
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->drawTrack(Landroid/graphics/Canvas;)V

    .line 1144
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->drawTickMarks(Landroid/graphics/Canvas;)V

    .line 1145
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1150
    .end local v0    # "insets":Landroid/graphics/Rect;
    .end local v1    # "saveCount":I
    .end local v2    # "tempRect":Landroid/graphics/Rect;
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->checkInvalidatedDualColorMode()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1151
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1152
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mCurrentMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 1153
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1160
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1161
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getProgress()I

    move-result v4

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mOverlapPoint:I

    if-le v4, v5, :cond_0

    .line 1162
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1164
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1166
    :cond_1
    return-void

    .line 1147
    :cond_2
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->drawTrack(Landroid/graphics/Canvas;)V

    .line 1148
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->drawTickMarks(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 1154
    :cond_3
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mMirrorForRtl:Z

    if-eqz v4, :cond_4

    invoke-static {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1155
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1156
    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_1

    .line 1158
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 702
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->drawableHotspotChanged(FF)V

    .line 704
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 707
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 6

    .prologue
    .line 675
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->drawableStateChanged()V

    .line 677
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 678
    .local v1, "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mDisabledAlpha:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 679
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v0, 0xff

    .line 680
    .local v0, "alpha":I
    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 681
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 682
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 683
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 687
    .end local v0    # "alpha":I
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 688
    .local v2, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 689
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getDrawableState()[I

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 690
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 693
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    .line 694
    .local v3, "tickMark":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 695
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getDrawableState()[I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 696
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 698
    :cond_2
    return-void

    .line 679
    .end local v2    # "thumb":Landroid/graphics/drawable/Drawable;
    .end local v3    # "tickMark":Landroid/graphics/drawable/Drawable;
    :cond_3
    const/high16 v4, 0x437f0000    # 255.0f

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mDisabledAlpha:F

    mul-float/2addr v4, v5

    float-to-int v0, v4

    goto :goto_0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1492
    const-class v0, Landroid/widget/AbsSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyProgressIncrement()I
    .locals 1

    .prologue
    .line 640
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mKeyProgressIncrement:I

    return v0
.end method

.method public getSplitTrack()Z
    .locals 1

    .prologue
    .line 501
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mSplitTrack:Z

    return v0
.end method

.method public getThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1671
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getThumbHeight()I
    .locals 1

    .prologue
    .line 1680
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getThumbOffset()I
    .locals 1

    .prologue
    .line 471
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbOffset:I

    return v0
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 413
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getThumbTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 444
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getTickMark()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTickMarkTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 566
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTickMarkTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 598
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public isFluidEnabled()Z
    .locals 1

    .prologue
    .line 1923
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mIsFluidEnabled:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 662
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->jumpDrawablesToCurrentState()V

    .line 664
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 669
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 671
    :cond_1
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x2

    .line 1031
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 1033
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->supportIsHoveringUIEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1034
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getHoverPopupType()I

    move-result v1

    .line 1035
    .local v1, "hoverPopupType":I
    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->isHoverPopupTypeUserCustom(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mPreviousHoverPopupType:I

    if-eq v2, v1, :cond_0

    .line 1037
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mPreviousHoverPopupType:I

    .line 1039
    const/16 v2, 0x3231

    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->setHoverPopupGravity(I)V

    .line 1041
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getMeasuredHeight()I

    move-result v0

    .line 1043
    .local v0, "contentHeight":I
    div-int/lit8 v2, v0, 0x2

    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->setHoverPopupOffset(I)V

    .line 1044
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->setHoverPopupDetectTime()V

    .line 1048
    .end local v0    # "contentHeight":I
    .end local v1    # "hoverPopupType":I
    :cond_0
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mCurrentMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 1049
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1050
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1053
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mIsTouchDisabled:Z

    if-nez v2, :cond_2

    .line 1054
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->drawThumb(Landroid/graphics/Canvas;)V

    .line 1057
    :cond_2
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mIsDragging:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->isFluidEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1058
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mCurrentStatus:I

    if-ne v2, v4, :cond_4

    .line 1059
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mCurrentSide:I

    packed-switch v2, :pswitch_data_0

    .line 1070
    :goto_0
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mAnimationCurrentFrame:I

    if-nez v2, :cond_3

    .line 1071
    const/4 v2, 0x2

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mCurrentSide:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1101
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    .line 1061
    :pswitch_0
    :try_start_1
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mAnimationCurrentFrame:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mAnimationCurrentFrame:I

    .line 1062
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->drawFrame(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1031
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1065
    :pswitch_1
    :try_start_2
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mAnimationCurrentFrame:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mAnimationCurrentFrame:I

    .line 1066
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->drawFrame(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 1073
    :cond_4
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mCurrentStatus:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 1074
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mCurrentSide:I

    packed-switch v2, :pswitch_data_1

    .line 1096
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->closeTail()V

    .line 1098
    :cond_5
    :goto_2
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->drawFrame(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 1076
    :pswitch_2
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mAnimationCurrentFrame:I

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mCircleTotal:I

    if-ge v2, v3, :cond_6

    .line 1077
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mCircleTotal:I

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mAnimationCurrentFrame:I

    .line 1079
    :cond_6
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mAnimationCurrentFrame:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mAnimationCurrentFrame:I

    .line 1080
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mAnimationCurrentFrame:I

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTargetFrame:I

    if-lt v2, v3, :cond_5

    .line 1081
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTargetFrame:I

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mAnimationCurrentFrame:I

    .line 1082
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->closeTail()V

    goto :goto_2

    .line 1086
    :pswitch_3
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mAnimationCurrentFrame:I

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mCircleTotal:I

    neg-int v3, v3

    if-le v2, v3, :cond_7

    .line 1087
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mCircleTotal:I

    neg-int v2, v2

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mAnimationCurrentFrame:I

    .line 1089
    :cond_7
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mAnimationCurrentFrame:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mAnimationCurrentFrame:I

    .line 1090
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mAnimationCurrentFrame:I

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTargetFrame:I

    if-gt v2, v3, :cond_5

    .line 1091
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTargetFrame:I

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mAnimationCurrentFrame:I

    .line 1092
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->closeTail()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1059
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1074
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method onHoverChanged(III)V
    .locals 0
    .param p1, "hoverLevel"    # I
    .param p2, "posX"    # I
    .param p3, "posY"    # I

    .prologue
    .line 1600
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1629
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->supportIsHoveringUIEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1630
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1631
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 1632
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 1633
    .local v2, "y":I
    packed-switch v0, :pswitch_data_0

    .line 1655
    .end local v0    # "action":I
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 1636
    .restart local v0    # "action":I
    .restart local v1    # "x":I
    .restart local v2    # "y":I
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->trackHoverEvent(I)V

    .line 1637
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mHoveringLevel:I

    invoke-virtual {p0, v3, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->onStartTrackingHover(III)V

    goto :goto_0

    .line 1640
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->trackHoverEvent(I)V

    .line 1641
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mHoveringLevel:I

    invoke-virtual {p0, v3, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->onHoverChanged(III)V

    .line 1643
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getHoverPopupType()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->isHoverPopupTypeUserCustom(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1644
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->setHoveringPoint(II)V

    .line 1645
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->updateHoverPopup()V

    goto :goto_0

    .line 1649
    :pswitch_3
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->onStopTrackingHover()V

    goto :goto_0

    .line 1633
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1498
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1499
    const-class v1, Landroid/widget/AbsSeekBar;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1500
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1501
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getProgress()I

    move-result v0

    .line 1502
    .local v0, "progress":I
    if-lez v0, :cond_0

    .line 1503
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1505
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1506
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1509
    .end local v0    # "progress":I
    :cond_1
    return-void
.end method

.method onKeyChange()V
    .locals 0

    .prologue
    .line 1431
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 1435
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1436
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mKeyProgressIncrement:I

    .line 1437
    .local v0, "increment":I
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mCurrentMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 1438
    sparse-switch p1, :sswitch_data_0

    .line 1476
    .end local v0    # "increment":I
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_1
    return v1

    .line 1441
    .restart local v0    # "increment":I
    :sswitch_0
    neg-int v0, v0

    .line 1446
    :sswitch_1
    invoke-static {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    neg-int v0, v0

    .line 1449
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getProgress()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2, v1, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->setProgressInternal(IZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1450
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->onKeyChange()V

    goto :goto_1

    .line 1456
    :cond_2
    sparse-switch p1, :sswitch_data_1

    goto :goto_0

    .line 1459
    :sswitch_2
    neg-int v0, v0

    .line 1464
    :sswitch_3
    invoke-static {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3

    neg-int v0, v0

    .line 1467
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getProgress()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2, v1, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->setProgressInternal(IZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1468
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->onKeyChange()V

    goto :goto_1

    .line 1438
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_0
        0x45 -> :sswitch_0
        0x46 -> :sswitch_1
        0x51 -> :sswitch_1
    .end sparse-switch

    .line 1456
    :sswitch_data_1
    .sparse-switch
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x45 -> :sswitch_2
        0x46 -> :sswitch_3
        0x51 -> :sswitch_3
    .end sparse-switch
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 1215
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1217
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 1218
    .local v2, "dw":I
    const/4 v1, 0x0

    .line 1219
    .local v1, "dh":I
    if-eqz v0, :cond_0

    .line 1220
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mCurrentMode:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 1221
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_1

    move v4, v3

    .line 1222
    .local v4, "thumbWidth":I
    :goto_0
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mMinWidth:I

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1223
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mMinHeight:I

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1224
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1232
    .end local v4    # "thumbWidth":I
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 1233
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 1235
    const/4 v5, 0x0

    invoke-static {v2, p1, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->resolveSizeAndState(III)I

    move-result v5

    const/4 v6, 0x0

    .line 1236
    invoke-static {v1, p2, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->resolveSizeAndState(III)I

    move-result v6

    .line 1235
    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1237
    monitor-exit p0

    return-void

    .line 1221
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    goto :goto_0

    .line 1226
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_3

    .line 1227
    .local v3, "thumbHeight":I
    :goto_2
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mMinWidth:I

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1228
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mMinHeight:I

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1229
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    .line 1226
    .end local v3    # "thumbHeight":I
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    goto :goto_2

    .line 1215
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "dh":I
    .end local v2    # "dw":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method onProgressRefresh(FZI)V
    .locals 5
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z
    .param p3, "progress"    # I

    .prologue
    const/4 v3, 0x0

    .line 728
    const v4, 0x461c4000    # 10000.0f

    mul-float/2addr v4, p1

    float-to-int v1, v4

    .line 730
    .local v1, "targetLevel":I
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mUseMuteAnimation:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mIsFirstSetProgress:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mIsDraggingForSliding:Z

    if-nez v4, :cond_1

    const/4 v0, 0x1

    .line 733
    .local v0, "isMuteAnimationNeeded":Z
    :goto_0
    if-eqz v0, :cond_2

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mCurrentProgressLevel:I

    if-eqz v4, :cond_2

    if-nez v1, :cond_2

    .line 734
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->startMuteAnimation()V

    .line 757
    :cond_0
    :goto_1
    return-void

    .end local v0    # "isMuteAnimationNeeded":Z
    :cond_1
    move v0, v3

    .line 730
    goto :goto_0

    .line 736
    .restart local v0    # "isMuteAnimationNeeded":Z
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->cancelMuteAnimation()V

    .line 738
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mIsFirstSetProgress:Z

    .line 739
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mCurrentProgressLevel:I

    .line 741
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->onProgressRefresh(FZI)V

    .line 743
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 744
    .local v2, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_3

    .line 745
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getWidth()I

    move-result v3

    const/high16 v4, -0x80000000

    invoke-direct {p0, v3, v2, p1, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 750
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->invalidate()V

    .line 753
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->isFluidEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 754
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getProgress()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->openTail(I)V

    goto :goto_1
.end method

.method public onResolveDrawables(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 1022
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->onResolveDrawables(I)V

    .line 1024
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1025
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 1027
    :cond_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 4
    .param p1, "layoutDirection"    # I

    .prologue
    .line 1565
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->onRtlPropertiesChanged(I)V

    .line 1567
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 1568
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1569
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getScale()F

    move-result v2

    const/high16 v3, -0x80000000

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 1574
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->invalidate()V

    .line 1576
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 795
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->onSizeChanged(IIII)V

    .line 799
    return-void
.end method

.method protected onSlidingRefresh(I)V
    .locals 4
    .param p1, "level"    # I

    .prologue
    .line 1886
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->onSlidingRefresh(I)V

    .line 1888
    int-to-float v2, p1

    const v3, 0x461c4000    # 10000.0f

    div-float v0, v2, v3

    .line 1889
    .local v0, "scale":F
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 1890
    .local v1, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 1891
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getWidth()I

    move-result v2

    const/high16 v3, -0x80000000

    invoke-direct {p0, v2, v1, v0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 1896
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->invalidate()V

    .line 1898
    :cond_0
    return-void
.end method

.method onStartTrackingHover(III)V
    .locals 0
    .param p1, "hoverLevel"    # I
    .param p2, "posX"    # I
    .param p3, "posY"    # I

    .prologue
    .line 1584
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 1416
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mIsDragging:Z

    .line 1417
    return-void
.end method

.method onStopTrackingHover()V
    .locals 0

    .prologue
    .line 1592
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 1424
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mIsDragging:Z

    .line 1425
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1241
    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mIsUserSeekable:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mIsTouchDisabled:Z

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    move v3, v4

    .line 1309
    :cond_1
    :goto_0
    return v3

    .line 1245
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->isFluidEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_3

    .line 1246
    const/4 v0, 0x3

    .line 1247
    .local v0, "skipFrameWhenActionDown":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getMax()I

    move-result v5

    const/16 v6, 0x64

    if-lt v5, v6, :cond_4

    .end local v0    # "skipFrameWhenActionDown":I
    :goto_1
    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mCurrentSkipFrameWhenActionDown:I

    .line 1248
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mAnimationCurrentFrame:I

    .line 1249
    const/4 v5, 0x2

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mCurrentSide:I

    .line 1252
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 1254
    :pswitch_0
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mIsDraggingForSliding:Z

    .line 1255
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->supportIsInScrollingContainer()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1256
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTouchDownX:F

    .line 1257
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTouchDownY:F

    goto :goto_0

    .restart local v0    # "skipFrameWhenActionDown":I
    :cond_4
    move v0, v3

    .line 1247
    goto :goto_1

    .line 1259
    .end local v0    # "skipFrameWhenActionDown":I
    :cond_5
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->startDrag(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1264
    :pswitch_1
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mIsDraggingForSliding:Z

    .line 1265
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mIsDragging:Z

    if-eqz v4, :cond_6

    .line 1266
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1268
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 1269
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 1270
    .local v2, "y":F
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mCurrentMode:I

    if-eq v4, v7, :cond_7

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTouchDownX:F

    sub-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mScaledTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_8

    :cond_7
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mCurrentMode:I

    if-ne v4, v7, :cond_1

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTouchDownY:F

    sub-float v4, v2, v4

    .line 1272
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mScaledTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 1274
    :cond_8
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->startDrag(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1280
    .end local v1    # "x":F
    .end local v2    # "y":F
    :pswitch_2
    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mIsDraggingForSliding:Z

    if-eqz v5, :cond_9

    .line 1281
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mIsDraggingForSliding:Z

    .line 1283
    :cond_9
    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mIsDragging:Z

    if-eqz v5, :cond_a

    .line 1284
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 1285
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->onStopTrackingTouch()V

    .line 1286
    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->setPressed(Z)V

    .line 1297
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->invalidate()V

    goto/16 :goto_0

    .line 1290
    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->onStartTrackingTouch()V

    .line 1291
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 1292
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->onStopTrackingTouch()V

    goto :goto_2

    .line 1301
    :pswitch_3
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mIsDraggingForSliding:Z

    .line 1302
    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mIsDragging:Z

    if-eqz v5, :cond_b

    .line 1303
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->onStopTrackingTouch()V

    .line 1304
    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->setPressed(Z)V

    .line 1306
    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->invalidate()V

    goto/16 :goto_0

    .line 1252
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method onVisualProgressChanged(IF)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "scale"    # F

    .prologue
    .line 711
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->onVisualProgressChanged(IF)V

    .line 713
    sget v1, Lcom/samsung/android/support/sesl/R$id;->progress:I

    if-ne p1, v1, :cond_0

    .line 714
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 715
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 716
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getWidth()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-direct {p0, v1, v0, p2, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 721
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->invalidate()V

    .line 724
    .end local v0    # "thumb":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1513
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1553
    :goto_0
    return v2

    .line 1517
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    .line 1518
    goto :goto_0

    .line 1521
    :cond_1
    sparse-switch p1, :sswitch_data_0

    move v2, v3

    .line 1553
    goto :goto_0

    .line 1523
    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->canUserSetProgress()Z

    move-result v4

    if-nez v4, :cond_2

    move v2, v3

    .line 1524
    goto :goto_0

    .line 1526
    :cond_2
    if-eqz p2, :cond_3

    const-string v4, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    move v2, v3

    .line 1528
    goto :goto_0

    .line 1530
    :cond_4
    const-string v3, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    .line 1532
    .local v1, "value":F
    float-to-int v3, v1

    invoke-virtual {p0, v3, v2, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->setProgressInternal(IZZ)Z

    move-result v2

    goto :goto_0

    .line 1536
    .end local v1    # "value":F
    :sswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->canUserSetProgress()Z

    move-result v4

    if-nez v4, :cond_5

    move v2, v3

    .line 1537
    goto :goto_0

    .line 1539
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x41a00000    # 20.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1541
    .local v0, "increment":I
    const/16 v4, 0x2000

    if-ne p1, v4, :cond_6

    .line 1542
    neg-int v0, v0

    .line 1546
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getProgress()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p0, v4, v2, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->setProgressInternal(IZZ)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1547
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->onKeyChange()V

    goto :goto_0

    :cond_7
    move v2, v3

    .line 1550
    goto :goto_0

    .line 1521
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_1
        0x102003d -> :sswitch_0
    .end sparse-switch
.end method

.method setFluidColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 1928
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 1929
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mPaint:Landroid/graphics/Paint;

    .line 1932
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1933
    return-void
.end method

.method public setFluidEnabled(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1906
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "current_sec_active_themepackage"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1908
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_1

    move v0, v2

    .line 1910
    .local v0, "isOpenTheme":Z
    :goto_0
    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mIsFluidEnabled:Z

    .line 1912
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mIsFluidEnabled:Z

    if-eqz v2, :cond_0

    .line 1913
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->seekBarFluidInit()V

    .line 1915
    :cond_0
    return-void

    .end local v0    # "isOpenTheme":Z
    :cond_1
    move v0, v3

    .line 1908
    goto :goto_0

    .restart local v0    # "isOpenTheme":Z
    :cond_2
    move v2, v3

    .line 1910
    goto :goto_1
.end method

.method public setKeyProgressIncrement(I)V
    .locals 0
    .param p1, "increment"    # I

    .prologue
    .line 628
    if-gez p1, :cond_0

    neg-int p1, p1

    .end local p1    # "increment":I
    :cond_0
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mKeyProgressIncrement:I

    .line 629
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 3
    .param p1, "max"    # I

    .prologue
    .line 645
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->setMax(I)V

    .line 646
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mIsFirstSetProgress:Z

    .line 648
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getMax()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mKeyProgressIncrement:I

    div-int/2addr v0, v1

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    .line 651
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41a00000    # 20.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->setKeyProgressIncrement(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 653
    :cond_1
    monitor-exit p0

    return-void

    .line 645
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 1690
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->setMode(I)V

    .line 1691
    packed-switch p1, :pswitch_data_0

    .line 1712
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->invalidate()V

    .line 1713
    return-void

    .line 1693
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1694
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 1697
    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/sesl/R$drawable;->sesl_scrubber_control_anim:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1699
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1702
    .end local v0    # "thumb":Landroid/graphics/drawable/Drawable;
    :pswitch_3
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/sesl/R$drawable;->sesl_split_seekbar_primary_progress:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    .line 1704
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/sesl/R$drawable;->sesl_split_seekbar_vertical_bar:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 1706
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->updateSplitProgress()V

    goto :goto_0

    .line 1709
    :pswitch_4
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getProgress()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->updateWarningMode(I)V

    goto :goto_0

    .line 1691
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setOverlapPointForDualColor(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1722
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getMax()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 1736
    :goto_0
    return-void

    .line 1726
    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 1727
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mOverlapPoint:I

    .line 1728
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1729
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 1735
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->invalidate()V

    goto :goto_0

    .line 1731
    :cond_1
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mOverlapPoint:I

    .line 1732
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getDualOverlapDrawable()V

    .line 1733
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->updateDualColorMode()V

    goto :goto_1
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1662
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1663
    return-void
.end method

.method public setProgressInternal(IZZ)Z
    .locals 1
    .param p1, "progress"    # I
    .param p2, "fromUser"    # Z
    .param p3, "animate"    # Z

    .prologue
    .line 1484
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->setProgressInternal(IZZ)Z

    move-result v0

    .line 1485
    .local v0, "superRet":Z
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->updateWarningMode(I)V

    .line 1486
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->updateDualColorMode()V

    .line 1487
    return v0
.end method

.method public setProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1953
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1955
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    .line 1956
    return-void
.end method

.method public setSplitTrack(Z)V
    .locals 0
    .param p1, "splitTrack"    # Z

    .prologue
    .line 493
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mSplitTrack:Z

    .line 494
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->invalidate()V

    .line 495
    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 305
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v2, :cond_5

    .line 306
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 307
    const/4 v0, 0x1

    .line 312
    .local v0, "needUpdate":Z
    :goto_0
    if-eqz p1, :cond_2

    .line 313
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 314
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->canResolveLayoutDirection()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 315
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getLayoutDirection()I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 321
    :cond_0
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mCurrentMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    .line 322
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbOffset:I

    .line 328
    :goto_1
    if-eqz v0, :cond_2

    .line 329
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 330
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 331
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->requestLayout()V

    .line 335
    :cond_2
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 337
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->applyThumbTint()V

    .line 338
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->invalidate()V

    .line 340
    if-eqz v0, :cond_3

    .line 341
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->updateThumbAndTrackPos(II)V

    .line 342
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 345
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getDrawableState()[I

    move-result-object v1

    .line 346
    .local v1, "state":[I
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 350
    .end local v1    # "state":[I
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->isFluidEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 351
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mPressedThumbWidth:I

    .line 353
    :cond_4
    return-void

    .line 309
    .end local v0    # "needUpdate":Z
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "needUpdate":Z
    goto :goto_0

    .line 324
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbOffset:I

    goto :goto_1
.end method

.method public setThumbOffset(I)V
    .locals 0
    .param p1, "thumbOffset"    # I

    .prologue
    .line 481
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbOffset:I

    .line 482
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->invalidate()V

    .line 483
    return-void
.end method

.method public setThumbTintColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 371
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 372
    .local v0, "mOverlapColor":Landroid/content/res/ColorStateList;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 373
    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    .line 375
    :cond_0
    return-void
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 391
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mHasThumbTint:Z

    .line 394
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->applyThumbTint()V

    .line 396
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->isFluidEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 398
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    .line 397
    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->setFluidColor(I)V

    .line 401
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    .line 402
    return-void

    .line 398
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 428
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 429
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mHasThumbTintMode:Z

    .line 431
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->applyThumbTint()V

    .line 432
    return-void
.end method

.method public setTickMark(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "tickMark"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 511
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 515
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    .line 517
    if-eqz p1, :cond_2

    .line 518
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 519
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getLayoutDirection()I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 520
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 521
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 523
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->applyTickMarkTint()V

    .line 526
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->invalidate()V

    .line 527
    return-void
.end method

.method public setTickMarkTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 551
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    .line 552
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mHasTickMarkTint:Z

    .line 554
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->applyTickMarkTint()V

    .line 555
    return-void
.end method

.method public setTickMarkTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 582
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 583
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mHasTickMarkTintMode:Z

    .line 585
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->applyTickMarkTint()V

    .line 586
    return-void
.end method

.method protected updateDrawableBounds(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 1817
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->updateDrawableBounds(II)V

    .line 1819
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->updateThumbAndTrackPos(II)V

    .line 1820
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->updateBoundsForDualColor()V

    .line 1821
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 657
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
