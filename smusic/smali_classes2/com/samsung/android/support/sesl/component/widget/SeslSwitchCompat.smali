.class public Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;
.super Landroid/widget/CompoundButton;
.source "SeslSwitchCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat$ThumbAnimation;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_EVENT_CLASS_NAME:Ljava/lang/String; = "android.widget.Switch"

.field private static final CHANGE_FLING_VELOCITY:I = 0x7d0

.field private static final CHECKED_STATE_SET:[I

.field private static final MIN_FLING_VELOCITY:I = 0x1f4

.field private static final MONOSPACE:I = 0x3

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final THUMB_ANIMATION_DURATION:I = 0x1f4

.field private static final TOUCH_MODE_DOWN:I = 0x1

.field private static final TOUCH_MODE_DRAGGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I


# instance fields
.field private mHasThumbTint:Z

.field private mHasThumbTintMode:Z

.field private mHasTrackTint:Z

.field private mHasTrackTintMode:Z

.field private mMinFlingVelocity:I

.field private mOffLayout:Landroid/text/Layout;

.field private mOnLayout:Landroid/text/Layout;

.field mPositionAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat$ThumbAnimation;

.field private mShowText:Z

.field private mSplitTrack:Z

.field private mSwitchBottom:I

.field private mSwitchHeight:I

.field private mSwitchLeft:I

.field private mSwitchMinWidth:I

.field private mSwitchPadding:I

.field private mSwitchRight:I

.field private mSwitchTop:I

.field private mSwitchTransformationMethod:Landroid/text/method/TransformationMethod;

.field private mSwitchWidth:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTextColors:Landroid/content/res/ColorStateList;

.field private mTextOff:Ljava/lang/CharSequence;

.field private mTextOn:Ljava/lang/CharSequence;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbPosition:F

.field private mThumbTextPadding:I

.field private mThumbTintList:Landroid/content/res/ColorStateList;

.field private mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mThumbWidth:I

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mTouchX:F

.field private mTouchY:F

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

.field private mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

.field private mTrackTintList:Landroid/content/res/ColorStateList;

.field private mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 167
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 178
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 188
    const v0, 0x101043f

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 189
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 202
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 97
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 98
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mHasThumbTint:Z

    .line 99
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mHasThumbTintMode:Z

    .line 102
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTrackTintList:Landroid/content/res/ColorStateList;

    .line 103
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 104
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mHasTrackTint:Z

    .line 105
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mHasTrackTintMode:Z

    .line 119
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 164
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTempRect:Landroid/graphics/Rect;

    .line 204
    new-instance v8, Landroid/text/TextPaint;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    .line 206
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 207
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    iput v9, v8, Landroid/text/TextPaint;->density:F

    .line 209
    sget-object v8, Lcom/samsung/android/support/sesl/R$styleable;->SeslSwitchCompat:[I

    const/4 v9, 0x0

    invoke-virtual {p1, p2, v8, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 211
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v8, Lcom/samsung/android/support/sesl/R$styleable;->SeslSwitchCompat_android_thumb:I

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 212
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_0

    .line 213
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 215
    :cond_0
    sget v8, Lcom/samsung/android/support/sesl/R$styleable;->SeslSwitchCompat_android_track:I

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 216
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_1

    .line 217
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 218
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 219
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

    .line 221
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x2

    new-array v9, v9, [I

    fill-array-data v9, :array_0

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 222
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x2

    new-array v9, v9, [I

    fill-array-data v9, :array_1

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 224
    :cond_1
    sget v8, Lcom/samsung/android/support/sesl/R$styleable;->SeslSwitchCompat_android_textOn:I

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    .line 225
    sget v8, Lcom/samsung/android/support/sesl/R$styleable;->SeslSwitchCompat_android_textOff:I

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    .line 226
    sget v8, Lcom/samsung/android/support/sesl/R$styleable;->SeslSwitchCompat_android_showText:I

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mShowText:Z

    .line 227
    sget v8, Lcom/samsung/android/support/sesl/R$styleable;->SeslSwitchCompat_android_thumbTextPadding:I

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbTextPadding:I

    .line 229
    sget v8, Lcom/samsung/android/support/sesl/R$styleable;->SeslSwitchCompat_android_switchMinWidth:I

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mSwitchMinWidth:I

    .line 231
    sget v8, Lcom/samsung/android/support/sesl/R$styleable;->SeslSwitchCompat_android_switchPadding:I

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mSwitchPadding:I

    .line 233
    sget v8, Lcom/samsung/android/support/sesl/R$styleable;->SeslSwitchCompat_android_splitTrack:I

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mSplitTrack:Z

    .line 235
    sget v8, Lcom/samsung/android/support/sesl/R$styleable;->SeslSwitchCompat_android_thumbTint:I

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 236
    .local v4, "thumbTintList":Landroid/content/res/ColorStateList;
    if-eqz v4, :cond_2

    .line 237
    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 238
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mHasThumbTint:Z

    .line 240
    :cond_2
    sget v8, Lcom/samsung/android/support/sesl/R$styleable;->SeslSwitchCompat_android_thumbTintMode:I

    const/4 v9, -0x1

    .line 241
    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    const/4 v9, 0x0

    .line 240
    invoke-static {v8, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslDrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v5

    .line 242
    .local v5, "thumbTintMode":Landroid/graphics/PorterDuff$Mode;
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v8, v5, :cond_3

    .line 243
    iput-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 244
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mHasThumbTintMode:Z

    .line 246
    :cond_3
    iget-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mHasThumbTint:Z

    if-nez v8, :cond_4

    iget-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mHasThumbTintMode:Z

    if-eqz v8, :cond_5

    .line 247
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->applyThumbTint()V

    .line 250
    :cond_5
    sget v8, Lcom/samsung/android/support/sesl/R$styleable;->SeslSwitchCompat_seslTrackTint:I

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 251
    .local v6, "trackTintList":Landroid/content/res/ColorStateList;
    if-eqz v6, :cond_6

    .line 252
    iput-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTrackTintList:Landroid/content/res/ColorStateList;

    .line 253
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mHasTrackTint:Z

    .line 255
    :cond_6
    sget v8, Lcom/samsung/android/support/sesl/R$styleable;->SeslSwitchCompat_seslTrackTintMode:I

    const/4 v9, -0x1

    .line 256
    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    const/4 v9, 0x0

    .line 255
    invoke-static {v8, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslDrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v7

    .line 257
    .local v7, "trackTintMode":Landroid/graphics/PorterDuff$Mode;
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v8, v7, :cond_7

    .line 258
    iput-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 259
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mHasTrackTintMode:Z

    .line 261
    :cond_7
    iget-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mHasTrackTint:Z

    if-nez v8, :cond_8

    iget-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mHasTrackTintMode:Z

    if-eqz v8, :cond_9

    .line 262
    :cond_8
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->applyTrackTint()V

    .line 265
    :cond_9
    sget v8, Lcom/samsung/android/support/sesl/R$styleable;->SeslSwitchCompat_android_switchTextAppearance:I

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 267
    .local v1, "appearance":I
    if-eqz v1, :cond_a

    .line 268
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->setSwitchTextAppearance(Landroid/content/Context;I)V

    .line 271
    :cond_a
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 273
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 274
    .local v2, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v8

    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTouchSlop:I

    .line 275
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v8

    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mMinFlingVelocity:I

    .line 278
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->refreshDrawableState()V

    .line 279
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->isChecked()Z

    move-result v8

    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->setChecked(Z)V

    .line 280
    return-void

    .line 221
    :array_0
    .array-data 4
        0x101009e
        0x10100a0
    .end array-data

    .line 222
    :array_1
    .array-data 4
        0x101009e
        -0x10100a0
    .end array-data
.end method

.method private animateThumbToCheckedState(Z)V
    .locals 4
    .param p1, "newCheckedState"    # Z

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mPositionAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat$ThumbAnimation;

    if-eqz v0, :cond_0

    .line 1022
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->cancelPositionAnimator()V

    .line 1025
    :cond_0
    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat$ThumbAnimation;

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbPosition:F

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-direct {v1, p0, v2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat$ThumbAnimation;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;FF)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mPositionAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat$ThumbAnimation;

    .line 1026
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mPositionAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat$ThumbAnimation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat$ThumbAnimation;->setDuration(J)V

    .line 1027
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mPositionAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat$ThumbAnimation;

    sget-object v1, Lcom/samsung/android/support/sesl/component/animation/SeslElasticInterpolator;->ELASTIC_50:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat$ThumbAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1028
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mPositionAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat$ThumbAnimation;

    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat$1;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;Z)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat$ThumbAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1044
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mPositionAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat$ThumbAnimation;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1045
    return-void

    .line 1025
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private applyThumbTint()V
    .locals 2

    .prologue
    .line 682
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mHasThumbTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mHasThumbTintMode:Z

    if-eqz v0, :cond_3

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 685
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mHasThumbTint:Z

    if-eqz v0, :cond_1

    .line 686
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 689
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mHasThumbTintMode:Z

    if-eqz v0, :cond_2

    .line 690
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 695
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 696
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 699
    :cond_3
    return-void
.end method

.method private applyTrackTint()V
    .locals 2

    .prologue
    .line 559
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mHasTrackTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mHasTrackTintMode:Z

    if-eqz v0, :cond_3

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 562
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mHasTrackTint:Z

    if-eqz v0, :cond_1

    .line 563
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTrackTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 566
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mHasTrackTintMode:Z

    if-eqz v0, :cond_2

    .line 567
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 572
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 573
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 576
    :cond_3
    return-void
.end method

.method private cancelPositionAnimator()V
    .locals 1

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mPositionAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat$ThumbAnimation;

    if-eqz v0, :cond_0

    .line 1049
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->clearAnimation()V

    .line 1050
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mPositionAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat$ThumbAnimation;

    .line 1052
    :cond_0
    return-void
.end method

.method private cancelSuperTouch(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 971
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 972
    .local v0, "cancel":Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 973
    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 974
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 975
    return-void
.end method

.method private static constrain(FFF)F
    .locals 1
    .param p0, "amount"    # F
    .param p1, "low"    # F
    .param p2, "high"    # F

    .prologue
    .line 1452
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .end local p1    # "low":F
    :goto_0
    return p1

    .restart local p1    # "low":F
    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method private getTargetCheckedState()Z
    .locals 2

    .prologue
    .line 1055
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbPosition:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getThumbOffset()I
    .locals 3

    .prologue
    .line 1333
    invoke-static {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1334
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbPosition:F

    sub-float v0, v1, v2

    .line 1338
    .local v0, "thumbPosition":F
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->getThumbScrollRange()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1

    .line 1336
    .end local v0    # "thumbPosition":F
    :cond_0
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbPosition:F

    .restart local v0    # "thumbPosition":F
    goto :goto_0
.end method

.method private getThumbScrollRange()I
    .locals 4

    .prologue
    .line 1342
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 1343
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTempRect:Landroid/graphics/Rect;

    .line 1344
    .local v1, "padding":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1347
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 1348
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslDrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1353
    .local v0, "insets":Landroid/graphics/Rect;
    :goto_0
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mSwitchWidth:I

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbWidth:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    .line 1356
    .end local v0    # "insets":Landroid/graphics/Rect;
    .end local v1    # "padding":Landroid/graphics/Rect;
    :goto_1
    return v2

    .line 1350
    .restart local v1    # "padding":Landroid/graphics/Rect;
    :cond_0
    sget-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslDrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    .restart local v0    # "insets":Landroid/graphics/Rect;
    goto :goto_0

    .line 1356
    .end local v0    # "insets":Landroid/graphics/Rect;
    .end local v1    # "padding":Landroid/graphics/Rect;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private hitThumb(FF)Z
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v5, 0x0

    .line 875
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_1

    .line 888
    :cond_0
    :goto_0
    return v5

    .line 880
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->getThumbOffset()I

    move-result v2

    .line 882
    .local v2, "thumbOffset":I
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 883
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mSwitchTop:I

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTouchSlop:I

    sub-int v4, v6, v7

    .line 884
    .local v4, "thumbTop":I
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mSwitchLeft:I

    add-int/2addr v6, v2

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTouchSlop:I

    sub-int v1, v6, v7

    .line 885
    .local v1, "thumbLeft":I
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbWidth:I

    add-int/2addr v6, v1

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTouchSlop:I

    add-int v3, v6, v7

    .line 887
    .local v3, "thumbRight":I
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mSwitchBottom:I

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTouchSlop:I

    add-int v0, v6, v7

    .line 888
    .local v0, "thumbBottom":I
    int-to-float v6, v1

    cmpl-float v6, p1, v6

    if-lez v6, :cond_0

    int-to-float v6, v3

    cmpg-float v6, p1, v6

    if-gez v6, :cond_0

    int-to-float v6, v4

    cmpl-float v6, p2, v6

    if-lez v6, :cond_0

    int-to-float v6, v0

    cmpg-float v6, p2, v6

    if-gez v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0
.end method

.method private makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 861
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod;

    .line 862
    invoke-interface {v0, p1, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 865
    .local v1, "transformed":Ljava/lang/CharSequence;
    :goto_0
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    .line 867
    invoke-static {v1, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    :goto_1
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 865
    return-object v0

    .end local v1    # "transformed":Ljava/lang/CharSequence;
    :cond_0
    move-object v1, p1

    .line 862
    goto :goto_0

    .line 867
    .restart local v1    # "transformed":Ljava/lang/CharSequence;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private setSwitchTypefaceByIndex(II)V
    .locals 1
    .param p1, "typefaceIndex"    # I
    .param p2, "styleIndex"    # I

    .prologue
    .line 328
    const/4 v0, 0x0

    .line 329
    .local v0, "tf":Landroid/graphics/Typeface;
    packed-switch p1, :pswitch_data_0

    .line 343
    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->setSwitchTypeface(Landroid/graphics/Typeface;I)V

    .line 344
    return-void

    .line 331
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 332
    goto :goto_0

    .line 335
    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 336
    goto :goto_0

    .line 339
    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private stopDrag(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 983
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTouchMode:I

    .line 987
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v4, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    move v0, v4

    .line 988
    .local v0, "commitChange":Z
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->isChecked()Z

    move-result v2

    .line 990
    .local v2, "oldState":Z
    if-eqz v0, :cond_b

    .line 991
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 992
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    .line 1000
    .local v3, "xvel":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x44fa0000    # 2000.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    .line 1001
    invoke-static {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_3

    cmpg-float v6, v3, v8

    if-gez v6, :cond_2

    move v1, v4

    .line 1011
    .end local v3    # "xvel":F
    .local v1, "newState":Z
    :goto_1
    if-eq v1, v2, :cond_0

    .line 1012
    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->playSoundEffect(I)V

    .line 1015
    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->setChecked(Z)V

    .line 1016
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->cancelSuperTouch(Landroid/view/MotionEvent;)V

    .line 1017
    return-void

    .end local v0    # "commitChange":Z
    .end local v1    # "newState":Z
    .end local v2    # "oldState":Z
    :cond_1
    move v0, v5

    .line 987
    goto :goto_0

    .restart local v0    # "commitChange":Z
    .restart local v2    # "oldState":Z
    .restart local v3    # "xvel":F
    :cond_2
    move v1, v5

    .line 1001
    goto :goto_1

    :cond_3
    cmpl-float v6, v3, v8

    if-lez v6, :cond_4

    move v1, v4

    goto :goto_1

    :cond_4
    move v1, v5

    goto :goto_1

    .line 1002
    :cond_5
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x43fa0000    # 500.0f

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_6

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbPosition:F

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_a

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbPosition:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_a

    .line 1003
    :cond_6
    invoke-static {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_8

    cmpg-float v6, v3, v8

    if-gez v6, :cond_7

    move v1, v4

    .restart local v1    # "newState":Z
    :goto_2
    goto :goto_1

    .end local v1    # "newState":Z
    :cond_7
    move v1, v5

    goto :goto_2

    :cond_8
    cmpl-float v6, v3, v8

    if-lez v6, :cond_9

    move v1, v4

    goto :goto_2

    :cond_9
    move v1, v5

    goto :goto_2

    .line 1005
    :cond_a
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->getTargetCheckedState()Z

    move-result v1

    .restart local v1    # "newState":Z
    goto :goto_1

    .line 1008
    .end local v1    # "newState":Z
    .end local v3    # "xvel":F
    :cond_b
    move v1, v2

    .restart local v1    # "newState":Z
    goto :goto_1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 1148
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTempRect:Landroid/graphics/Rect;

    .line 1149
    .local v5, "padding":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mSwitchLeft:I

    .line 1150
    .local v7, "switchLeft":I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mSwitchTop:I

    .line 1151
    .local v9, "switchTop":I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mSwitchRight:I

    .line 1152
    .local v8, "switchRight":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mSwitchBottom:I

    .line 1154
    .local v6, "switchBottom":I
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->getThumbOffset()I

    move-result v18

    add-int v10, v7, v18

    .line 1157
    .local v10, "thumbInitialLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    .line 1158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/support/sesl/component/widget/SeslDrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v11

    .line 1164
    .local v11, "thumbInsets":Landroid/graphics/Rect;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    .line 1165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1168
    iget v0, v5, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    add-int v10, v10, v18

    .line 1171
    move v15, v7

    .line 1172
    .local v15, "trackLeft":I
    move/from16 v17, v9

    .line 1173
    .local v17, "trackTop":I
    move/from16 v16, v8

    .line 1174
    .local v16, "trackRight":I
    move v14, v6

    .line 1175
    .local v14, "trackBottom":I
    if-eqz v11, :cond_3

    .line 1176
    iget v0, v11, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    iget v0, v5, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_0

    .line 1177
    iget v0, v11, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    iget v0, v5, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    add-int v15, v15, v18

    .line 1179
    :cond_0
    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    iget v0, v5, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1

    .line 1180
    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    iget v0, v5, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    add-int v17, v17, v18

    .line 1182
    :cond_1
    iget v0, v11, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    iget v0, v5, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_2

    .line 1183
    iget v0, v11, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    iget v0, v5, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    sub-int v16, v16, v18

    .line 1185
    :cond_2
    iget v0, v11, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_3

    .line 1186
    iget v0, v11, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    sub-int v14, v14, v18

    .line 1189
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-virtual {v0, v15, v1, v2, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1193
    .end local v14    # "trackBottom":I
    .end local v15    # "trackLeft":I
    .end local v16    # "trackRight":I
    .end local v17    # "trackTop":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    .line 1194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1196
    iget v0, v5, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    sub-int v12, v10, v18

    .line 1197
    .local v12, "thumbLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbWidth:I

    move/from16 v18, v0

    add-int v18, v18, v10

    iget v0, v5, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    add-int v13, v18, v19

    .line 1198
    .local v13, "thumbRight":I
    const/4 v4, 0x0

    .line 1200
    .local v4, "diff":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v18

    sub-int v19, v6, v9

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    .line 1201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v18

    div-int/lit8 v4, v18, 0x2

    .line 1204
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    add-int v19, v9, v4

    sub-int v20, v6, v4

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v12, v1, v13, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1206
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1207
    .local v3, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_6

    .line 1208
    invoke-virtual {v3, v12, v9, v13, v6}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 1214
    .end local v3    # "background":Landroid/graphics/drawable/Drawable;
    .end local v4    # "diff":I
    .end local v12    # "thumbLeft":I
    .end local v13    # "thumbRight":I
    :cond_6
    invoke-super/range {p0 .. p1}, Landroid/widget/CompoundButton;->draw(Landroid/graphics/Canvas;)V

    .line 1215
    return-void

    .line 1160
    .end local v11    # "thumbInsets":Landroid/graphics/Rect;
    :cond_7
    sget-object v11, Lcom/samsung/android/support/sesl/component/widget/SeslDrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    .restart local v11    # "thumbInsets":Landroid/graphics/Rect;
    goto/16 :goto_0
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1393
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->drawableHotspotChanged(FF)V

    .line 1395
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1396
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 1399
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1400
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 1402
    :cond_1
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 5

    .prologue
    .line 1371
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 1373
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->getDrawableState()[I

    move-result-object v1

    .line 1374
    .local v1, "state":[I
    const/4 v0, 0x0

    .line 1376
    .local v0, "changed":Z
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 1377
    .local v2, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1378
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v4

    or-int/2addr v0, v4

    .line 1381
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 1382
    .local v3, "trackDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1383
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v4

    or-int/2addr v0, v4

    .line 1386
    :cond_1
    if-eqz v0, :cond_2

    .line 1387
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->invalidate()V

    .line 1389
    :cond_2
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 3

    .prologue
    .line 1303
    invoke-static {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1304
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    .line 1310
    :cond_0
    :goto_0
    return v0

    .line 1306
    :cond_1
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mSwitchWidth:I

    add-int v0, v1, v2

    .line 1307
    .local v0, "padding":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1308
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mSwitchPadding:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    .prologue
    .line 1315
    invoke-static {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1316
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    .line 1322
    :cond_0
    :goto_0
    return v0

    .line 1318
    :cond_1
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mSwitchWidth:I

    add-int v0, v1, v2

    .line 1319
    .local v0, "padding":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1320
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mSwitchPadding:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getShowText()Z
    .locals 1

    .prologue
    .line 780
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mShowText:Z

    return v0
.end method

.method public getSplitTrack()Z
    .locals 1

    .prologue
    .line 721
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mSplitTrack:Z

    return v0
.end method

.method public getSwitchMinWidth()I
    .locals 1

    .prologue
    .line 434
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mSwitchMinWidth:I

    return v0
.end method

.method public getSwitchPadding()I
    .locals 1

    .prologue
    .line 409
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mSwitchPadding:I

    return v0
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbTextPadding()I
    .locals 1

    .prologue
    .line 457
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbTextPadding:I

    return v0
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 649
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getThumbTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 678
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTrackTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 527
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTrackTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTrackTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 555
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 1411
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 1413
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1414
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1417
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1418
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1421
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->cancelPositionAnimator()V

    .line 1422
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->setThumbPosition(F)V

    .line 1423
    return-void

    .line 1422
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 1362
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 1363
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1364
    sget-object v1, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mergeDrawableStates([I[I)[I

    .line 1366
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1219
    invoke-super/range {p0 .. p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 1221
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTempRect:Landroid/graphics/Rect;

    .line 1222
    .local v10, "padding":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    .line 1223
    .local v20, "trackDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v20, :cond_4

    .line 1224
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1229
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mSwitchTop:I

    move/from16 v17, v0

    .line 1230
    .local v17, "switchTop":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mSwitchBottom:I

    .line 1231
    .local v13, "switchBottom":I
    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    add-int v15, v17, v21

    .line 1232
    .local v15, "switchInnerTop":I
    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v14, v13, v21

    .line 1234
    .local v14, "switchInnerBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    .line 1235
    .local v18, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v20, :cond_0

    .line 1236
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mSplitTrack:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    if-eqz v18, :cond_5

    .line 1237
    invoke-static/range {v18 .. v18}, Lcom/samsung/android/support/sesl/component/widget/SeslDrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v7

    .line 1238
    .local v7, "insets":Landroid/graphics/Rect;
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1239
    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move/from16 v0, v21

    iput v0, v10, Landroid/graphics/Rect;->left:I

    .line 1240
    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    iget v0, v7, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v21

    iput v0, v10, Landroid/graphics/Rect;->right:I

    .line 1242
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v12

    .line 1243
    .local v12, "saveCount":I
    sget-object v21, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v10, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1244
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1245
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1270
    .end local v7    # "insets":Landroid/graphics/Rect;
    .end local v12    # "saveCount":I
    :cond_0
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v12

    .line 1272
    .restart local v12    # "saveCount":I
    if-eqz v18, :cond_1

    .line 1273
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1276
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->getTargetCheckedState()Z

    move-result v21

    if-eqz v21, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mOnLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    .line 1277
    .local v16, "switchText":Landroid/text/Layout;
    :goto_2
    if-eqz v16, :cond_3

    .line 1278
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->getDrawableState()[I

    move-result-object v6

    .line 1279
    .local v6, "drawableState":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTextColors:Landroid/content/res/ColorStateList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    .line 1280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTextColors:Landroid/content/res/ColorStateList;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v6, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/text/TextPaint;->setColor(I)V

    .line 1282
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-object v6, v0, Landroid/text/TextPaint;->drawableState:[I

    .line 1285
    if-eqz v18, :cond_b

    .line 1286
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 1287
    .local v4, "bounds":Landroid/graphics/Rect;
    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    add-int v5, v21, v22

    .line 1292
    .end local v4    # "bounds":Landroid/graphics/Rect;
    .local v5, "cX":I
    :goto_3
    div-int/lit8 v21, v5, 0x2

    invoke-virtual/range {v16 .. v16}, Landroid/text/Layout;->getWidth()I

    move-result v22

    div-int/lit8 v22, v22, 0x2

    sub-int v8, v21, v22

    .line 1293
    .local v8, "left":I
    add-int v21, v15, v14

    div-int/lit8 v21, v21, 0x2

    invoke-virtual/range {v16 .. v16}, Landroid/text/Layout;->getHeight()I

    move-result v22

    div-int/lit8 v22, v22, 0x2

    sub-int v19, v21, v22

    .line 1294
    .local v19, "top":I
    int-to-float v0, v8

    move/from16 v21, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1295
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 1298
    .end local v5    # "cX":I
    .end local v6    # "drawableState":[I
    .end local v8    # "left":I
    .end local v19    # "top":I
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1299
    return-void

    .line 1226
    .end local v12    # "saveCount":I
    .end local v13    # "switchBottom":I
    .end local v14    # "switchInnerBottom":I
    .end local v15    # "switchInnerTop":I
    .end local v16    # "switchText":Landroid/text/Layout;
    .end local v17    # "switchTop":I
    .end local v18    # "thumbDrawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    invoke-virtual {v10}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_0

    .line 1248
    .restart local v13    # "switchBottom":I
    .restart local v14    # "switchInnerBottom":I
    .restart local v15    # "switchInnerTop":I
    .restart local v17    # "switchTop":I
    .restart local v18    # "thumbDrawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->isChecked()Z

    move-result v21

    if-eqz v21, :cond_7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

    .line 1249
    .local v9, "overDrawable":Landroid/graphics/drawable/Drawable;
    :goto_4
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1251
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbPosition:F

    move/from16 v21, v0

    const/high16 v22, 0x437f0000    # 255.0f

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v3, v0

    .line 1252
    .local v3, "alpha":I
    const/16 v21, 0xff

    move/from16 v0, v21

    if-le v3, v0, :cond_8

    const/16 v3, 0xff

    .line 1253
    :cond_6
    :goto_5
    rsub-int v11, v3, 0xff

    .line 1255
    .local v11, "r_alpah":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->isChecked()Z

    move-result v21

    if-eqz v21, :cond_9

    .line 1257
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1258
    invoke-virtual {v9, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1265
    :goto_6
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1266
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    .line 1248
    .end local v3    # "alpha":I
    .end local v9    # "overDrawable":Landroid/graphics/drawable/Drawable;
    .end local v11    # "r_alpah":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    .line 1252
    .restart local v3    # "alpha":I
    .restart local v9    # "overDrawable":Landroid/graphics/drawable/Drawable;
    :cond_8
    if-gez v3, :cond_6

    const/4 v3, 0x0

    goto :goto_5

    .line 1261
    .restart local v11    # "r_alpah":I
    :cond_9
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1262
    invoke-virtual {v9, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_6

    .line 1276
    .end local v3    # "alpha":I
    .end local v9    # "overDrawable":Landroid/graphics/drawable/Drawable;
    .end local v11    # "r_alpah":I
    .restart local v12    # "saveCount":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mOffLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    goto/16 :goto_2

    .line 1289
    .restart local v6    # "drawableState":[I
    .restart local v16    # "switchText":Landroid/text/Layout;
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->getWidth()I

    move-result v5

    .restart local v5    # "cX":I
    goto/16 :goto_3
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1427
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1428
    const-string v0, "android.widget.Switch"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1429
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1433
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1434
    const-string v3, "android.widget.Switch"

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1435
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    .line 1436
    .local v2, "switchText":Ljava/lang/CharSequence;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1437
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1438
    .local v1, "oldText":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1439
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 1446
    .end local v1    # "oldText":Ljava/lang/CharSequence;
    :cond_0
    :goto_1
    return-void

    .line 1435
    .end local v2    # "switchText":Ljava/lang/CharSequence;
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    goto :goto_0

    .line 1441
    .restart local v1    # "oldText":Ljava/lang/CharSequence;
    .restart local v2    # "switchText":Ljava/lang/CharSequence;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1442
    .local v0, "newText":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1443
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1092
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 1094
    const/4 v1, 0x0

    .line 1095
    .local v1, "opticalInsetLeft":I
    const/4 v2, 0x0

    .line 1096
    .local v2, "opticalInsetRight":I
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_0

    .line 1097
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTempRect:Landroid/graphics/Rect;

    .line 1098
    .local v7, "trackPadding":Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_1

    .line 1099
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1104
    :goto_0
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslDrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1105
    .local v0, "insets":Landroid/graphics/Rect;
    const/4 v8, 0x0

    iget v9, v0, Landroid/graphics/Rect;->left:I

    iget v10, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1106
    const/4 v8, 0x0

    iget v9, v0, Landroid/graphics/Rect;->right:I

    iget v10, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1111
    .end local v0    # "insets":Landroid/graphics/Rect;
    .end local v7    # "trackPadding":Landroid/graphics/Rect;
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1112
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->getPaddingLeft()I

    move-result v8

    add-int v4, v8, v1

    .line 1113
    .local v4, "switchLeft":I
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mSwitchWidth:I

    add-int/2addr v8, v4

    sub-int/2addr v8, v1

    sub-int v5, v8, v2

    .line 1121
    .local v5, "switchRight":I
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->getGravity()I

    move-result v8

    and-int/lit8 v8, v8, 0x70

    sparse-switch v8, :sswitch_data_0

    .line 1124
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->getPaddingTop()I

    move-result v6

    .line 1125
    .local v6, "switchTop":I
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mSwitchHeight:I

    add-int v3, v6, v8

    .line 1140
    .local v3, "switchBottom":I
    :goto_2
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mSwitchLeft:I

    .line 1141
    iput v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mSwitchTop:I

    .line 1142
    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mSwitchBottom:I

    .line 1143
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mSwitchRight:I

    .line 1144
    return-void

    .line 1101
    .end local v3    # "switchBottom":I
    .end local v4    # "switchLeft":I
    .end local v5    # "switchRight":I
    .end local v6    # "switchTop":I
    .restart local v7    # "trackPadding":Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 1115
    .end local v7    # "trackPadding":Landroid/graphics/Rect;
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    sub-int v5, v8, v2

    .line 1116
    .restart local v5    # "switchRight":I
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mSwitchWidth:I

    sub-int v8, v5, v8

    add-int/2addr v8, v1

    add-int v4, v8, v2

    .restart local v4    # "switchLeft":I
    goto :goto_1

    .line 1129
    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mSwitchHeight:I

    div-int/lit8 v9, v9, 0x2

    sub-int v6, v8, v9

    .line 1131
    .restart local v6    # "switchTop":I
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mSwitchHeight:I

    add-int v3, v6, v8

    .line 1132
    .restart local v3    # "switchBottom":I
    goto :goto_2

    .line 1135
    .end local v3    # "switchBottom":I
    .end local v6    # "switchTop":I
    :sswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->getPaddingBottom()I

    move-result v9

    sub-int v3, v8, v9

    .line 1136
    .restart local v3    # "switchBottom":I
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mSwitchHeight:I

    sub-int v6, v3, v8

    .restart local v6    # "switchTop":I
    goto :goto_2

    .line 1121
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 785
    iget-boolean v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mShowText:Z

    if-eqz v11, :cond_1

    .line 786
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mOnLayout:Landroid/text/Layout;

    if-nez v11, :cond_0

    .line 787
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    invoke-direct {p0, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v11

    iput-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mOnLayout:Landroid/text/Layout;

    .line 790
    :cond_0
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mOffLayout:Landroid/text/Layout;

    if-nez v11, :cond_1

    .line 791
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    invoke-direct {p0, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v11

    iput-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mOffLayout:Landroid/text/Layout;

    .line 795
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTempRect:Landroid/graphics/Rect;

    .line 798
    .local v3, "padding":Landroid/graphics/Rect;
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_4

    .line 800
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 801
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    iget v12, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    iget v12, v3, Landroid/graphics/Rect;->right:I

    sub-int v9, v11, v12

    .line 802
    .local v9, "thumbWidth":I
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 809
    .local v8, "thumbHeight":I
    :goto_0
    iget-boolean v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mShowText:Z

    if-eqz v11, :cond_5

    .line 810
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v11}, Landroid/text/Layout;->getWidth()I

    move-result v11

    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v12}, Landroid/text/Layout;->getWidth()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    iget v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbTextPadding:I

    mul-int/lit8 v12, v12, 0x2

    add-int v1, v11, v12

    .line 816
    .local v1, "maxTextWidth":I
    :goto_1
    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbWidth:I

    .line 819
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_6

    .line 820
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 821
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    .line 829
    .local v10, "trackHeight":I
    :goto_2
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 830
    .local v4, "paddingLeft":I
    iget v5, v3, Landroid/graphics/Rect;->right:I

    .line 831
    .local v5, "paddingRight":I
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_2

    .line 832
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v11}, Lcom/samsung/android/support/sesl/component/widget/SeslDrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v0

    .line 833
    .local v0, "inset":Landroid/graphics/Rect;
    iget v11, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 834
    iget v11, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 837
    .end local v0    # "inset":Landroid/graphics/Rect;
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/samsung/android/support/sesl/R$dimen;->sesl_switch_width:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 838
    .local v7, "switchWidth":I
    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 839
    .local v6, "switchHeight":I
    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mSwitchWidth:I

    .line 840
    iput v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mSwitchHeight:I

    .line 842
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 844
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->getMeasuredHeight()I

    move-result v2

    .line 845
    .local v2, "measuredHeight":I
    if-ge v2, v6, :cond_3

    .line 846
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->getMeasuredWidthAndState()I

    move-result v11

    invoke-virtual {p0, v11, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->setMeasuredDimension(II)V

    .line 848
    :cond_3
    return-void

    .line 804
    .end local v1    # "maxTextWidth":I
    .end local v2    # "measuredHeight":I
    .end local v4    # "paddingLeft":I
    .end local v5    # "paddingRight":I
    .end local v6    # "switchHeight":I
    .end local v7    # "switchWidth":I
    .end local v8    # "thumbHeight":I
    .end local v9    # "thumbWidth":I
    .end local v10    # "trackHeight":I
    :cond_4
    const/4 v9, 0x0

    .line 805
    .restart local v9    # "thumbWidth":I
    const/4 v8, 0x0

    .restart local v8    # "thumbHeight":I
    goto :goto_0

    .line 813
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "maxTextWidth":I
    goto :goto_1

    .line 823
    :cond_6
    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 824
    const/4 v10, 0x0

    .restart local v10    # "trackHeight":I
    goto :goto_2
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 852
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 854
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    .line 855
    .local v0, "text":Ljava/lang/CharSequence;
    :goto_0
    if-eqz v0, :cond_0

    .line 856
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 858
    :cond_0
    return-void

    .line 854
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x2

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v8, 0x1

    .line 893
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 894
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 895
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 967
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    :goto_1
    return v7

    .line 897
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 898
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 899
    .local v6, "y":F
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-direct {p0, v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->hitThumb(FF)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 900
    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTouchMode:I

    .line 901
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTouchX:F

    .line 902
    iput v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTouchY:F

    goto :goto_0

    .line 908
    .end local v5    # "x":F
    .end local v6    # "y":F
    :pswitch_2
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTouchMode:I

    packed-switch v9, :pswitch_data_1

    goto :goto_0

    .line 914
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 915
    .restart local v5    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 916
    .restart local v6    # "y":F
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTouchX:F

    sub-float v7, v5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v7, v7, v9

    if-gtz v7, :cond_1

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTouchY:F

    sub-float v7, v6, v7

    .line 917
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v7, v7, v9

    if-lez v7, :cond_0

    .line 918
    :cond_1
    iput v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTouchMode:I

    .line 919
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-interface {v7, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 920
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTouchX:F

    .line 921
    iput v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTouchY:F

    move v7, v8

    .line 922
    goto :goto_1

    .line 928
    .end local v5    # "x":F
    .end local v6    # "y":F
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 929
    .restart local v5    # "x":F
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->getThumbScrollRange()I

    move-result v4

    .line 930
    .local v4, "thumbScrollRange":I
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTouchX:F

    sub-float v3, v5, v9

    .line 932
    .local v3, "thumbScrollOffset":F
    if-eqz v4, :cond_4

    .line 933
    int-to-float v9, v4

    div-float v1, v3, v9

    .line 939
    .local v1, "dPos":F
    :goto_2
    invoke-static {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 940
    neg-float v1, v1

    .line 942
    :cond_2
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbPosition:F

    add-float/2addr v9, v1

    invoke-static {v9, v10, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->constrain(FFF)F

    move-result v2

    .line 943
    .local v2, "newPos":F
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbPosition:F

    cmpl-float v7, v2, v7

    if-eqz v7, :cond_3

    .line 944
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTouchX:F

    .line 945
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->setThumbPosition(F)V

    :cond_3
    move v7, v8

    .line 947
    goto/16 :goto_1

    .line 937
    .end local v1    # "dPos":F
    .end local v2    # "newPos":F
    :cond_4
    cmpl-float v9, v3, v10

    if-lez v9, :cond_5

    move v1, v7

    .restart local v1    # "dPos":F
    :goto_3
    goto :goto_2

    .end local v1    # "dPos":F
    :cond_5
    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_3

    .line 955
    .end local v3    # "thumbScrollOffset":F
    .end local v4    # "thumbScrollRange":I
    .end local v5    # "x":F
    :pswitch_5
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTouchMode:I

    if-ne v7, v11, :cond_6

    .line 956
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->stopDrag(Landroid/view/MotionEvent;)V

    .line 958
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v7, v8

    .line 959
    goto/16 :goto_1

    .line 961
    :cond_6
    const/4 v7, 0x0

    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTouchMode:I

    .line 962
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_0

    .line 895
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 908
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 1075
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1079
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->isChecked()Z

    move-result p1

    .line 1081
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1082
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->animateThumbToCheckedState(Z)V

    .line 1088
    :goto_0
    return-void

    .line 1085
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->cancelPositionAnimator()V

    .line 1086
    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->setThumbPosition(F)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setShowText(Z)V
    .locals 1
    .param p1, "showText"    # Z

    .prologue
    .line 769
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mShowText:Z

    if-eq v0, p1, :cond_0

    .line 770
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mShowText:Z

    .line 771
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->requestLayout()V

    .line 773
    :cond_0
    return-void
.end method

.method public setSplitTrack(Z)V
    .locals 0
    .param p1, "splitTrack"    # Z

    .prologue
    .line 711
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mSplitTrack:Z

    .line 712
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->invalidate()V

    .line 713
    return-void
.end method

.method public setSwitchMinWidth(I)V
    .locals 0
    .param p1, "pixels"    # I

    .prologue
    .line 421
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mSwitchMinWidth:I

    .line 422
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->requestLayout()V

    .line 423
    return-void
.end method

.method public setSwitchPadding(I)V
    .locals 0
    .param p1, "pixels"    # I

    .prologue
    .line 397
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mSwitchPadding:I

    .line 398
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->requestLayout()V

    .line 399
    return-void
.end method

.method public setSwitchTextAppearance(Landroid/content/Context;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resid"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 289
    sget-object v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslTextAppearance:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 295
    .local v1, "appearance":Landroid/content/res/TypedArray;
    sget v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslTextAppearance_android_textColor:I

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 296
    .local v2, "colors":Landroid/content/res/ColorStateList;
    if-eqz v2, :cond_1

    .line 297
    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTextColors:Landroid/content/res/ColorStateList;

    .line 303
    :goto_0
    sget v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslTextAppearance_android_textSize:I

    invoke-virtual {v1, v6, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 304
    .local v4, "ts":I
    if-eqz v4, :cond_0

    .line 305
    int-to-float v6, v4

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->getTextSize()F

    move-result v7

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_0

    .line 306
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v7, v4

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 307
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->requestLayout()V

    .line 312
    :cond_0
    sget v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslTextAppearance_android_typeface:I

    invoke-virtual {v1, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 313
    .local v5, "typefaceIndex":I
    sget v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslTextAppearance_android_textStyle:I

    invoke-virtual {v1, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 315
    .local v3, "styleIndex":I
    invoke-direct {p0, v5, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->setSwitchTypefaceByIndex(II)V

    .line 317
    sget v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslTextAppearance_android_textAllCaps:I

    invoke-virtual {v1, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 318
    .local v0, "allCaps":Z
    if-eqz v0, :cond_2

    .line 319
    new-instance v6, Lcom/samsung/android/support/sesl/component/text/SeslAllCapsTransformationMethod;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/samsung/android/support/sesl/component/text/SeslAllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod;

    .line 324
    :goto_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 325
    return-void

    .line 300
    .end local v0    # "allCaps":Z
    .end local v3    # "styleIndex":I
    .end local v4    # "ts":I
    .end local v5    # "typefaceIndex":I
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTextColors:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 321
    .restart local v0    # "allCaps":Z
    .restart local v3    # "styleIndex":I
    .restart local v4    # "ts":I
    .restart local v5    # "typefaceIndex":I
    :cond_2
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod;

    goto :goto_1
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 381
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 382
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 384
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->requestLayout()V

    .line 385
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->invalidate()V

    .line 387
    :cond_0
    return-void
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;I)V
    .locals 6
    .param p1, "tf"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 353
    if-lez p2, :cond_4

    .line 354
    if-nez p1, :cond_1

    .line 355
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 360
    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    .line 362
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .line 363
    .local v1, "typefaceStyle":I
    :goto_1
    xor-int/lit8 v4, v1, -0x1

    and-int v0, p2, v4

    .line 364
    .local v0, "need":I
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 365
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_3

    const/high16 v2, -0x41800000    # -0.25f

    :goto_2
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 371
    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :goto_3
    return-void

    .line 357
    :cond_1
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 362
    goto :goto_1

    .restart local v0    # "need":I
    .restart local v1    # "typefaceStyle":I
    :cond_3
    move v2, v3

    .line 365
    goto :goto_2

    .line 367
    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 368
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 369
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    goto :goto_3
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "textOff"    # Ljava/lang/CharSequence;

    .prologue
    .line 758
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    .line 759
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->requestLayout()V

    .line 760
    return-void
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "textOn"    # Ljava/lang/CharSequence;

    .prologue
    .line 739
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    .line 740
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->requestLayout()V

    .line 741
    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 587
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 590
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 591
    if-eqz p1, :cond_1

    .line 592
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 594
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->requestLayout()V

    .line 595
    return-void
.end method

.method setThumbPosition(F)V
    .locals 0
    .param p1, "position"    # F

    .prologue
    .line 1064
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbPosition:F

    .line 1065
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->invalidate()V

    .line 1066
    return-void
.end method

.method public setThumbResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 606
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 607
    return-void
.end method

.method public setThumbTextPadding(I)V
    .locals 0
    .param p1, "pixels"    # I

    .prologue
    .line 445
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbTextPadding:I

    .line 446
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->requestLayout()V

    .line 447
    return-void
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 636
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 637
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mHasThumbTint:Z

    .line 639
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->applyThumbTint()V

    .line 640
    return-void
.end method

.method public setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 664
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 665
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mHasThumbTintMode:Z

    .line 667
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->applyThumbTint()V

    .line 668
    return-void
.end method

.method public setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "track"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 468
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 471
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 472
    if-eqz p1, :cond_1

    .line 473
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 475
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->requestLayout()V

    .line 476
    return-void
.end method

.method public setTrackResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 487
    return-void
.end method

.method public setTrackTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 514
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTrackTintList:Landroid/content/res/ColorStateList;

    .line 515
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mHasTrackTint:Z

    .line 517
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->applyTrackTint()V

    .line 518
    return-void
.end method

.method public setTrackTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 541
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 542
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mHasTrackTintMode:Z

    .line 544
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->applyTrackTint()V

    .line 545
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 1070
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->setChecked(Z)V

    .line 1071
    return-void

    .line 1070
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1406
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
