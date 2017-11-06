.class public Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;
.super Landroid/widget/TextView;
.source "SeslCheckedTextView.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView$SavedState;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mBasePadding:I

.field private mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

.field private mCheckMarkGravity:I

.field private mCheckMarkResource:I

.field private mCheckMarkTintList:Landroid/content/res/ColorStateList;

.field private mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mCheckMarkWidth:I

.field private mChecked:Z

.field private mDrawablePadding:I

.field private mHasCheckMarkTint:Z

.field private mHasCheckMarkTintMode:Z

.field private mNeedRequestlayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 73
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 82
    const v0, 0x10103c8

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, 0x0

    const v7, 0x800003

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 90
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 61
    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    .line 62
    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 63
    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mHasCheckMarkTint:Z

    .line 64
    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mHasCheckMarkTintMode:Z

    .line 68
    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mCheckMarkGravity:I

    .line 92
    sget-object v3, Lcom/samsung/android/support/sesl/R$styleable;->SeslCheckedTextView:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 95
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v3, Lcom/samsung/android/support/sesl/R$styleable;->SeslCheckedTextView_android_checkMark:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 96
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 97
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    :cond_0
    sget v3, Lcom/samsung/android/support/sesl/R$styleable;->SeslCheckedTextView_android_checkMarkTintMode:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 101
    sget v3, Lcom/samsung/android/support/sesl/R$styleable;->SeslCheckedTextView_android_checkMarkTintMode:I

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslDrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 103
    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mHasCheckMarkTintMode:Z

    .line 106
    :cond_1
    sget v3, Lcom/samsung/android/support/sesl/R$styleable;->SeslCheckedTextView_android_checkMarkTint:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 107
    sget v3, Lcom/samsung/android/support/sesl/R$styleable;->SeslCheckedTextView_android_checkMarkTint:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    .line 108
    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mHasCheckMarkTint:Z

    .line 111
    :cond_2
    sget v3, Lcom/samsung/android/support/sesl/R$styleable;->SeslCheckedTextView_seslCheckMarkGravity:I

    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mCheckMarkGravity:I

    .line 113
    sget v3, Lcom/samsung/android/support/sesl/R$styleable;->SeslCheckedTextView_android_checked:I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 114
    .local v1, "checked":Z
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->setChecked(Z)V

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/support/sesl/R$dimen;->sesl_checked_text_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mDrawablePadding:I

    .line 118
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 120
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->applyCheckMarkTint()V

    .line 121
    return-void
.end method

.method private applyCheckMarkTint()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mHasCheckMarkTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mHasCheckMarkTintMode:Z

    if-eqz v0, :cond_3

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 280
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mHasCheckMarkTint:Z

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 284
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mHasCheckMarkTintMode:Z

    if-eqz v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 290
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 291
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 294
    :cond_3
    return-void
.end method

.method private isCheckMarkAtStart()Z
    .locals 4

    .prologue
    .line 383
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mCheckMarkGravity:I

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->getLayoutDirection()I

    move-result v3

    invoke-static {v2, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 384
    .local v0, "gravity":I
    and-int/lit8 v1, v0, 0x7

    .line 385
    .local v1, "hgrav":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setBasePadding(Z)V
    .locals 1
    .param p1, "checkmarkAtStart"    # Z

    .prologue
    .line 375
    if-eqz p1, :cond_0

    .line 376
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mBasePadding:I

    .line 380
    :goto_0
    return-void

    .line 378
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->getPaddingRight()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mBasePadding:I

    goto :goto_0
.end method

.method private setCheckMarkDrawableInternal(Landroid/graphics/drawable/Drawable;I)V
    .locals 4
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 184
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 186
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mNeedRequestlayout:Z

    .line 191
    if-eqz p1, :cond_3

    .line 192
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 193
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 194
    sget-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->CHECKED_STATE_SET:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 197
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->setMinHeight(I)V

    .line 198
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mCheckMarkWidth:I

    .line 200
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 205
    :goto_2
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 206
    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mCheckMarkResource:I

    .line 208
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->applyCheckMarkTint()V

    .line 209
    return-void

    :cond_1
    move v0, v2

    .line 189
    goto :goto_0

    :cond_2
    move v1, v2

    .line 193
    goto :goto_1

    .line 202
    :cond_3
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mCheckMarkWidth:I

    goto :goto_2
.end method

.method private updatePadding()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 358
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mCheckMarkWidth:I

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mBasePadding:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mDrawablePadding:I

    add-int v0, v3, v4

    .line 360
    .local v0, "newPadding":I
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->isCheckMarkAtStart()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 361
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mNeedRequestlayout:Z

    invoke-static {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->getField_mPaddingLeft(Landroid/view/View;)I

    move-result v4

    if-eq v4, v0, :cond_2

    :goto_1
    or-int/2addr v1, v3

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mNeedRequestlayout:Z

    .line 362
    invoke-static {p0, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->setField_mPaddingLeft(Landroid/view/View;I)V

    .line 368
    :goto_2
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mNeedRequestlayout:Z

    if-eqz v1, :cond_0

    .line 369
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->requestLayout()V

    .line 370
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mNeedRequestlayout:Z

    .line 372
    :cond_0
    return-void

    .line 358
    .end local v0    # "newPadding":I
    :cond_1
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mBasePadding:I

    goto :goto_0

    .restart local v0    # "newPadding":I
    :cond_2
    move v1, v2

    .line 361
    goto :goto_1

    .line 364
    :cond_3
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mNeedRequestlayout:Z

    invoke-static {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->getField_mPaddingRight(Landroid/view/View;)I

    move-result v4

    if-eq v4, v0, :cond_4

    :goto_3
    or-int/2addr v1, v3

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mNeedRequestlayout:Z

    .line 365
    invoke-static {p0, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->setField_mPaddingRight(Landroid/view/View;I)V

    goto :goto_2

    :cond_4
    move v1, v2

    .line 364
    goto :goto_3
.end method


# virtual methods
.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 458
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->drawableHotspotChanged(FF)V

    .line 460
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 463
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 447
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 449
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 450
    .local v0, "checkMarkDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 451
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 454
    :cond_0
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 467
    const-class v0, Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCheckMarkTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getCheckMarkTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 346
    invoke-super {p0, p1}, Landroid/widget/TextView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 348
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 351
    .local v0, "dirty":Landroid/graphics/Rect;
    invoke-static {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslTextViewReflector;->getField_mSingleLine(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->invalidate(IIII)V

    .line 355
    .end local v0    # "dirty":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public isChecked()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mChecked:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 307
    invoke-super {p0}, Landroid/widget/TextView;->jumpDrawablesToCurrentState()V

    .line 309
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 312
    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 438
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/TextView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 439
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    sget-object v1, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mergeDrawableStates([I[I)[I

    .line 442
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 390
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 392
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 393
    .local v3, "checkMarkDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 394
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->getGravity()I

    move-result v11

    and-int/lit8 v8, v11, 0x70

    .line 395
    .local v8, "verticalGravity":I
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 397
    .local v4, "height":I
    const/4 v10, 0x0

    .line 399
    .local v10, "y":I
    sparse-switch v8, :sswitch_data_0

    .line 408
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->isCheckMarkAtStart()Z

    move-result v2

    .line 409
    .local v2, "checkMarkAtStart":Z
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->getWidth()I

    move-result v9

    .line 410
    .local v9, "width":I
    move v7, v10

    .line 411
    .local v7, "top":I
    add-int v1, v7, v4

    .line 414
    .local v1, "bottom":I
    if-eqz v2, :cond_1

    .line 415
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mBasePadding:I

    .line 416
    .local v5, "left":I
    iget v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mCheckMarkWidth:I

    add-int v6, v5, v11

    .line 421
    .local v6, "right":I
    :goto_1
    invoke-static {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 422
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->getScrollX()I

    move-result v11

    add-int/2addr v11, v5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->getScrollX()I

    move-result v12

    add-int/2addr v12, v6

    invoke-virtual {v3, v11, v7, v12, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 427
    :goto_2
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 429
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 430
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->getScrollX()I

    move-result v11

    add-int/2addr v11, v5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->getScrollX()I

    move-result v12

    add-int/2addr v12, v6

    invoke-virtual {v0, v11, v7, v12, v1}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 434
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    .end local v1    # "bottom":I
    .end local v2    # "checkMarkAtStart":Z
    .end local v4    # "height":I
    .end local v5    # "left":I
    .end local v6    # "right":I
    .end local v7    # "top":I
    .end local v8    # "verticalGravity":I
    .end local v9    # "width":I
    .end local v10    # "y":I
    :cond_0
    return-void

    .line 401
    .restart local v4    # "height":I
    .restart local v8    # "verticalGravity":I
    .restart local v10    # "y":I
    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->getHeight()I

    move-result v11

    sub-int v10, v11, v4

    .line 402
    goto :goto_0

    .line 404
    :sswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->getHeight()I

    move-result v11

    sub-int/2addr v11, v4

    div-int/lit8 v10, v11, 0x2

    goto :goto_0

    .line 418
    .restart local v1    # "bottom":I
    .restart local v2    # "checkMarkAtStart":Z
    .restart local v7    # "top":I
    .restart local v9    # "width":I
    :cond_1
    iget v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mBasePadding:I

    sub-int v6, v9, v11

    .line 419
    .restart local v6    # "right":I
    iget v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mCheckMarkWidth:I

    sub-int v5, v6, v11

    .restart local v5    # "left":I
    goto :goto_1

    .line 424
    :cond_2
    invoke-virtual {v3, v5, v7, v6, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    .line 399
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 535
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 536
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 537
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 542
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 543
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 544
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 545
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 525
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView$SavedState;

    .line 527
    .local v0, "ss":Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView$SavedState;
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 528
    iget-boolean v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->setChecked(Z)V

    .line 529
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->requestLayout()V

    .line 530
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .prologue
    .line 335
    invoke-super {p0, p1}, Landroid/widget/TextView;->onRtlPropertiesChanged(I)V

    .line 336
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->updatePadding()V

    .line 337
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 515
    invoke-super {p0}, Landroid/widget/TextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 517
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView$SavedState;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 519
    .local v0, "ss":Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView$SavedState;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView$SavedState;->checked:Z

    .line 520
    return-object v0
.end method

.method public setCheckMarkDrawable(I)V
    .locals 2
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 160
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mCheckMarkResource:I

    if-ne p1, v1, :cond_0

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 165
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->setCheckMarkDrawableInternal(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    .line 164
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->setCheckMarkDrawableInternal(Landroid/graphics/drawable/Drawable;I)V

    .line 181
    return-void
.end method

.method public setCheckMarkTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 226
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mHasCheckMarkTint:Z

    .line 229
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->applyCheckMarkTint()V

    .line 230
    return-void
.end method

.method public setCheckMarkTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 256
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mHasCheckMarkTintMode:Z

    .line 259
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->applyCheckMarkTint()V

    .line 260
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 140
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mChecked:Z

    .line 141
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->refreshDrawableState()V

    .line 142
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->notifyViewAccessibilityStateChangedIfNeeded(Landroid/view/View;I)V

    .line 145
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 298
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 301
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 303
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 301
    goto :goto_0
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->setChecked(Z)V

    .line 125
    return-void

    .line 124
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 316
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
