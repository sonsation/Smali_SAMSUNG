.class public Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;
.super Landroid/view/ViewGroup;
.source "SeslPagerTitleStrip.java"


# annotations
.annotation runtime Lcom/samsung/android/support/sesl/core/view/SeslViewPager$DecorView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip$SingleLineAllCapsTransform;,
        Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip$PageListener;
    }
.end annotation


# static fields
.field private static final ATTRS:[I

.field private static final SIDE_ALPHA:F = 0.6f

.field private static final TAG:Ljava/lang/String; = "PagerTitleStrip"

.field private static final TEXT_ATTRS:[I

.field private static final TEXT_SPACING:I = 0x10


# instance fields
.field mCurrText:Landroid/widget/TextView;

.field private mGravity:I

.field private mLastKnownCurrentPage:I

.field mLastKnownPositionOffset:F

.field mNextText:Landroid/widget/TextView;

.field private mNonPrimaryAlpha:I

.field private final mPageListener:Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip$PageListener;

.field mPager:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

.field mPrevText:Landroid/widget/TextView;

.field private mScaledTextSpacing:I

.field mTextColor:I

.field private mUpdatingPositions:Z

.field private mUpdatingText:Z

.field private mWatchingAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 73
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->ATTRS:[I

    .line 80
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101038c

    aput v2, v0, v1

    sput-object v0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->TEXT_ATTRS:[I

    return-void

    .line 73
    :array_0
    .array-data 4
        0x1010034
        0x1010095
        0x1010098
        0x10100af
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v8, 0x2

    const/4 v9, 0x0

    .line 99
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    const/4 v7, -0x1

    iput v7, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mLastKnownCurrentPage:I

    .line 62
    const/high16 v7, -0x40800000    # -1.0f

    iput v7, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mLastKnownPositionOffset:F

    .line 69
    new-instance v7, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip$PageListener;

    invoke-direct {v7, p0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip$PageListener;-><init>(Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;)V

    iput-object v7, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mPageListener:Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip$PageListener;

    .line 101
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->addView(Landroid/view/View;)V

    .line 102
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->addView(Landroid/view/View;)V

    .line 103
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->addView(Landroid/view/View;)V

    .line 105
    sget-object v7, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->ATTRS:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 106
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v9, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 107
    .local v4, "textAppearance":I
    if-eqz v4, :cond_0

    .line 108
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-static {v7, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslTextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 109
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-static {v7, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslTextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 110
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-static {v7, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslTextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 112
    :cond_0
    const/4 v7, 0x1

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 113
    .local v6, "textSize":I
    if-eqz v6, :cond_1

    .line 114
    int-to-float v7, v6

    invoke-virtual {p0, v9, v7}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->setTextSize(IF)V

    .line 116
    :cond_1
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 117
    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 118
    .local v5, "textColor":I
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    .end local v5    # "textColor":I
    :cond_2
    const/4 v7, 0x3

    const/16 v8, 0x50

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mGravity:I

    .line 123
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 125
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v7

    iput v7, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mTextColor:I

    .line 126
    const v7, 0x3f19999a    # 0.6f

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->setNonPrimaryAlpha(F)V

    .line 128
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 129
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 130
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mNextText:Landroid/widget/TextView;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 132
    const/4 v1, 0x0

    .line 133
    .local v1, "allCaps":Z
    if-eqz v4, :cond_3

    .line 134
    sget-object v7, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->TEXT_ATTRS:[I

    invoke-virtual {p1, v4, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 135
    .local v3, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v9, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 136
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 139
    .end local v3    # "ta":Landroid/content/res/TypedArray;
    :cond_3
    if-eqz v1, :cond_4

    .line 140
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    .line 141
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    .line 142
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    .line 149
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v2, v7, Landroid/util/DisplayMetrics;->density:F

    .line 150
    .local v2, "density":F
    const/high16 v7, 0x41800000    # 16.0f

    mul-float/2addr v7, v2

    float-to-int v7, v7

    iput v7, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mScaledTextSpacing:I

    .line 151
    return-void

    .line 144
    .end local v2    # "density":F
    :cond_4
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->setSingleLine()V

    .line 145
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->setSingleLine()V

    .line 146
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->setSingleLine()V

    goto :goto_0
.end method

.method private static setSingleLineAllCaps(Landroid/widget/TextView;)V
    .locals 2
    .param p0, "text"    # Landroid/widget/TextView;

    .prologue
    .line 91
    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip$SingleLineAllCapsTransform;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip$SingleLineAllCapsTransform;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 92
    return-void
.end method


# virtual methods
.method getMinHeight()I
    .locals 2

    .prologue
    .line 449
    const/4 v1, 0x0

    .line 450
    .local v1, "minHeight":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 451
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 454
    :cond_0
    return v1
.end method

.method public getTextSpacing()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mScaledTextSpacing:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 225
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 227
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 228
    .local v2, "parent":Landroid/view/ViewParent;
    instance-of v3, v2, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    if-nez v3, :cond_0

    .line 229
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "PagerTitleStrip must be a direct child of a ViewPager."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v1, v2

    .line 233
    check-cast v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    .line 234
    .local v1, "pager":Lcom/samsung/android/support/sesl/core/view/SeslViewPager;
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getAdapter()Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    move-result-object v0

    .line 236
    .local v0, "adapter":Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mPageListener:Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip$PageListener;

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setInternalPageChangeListener(Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;)Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;

    .line 237
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mPageListener:Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip$PageListener;

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->addOnAdapterChangeListener(Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnAdapterChangeListener;)V

    .line 238
    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mPager:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    .line 239
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->updateAdapter(Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;)V

    .line 240
    return-void

    .line 239
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 244
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 245
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mPager:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mPager:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getAdapter()Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->updateAdapter(Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;)V

    .line 247
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mPager:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setInternalPageChangeListener(Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;)Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;

    .line 248
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mPager:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mPageListener:Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip$PageListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->removeOnAdapterChangeListener(Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnAdapterChangeListener;)V

    .line 249
    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mPager:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    .line 251
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v0, 0x0

    .line 442
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mPager:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    if-eqz v1, :cond_1

    .line 443
    iget v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mLastKnownPositionOffset:F

    cmpl-float v1, v1, v0

    if-ltz v1, :cond_0

    iget v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mLastKnownPositionOffset:F

    .line 444
    .local v0, "offset":F
    :cond_0
    iget v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mLastKnownCurrentPage:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->updateTextPositions(IFZ)V

    .line 446
    .end local v0    # "offset":F
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 15
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 406
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 407
    .local v10, "widthMode":I
    const/high16 v13, 0x40000000    # 2.0f

    if-eq v10, v13, :cond_0

    .line 408
    new-instance v13, Ljava/lang/IllegalStateException;

    const-string v14, "Must measure with an exact width"

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 411
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->getPaddingTop()I

    move-result v13

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->getPaddingBottom()I

    move-result v14

    add-int v6, v13, v14

    .line 412
    .local v6, "heightPadding":I
    const/4 v13, -0x2

    move/from16 v0, p2

    invoke-static {v0, v6, v13}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->getChildMeasureSpec(III)I

    move-result v1

    .line 415
    .local v1, "childHeightSpec":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 416
    .local v12, "widthSize":I
    int-to-float v13, v12

    const v14, 0x3e4ccccd    # 0.2f

    mul-float/2addr v13, v14

    float-to-int v11, v13

    .line 417
    .local v11, "widthPadding":I
    const/4 v13, -0x2

    move/from16 v0, p1

    invoke-static {v0, v11, v13}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->getChildMeasureSpec(III)I

    move-result v3

    .line 420
    .local v3, "childWidthSpec":I
    iget-object v13, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v13, v3, v1}, Landroid/widget/TextView;->measure(II)V

    .line 421
    iget-object v13, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v13, v3, v1}, Landroid/widget/TextView;->measure(II)V

    .line 422
    iget-object v13, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v13, v3, v1}, Landroid/widget/TextView;->measure(II)V

    .line 425
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 426
    .local v5, "heightMode":I
    const/high16 v13, 0x40000000    # 2.0f

    if-ne v5, v13, :cond_1

    .line 427
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 434
    .local v4, "height":I
    :goto_0
    iget-object v13, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v2

    .line 435
    .local v2, "childState":I
    shl-int/lit8 v13, v2, 0x10

    move/from16 v0, p2

    invoke-static {v4, v0, v13}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v7

    .line 437
    .local v7, "measuredHeight":I
    invoke-virtual {p0, v12, v7}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->setMeasuredDimension(II)V

    .line 438
    return-void

    .line 429
    .end local v2    # "childState":I
    .end local v4    # "height":I
    .end local v7    # "measuredHeight":I
    :cond_1
    iget-object v13, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    .line 430
    .local v9, "textHeight":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->getMinHeight()I

    move-result v8

    .line 431
    .local v8, "minHeight":I
    add-int v13, v9, v6

    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    move-result v4

    .restart local v4    # "height":I
    goto :goto_0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mUpdatingText:Z

    if-nez v0, :cond_0

    .line 295
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 297
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 219
    iput p1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mGravity:I

    .line 220
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->requestLayout()V

    .line 221
    return-void
.end method

.method public setNonPrimaryAlpha(F)V
    .locals 4
    .param p1, "alpha"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 176
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mNonPrimaryAlpha:I

    .line 177
    iget v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mNonPrimaryAlpha:I

    shl-int/lit8 v1, v1, 0x18

    iget v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mTextColor:I

    const v3, 0xffffff

    and-int/2addr v2, v3

    or-int v0, v1, v2

    .line 178
    .local v0, "transparentColor":I
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 180
    return-void
.end method

.method public setTextColor(I)V
    .locals 4
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 189
    iput p1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mTextColor:I

    .line 190
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 191
    iget v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mNonPrimaryAlpha:I

    shl-int/lit8 v1, v1, 0x18

    iget v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mTextColor:I

    const v3, 0xffffff

    and-int/2addr v2, v3

    or-int v0, v1, v2

    .line 192
    .local v0, "transparentColor":I
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 193
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 194
    return-void
.end method

.method public setTextSize(IF)V
    .locals 1
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .prologue
    .line 207
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 208
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 209
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 210
    return-void
.end method

.method public setTextSpacing(I)V
    .locals 0
    .param p1, "spacingPixels"    # I

    .prologue
    .line 159
    iput p1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mScaledTextSpacing:I

    .line 160
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->requestLayout()V

    .line 161
    return-void
.end method

.method updateAdapter(Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;)V
    .locals 1
    .param p1, "oldAdapter"    # Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;
    .param p2, "newAdapter"    # Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    .prologue
    .line 300
    if-eqz p1, :cond_0

    .line 301
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mPageListener:Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip$PageListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    .line 304
    :cond_0
    if-eqz p2, :cond_1

    .line 305
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mPageListener:Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip$PageListener;

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 306
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mPager:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    if-eqz v0, :cond_2

    .line 309
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mLastKnownCurrentPage:I

    .line 310
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mLastKnownPositionOffset:F

    .line 311
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mPager:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->updateText(ILcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;)V

    .line 312
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->requestLayout()V

    .line 314
    :cond_2
    return-void
.end method

.method updateText(ILcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;)V
    .locals 12
    .param p1, "currentItem"    # I
    .param p2, "adapter"    # Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    .prologue
    const/4 v9, 0x1

    const/high16 v11, -0x80000000

    const/4 v8, 0x0

    .line 254
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->getCount()I

    move-result v3

    .line 255
    .local v3, "itemCount":I
    :goto_0
    iput-boolean v9, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mUpdatingText:Z

    .line 257
    const/4 v6, 0x0

    .line 258
    .local v6, "text":Ljava/lang/CharSequence;
    if-lt p1, v9, :cond_0

    if-eqz p2, :cond_0

    .line 259
    add-int/lit8 v9, p1, -0x1

    invoke-virtual {p2, v9}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 261
    :cond_0
    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v10, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    if-eqz p2, :cond_4

    if-ge p1, v3, :cond_4

    .line 264
    invoke-virtual {p2, p1}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 263
    :goto_1
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    const/4 v6, 0x0

    .line 267
    add-int/lit8 v9, p1, 0x1

    if-ge v9, v3, :cond_1

    if-eqz p2, :cond_1

    .line 268
    add-int/lit8 v9, p1, 0x1

    invoke-virtual {p2, v9}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 270
    :cond_1
    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->getPaddingLeft()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->getPaddingRight()I

    move-result v10

    sub-int v7, v9, v10

    .line 274
    .local v7, "width":I
    int-to-float v9, v7

    const v10, 0x3f4ccccd    # 0.8f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 275
    .local v5, "maxWidth":I
    invoke-static {v5, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 276
    .local v2, "childWidthSpec":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->getHeight()I

    move-result v9

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->getPaddingTop()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->getPaddingBottom()I

    move-result v10

    sub-int v0, v9, v10

    .line 277
    .local v0, "childHeight":I
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 278
    .local v4, "maxHeight":I
    invoke-static {v4, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 279
    .local v1, "childHeightSpec":I
    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v9, v2, v1}, Landroid/widget/TextView;->measure(II)V

    .line 280
    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v9, v2, v1}, Landroid/widget/TextView;->measure(II)V

    .line 281
    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v9, v2, v1}, Landroid/widget/TextView;->measure(II)V

    .line 283
    iput p1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mLastKnownCurrentPage:I

    .line 285
    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mUpdatingPositions:Z

    if-nez v9, :cond_2

    .line 286
    iget v9, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mLastKnownPositionOffset:F

    invoke-virtual {p0, p1, v9, v8}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->updateTextPositions(IFZ)V

    .line 289
    :cond_2
    iput-boolean v8, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mUpdatingText:Z

    .line 290
    return-void

    .end local v0    # "childHeight":I
    .end local v1    # "childHeightSpec":I
    .end local v2    # "childWidthSpec":I
    .end local v3    # "itemCount":I
    .end local v4    # "maxHeight":I
    .end local v5    # "maxWidth":I
    .end local v6    # "text":Ljava/lang/CharSequence;
    .end local v7    # "width":I
    :cond_3
    move v3, v8

    .line 254
    goto/16 :goto_0

    .line 264
    .restart local v3    # "itemCount":I
    .restart local v6    # "text":Ljava/lang/CharSequence;
    :cond_4
    const/4 v9, 0x0

    goto :goto_1
.end method

.method updateTextPositions(IFZ)V
    .locals 45
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "force"    # Z

    .prologue
    .line 317
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mLastKnownCurrentPage:I

    move/from16 v42, v0

    move/from16 v0, p1

    move/from16 v1, v42

    if-eq v0, v1, :cond_2

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mPager:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getAdapter()Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    move-result-object v42

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->updateText(ILcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;)V

    .line 323
    :cond_0
    const/16 v42, 0x1

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mUpdatingPositions:Z

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v36

    .line 326
    .local v36, "prevWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v18

    .line 327
    .local v18, "currWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v26

    .line 328
    .local v26, "nextWidth":I
    div-int/lit8 v19, v18, 0x2

    .line 330
    .local v19, "halfCurrWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->getWidth()I

    move-result v38

    .line 331
    .local v38, "stripWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->getHeight()I

    move-result v37

    .line 332
    .local v37, "stripHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->getPaddingLeft()I

    move-result v29

    .line 333
    .local v29, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->getPaddingRight()I

    move-result v30

    .line 334
    .local v30, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->getPaddingTop()I

    move-result v31

    .line 335
    .local v31, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->getPaddingBottom()I

    move-result v28

    .line 336
    .local v28, "paddingBottom":I
    add-int v39, v29, v19

    .line 337
    .local v39, "textPaddedLeft":I
    add-int v40, v30, v19

    .line 338
    .local v40, "textPaddedRight":I
    sub-int v42, v38, v39

    sub-int v10, v42, v40

    .line 340
    .local v10, "contentWidth":I
    const/high16 v42, 0x3f000000    # 0.5f

    add-float v14, p2, v42

    .line 341
    .local v14, "currOffset":F
    const/high16 v42, 0x3f800000    # 1.0f

    cmpl-float v42, v14, v42

    if-lez v42, :cond_1

    .line 342
    const/high16 v42, 0x3f800000    # 1.0f

    sub-float v14, v14, v42

    .line 344
    :cond_1
    sub-int v42, v38, v40

    int-to-float v0, v10

    move/from16 v43, v0

    mul-float v43, v43, v14

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v43, v0

    sub-int v12, v42, v43

    .line 345
    .local v12, "currCenter":I
    div-int/lit8 v42, v18, 0x2

    sub-int v13, v12, v42

    .line 346
    .local v13, "currLeft":I
    add-int v15, v13, v18

    .line 348
    .local v15, "currRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getBaseline()I

    move-result v32

    .line 349
    .local v32, "prevBaseline":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getBaseline()I

    move-result v11

    .line 350
    .local v11, "currBaseline":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getBaseline()I

    move-result v22

    .line 351
    .local v22, "nextBaseline":I
    move/from16 v0, v32

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v42

    move/from16 v0, v42

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 352
    .local v20, "maxBaseline":I
    sub-int v35, v20, v32

    .line 353
    .local v35, "prevTopOffset":I
    sub-int v17, v20, v11

    .line 354
    .local v17, "currTopOffset":I
    sub-int v25, v20, v22

    .line 355
    .local v25, "nextTopOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v42

    add-int v7, v35, v42

    .line 356
    .local v7, "alignedPrevHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v42

    add-int v5, v17, v42

    .line 357
    .local v5, "alignedCurrHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v42

    add-int v6, v25, v42

    .line 358
    .local v6, "alignedNextHeight":I
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v42

    move/from16 v0, v42

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 361
    .local v21, "maxTextHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mGravity:I

    move/from16 v42, v0

    and-int/lit8 v41, v42, 0x70

    .line 366
    .local v41, "vgrav":I
    sparse-switch v41, :sswitch_data_0

    .line 369
    add-int v34, v31, v35

    .line 370
    .local v34, "prevTop":I
    add-int v16, v31, v17

    .line 371
    .local v16, "currTop":I
    add-int v24, v31, v25

    .line 388
    .local v24, "nextTop":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    move-object/from16 v43, v0

    .line 389
    invoke-virtual/range {v43 .. v43}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v43

    add-int v43, v43, v16

    .line 388
    move-object/from16 v0, v42

    move/from16 v1, v16

    move/from16 v2, v43

    invoke-virtual {v0, v13, v1, v15, v2}, Landroid/widget/TextView;->layout(IIII)V

    .line 391
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mScaledTextSpacing:I

    move/from16 v42, v0

    sub-int v42, v13, v42

    sub-int v42, v42, v36

    move/from16 v0, v29

    move/from16 v1, v42

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v33

    .line 392
    .local v33, "prevLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    move-object/from16 v42, v0

    add-int v43, v33, v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    move-object/from16 v44, v0

    .line 393
    invoke-virtual/range {v44 .. v44}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v44

    add-int v44, v44, v34

    .line 392
    move-object/from16 v0, v42

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v43

    move/from16 v4, v44

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 395
    sub-int v42, v38, v30

    sub-int v42, v42, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mScaledTextSpacing:I

    move/from16 v43, v0

    add-int v43, v43, v15

    invoke-static/range {v42 .. v43}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 397
    .local v23, "nextLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move-object/from16 v42, v0

    add-int v43, v23, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move-object/from16 v44, v0

    .line 398
    invoke-virtual/range {v44 .. v44}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v44

    add-int v44, v44, v24

    .line 397
    move-object/from16 v0, v42

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v43

    move/from16 v4, v44

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 400
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mLastKnownPositionOffset:F

    .line 401
    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mUpdatingPositions:Z

    .line 402
    .end local v5    # "alignedCurrHeight":I
    .end local v6    # "alignedNextHeight":I
    .end local v7    # "alignedPrevHeight":I
    .end local v10    # "contentWidth":I
    .end local v11    # "currBaseline":I
    .end local v12    # "currCenter":I
    .end local v13    # "currLeft":I
    .end local v14    # "currOffset":F
    .end local v15    # "currRight":I
    .end local v16    # "currTop":I
    .end local v17    # "currTopOffset":I
    .end local v18    # "currWidth":I
    .end local v19    # "halfCurrWidth":I
    .end local v20    # "maxBaseline":I
    .end local v21    # "maxTextHeight":I
    .end local v22    # "nextBaseline":I
    .end local v23    # "nextLeft":I
    .end local v24    # "nextTop":I
    .end local v25    # "nextTopOffset":I
    .end local v26    # "nextWidth":I
    .end local v28    # "paddingBottom":I
    .end local v29    # "paddingLeft":I
    .end local v30    # "paddingRight":I
    .end local v31    # "paddingTop":I
    .end local v32    # "prevBaseline":I
    .end local v33    # "prevLeft":I
    .end local v34    # "prevTop":I
    .end local v35    # "prevTopOffset":I
    .end local v36    # "prevWidth":I
    .end local v37    # "stripHeight":I
    .end local v38    # "stripWidth":I
    .end local v39    # "textPaddedLeft":I
    .end local v40    # "textPaddedRight":I
    .end local v41    # "vgrav":I
    :goto_1
    return-void

    .line 319
    :cond_2
    if-nez p3, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mLastKnownPositionOffset:F

    move/from16 v42, v0

    cmpl-float v42, p2, v42

    if-nez v42, :cond_0

    goto :goto_1

    .line 374
    .restart local v5    # "alignedCurrHeight":I
    .restart local v6    # "alignedNextHeight":I
    .restart local v7    # "alignedPrevHeight":I
    .restart local v10    # "contentWidth":I
    .restart local v11    # "currBaseline":I
    .restart local v12    # "currCenter":I
    .restart local v13    # "currLeft":I
    .restart local v14    # "currOffset":F
    .restart local v15    # "currRight":I
    .restart local v17    # "currTopOffset":I
    .restart local v18    # "currWidth":I
    .restart local v19    # "halfCurrWidth":I
    .restart local v20    # "maxBaseline":I
    .restart local v21    # "maxTextHeight":I
    .restart local v22    # "nextBaseline":I
    .restart local v25    # "nextTopOffset":I
    .restart local v26    # "nextWidth":I
    .restart local v28    # "paddingBottom":I
    .restart local v29    # "paddingLeft":I
    .restart local v30    # "paddingRight":I
    .restart local v31    # "paddingTop":I
    .restart local v32    # "prevBaseline":I
    .restart local v35    # "prevTopOffset":I
    .restart local v36    # "prevWidth":I
    .restart local v37    # "stripHeight":I
    .restart local v38    # "stripWidth":I
    .restart local v39    # "textPaddedLeft":I
    .restart local v40    # "textPaddedRight":I
    .restart local v41    # "vgrav":I
    :sswitch_0
    sub-int v42, v37, v31

    sub-int v27, v42, v28

    .line 375
    .local v27, "paddedHeight":I
    sub-int v42, v27, v21

    div-int/lit8 v9, v42, 0x2

    .line 376
    .local v9, "centeredTop":I
    add-int v34, v9, v35

    .line 377
    .restart local v34    # "prevTop":I
    add-int v16, v9, v17

    .line 378
    .restart local v16    # "currTop":I
    add-int v24, v9, v25

    .line 379
    .restart local v24    # "nextTop":I
    goto/16 :goto_0

    .line 381
    .end local v9    # "centeredTop":I
    .end local v16    # "currTop":I
    .end local v24    # "nextTop":I
    .end local v27    # "paddedHeight":I
    .end local v34    # "prevTop":I
    :sswitch_1
    sub-int v42, v37, v28

    sub-int v8, v42, v21

    .line 382
    .local v8, "bottomGravTop":I
    add-int v34, v8, v35

    .line 383
    .restart local v34    # "prevTop":I
    add-int v16, v8, v17

    .line 384
    .restart local v16    # "currTop":I
    add-int v24, v8, v25

    .restart local v24    # "nextTop":I
    goto/16 :goto_0

    .line 366
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method
