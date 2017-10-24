.class public Lcom/samsung/android/widget/SemColorPicker;
.super Landroid/widget/LinearLayout;
.source "SemColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/widget/SemColorPicker$1;,
        Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;,
        Lcom/samsung/android/widget/SemColorPicker$PickedColor;
    }
.end annotation


# static fields
.field static final RECENT_COLOR_SIZE:I = 0x6

.field private static final RIPPLE_EFFECT_OPACITY:I = 0x3d

.field private static final TAG:Ljava/lang/String; = "SemColorPicker"


# instance fields
.field private lastPickedColor:I

.field private mContext:Landroid/content/Context;

.field private mCurrentColorView:Landroid/widget/ImageView;

.field private mCurrentOrientation:I

.field private mGradientColorSeekBar:Lcom/samsung/android/widget/SemGradientColorSeekBar;

.field private mGradientColorWheel:Lcom/samsung/android/widget/SemGradientColorWheel;

.field mImageButtonClickListener:Landroid/view/View$OnClickListener;

.field private mOnColorChangedListener:Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;

.field private mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

.field private mPickedColorView:Landroid/widget/ImageView;

.field private mRecentColorInfo:Lcom/samsung/android/widget/SemRecentColorInfo;

.field private mRecentColorLayout:Landroid/view/ViewGroup;

.field private mRecentColorListLayout:Landroid/widget/LinearLayout;

.field private mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

.field private recentColorItemViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private recentColorValues:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/samsung/android/widget/SemColorPicker;)Lcom/samsung/android/widget/SemGradientColorSeekBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorSeekBar:Lcom/samsung/android/widget/SemGradientColorSeekBar;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/widget/SemColorPicker;)Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mOnColorChangedListener:Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/widget/SemColorPicker;)Lcom/samsung/android/widget/SemColorPicker$PickedColor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/widget/SemColorPicker;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorListLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/widget/SemColorPicker;)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/widget/SemColorPicker;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->recentColorValues:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/widget/SemColorPicker;I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemColorPicker;->MapColorOnColorWheel(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/widget/SemColorPicker;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemColorPicker;->updateCurrentColor()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/widget/SemColorPicker;->lastPickedColor:I

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mCurrentOrientation:I

    .line 309
    new-instance v0, Lcom/samsung/android/widget/SemColorPicker$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemColorPicker$1;-><init>(Lcom/samsung/android/widget/SemColorPicker;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mImageButtonClickListener:Landroid/view/View$OnClickListener;

    .line 93
    iput-object p1, p0, Lcom/samsung/android/widget/SemColorPicker;->mContext:Landroid/content/Context;

    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x10900fb

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 97
    new-instance v0, Lcom/samsung/android/widget/SemRecentColorInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/widget/SemRecentColorInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorInfo:Lcom/samsung/android/widget/SemRecentColorInfo;

    .line 100
    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorInfo:Lcom/samsung/android/widget/SemRecentColorInfo;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemRecentColorInfo;->getRecentColorInfo()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->recentColorValues:Ljava/util/LinkedList;

    .line 102
    invoke-direct {p0}, Lcom/samsung/android/widget/SemColorPicker;->init()V

    .line 90
    return-void
.end method

.method private MapColorOnColorWheel(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 329
    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    invoke-virtual {v1, p1}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->setColor(I)V

    .line 331
    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorWheel:Lcom/samsung/android/widget/SemGradientColorWheel;

    if-eqz v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorWheel:Lcom/samsung/android/widget/SemGradientColorWheel;

    invoke-virtual {v1, p1}, Lcom/samsung/android/widget/SemGradientColorWheel;->setColor(I)V

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorSeekBar:Lcom/samsung/android/widget/SemGradientColorSeekBar;

    if-eqz v1, :cond_1

    .line 335
    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorSeekBar:Lcom/samsung/android/widget/SemGradientColorSeekBar;

    invoke-virtual {v1, p1}, Lcom/samsung/android/widget/SemGradientColorSeekBar;->restoreColor(I)V

    .line 337
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_2

    .line 338
    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 340
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorWheel:Lcom/samsung/android/widget/SemGradientColorWheel;

    if-eqz v1, :cond_3

    .line 341
    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->getV()F

    move-result v0

    .line 342
    .local v0, "tempV":F
    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->setV(F)V

    .line 343
    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorWheel:Lcom/samsung/android/widget/SemGradientColorWheel;

    iget-object v2, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemGradientColorWheel;->updateCursorColor(I)V

    .line 344
    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    invoke-virtual {v1, v0}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->setV(F)V

    .line 327
    .end local v0    # "tempV":F
    :cond_3
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    invoke-direct {v0}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    .line 111
    invoke-direct {p0}, Lcom/samsung/android/widget/SemColorPicker;->initCurrentColorView()V

    .line 112
    invoke-direct {p0}, Lcom/samsung/android/widget/SemColorPicker;->initGradientColorSeekBar()V

    .line 113
    invoke-direct {p0}, Lcom/samsung/android/widget/SemColorPicker;->initGradientColorWheel()V

    .line 114
    invoke-direct {p0}, Lcom/samsung/android/widget/SemColorPicker;->initRecentColorLayout()V

    .line 116
    invoke-direct {p0}, Lcom/samsung/android/widget/SemColorPicker;->updateCurrentColor()V

    .line 117
    invoke-direct {p0}, Lcom/samsung/android/widget/SemColorPicker;->setInitialColors()V

    .line 106
    return-void
.end method

.method private initCurrentColorView()V
    .locals 2

    .prologue
    .line 123
    const v0, 0x1020496

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mCurrentColorView:Landroid/widget/ImageView;

    .line 124
    const v0, 0x1020498

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColorView:Landroid/widget/ImageView;

    .line 126
    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mCurrentColorView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/samsung/android/widget/SemColorPicker;->lastPickedColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 127
    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColorView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 128
    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 120
    return-void
.end method

.method private initGradientColorSeekBar()V
    .locals 2

    .prologue
    .line 161
    const v0, 0x102049d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/widget/SemGradientColorSeekBar;

    iput-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorSeekBar:Lcom/samsung/android/widget/SemGradientColorSeekBar;

    .line 164
    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorSeekBar:Lcom/samsung/android/widget/SemGradientColorSeekBar;

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemGradientColorSeekBar;->init(I)V

    .line 165
    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorSeekBar:Lcom/samsung/android/widget/SemGradientColorSeekBar;

    new-instance v1, Lcom/samsung/android/widget/SemColorPicker$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemColorPicker$3;-><init>(Lcom/samsung/android/widget/SemColorPicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 190
    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorSeekBar:Lcom/samsung/android/widget/SemGradientColorSeekBar;

    new-instance v1, Lcom/samsung/android/widget/SemColorPicker$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemColorPicker$4;-><init>(Lcom/samsung/android/widget/SemColorPicker;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 158
    return-void
.end method

.method private initGradientColorWheel()V
    .locals 3

    .prologue
    .line 134
    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mCurrentOrientation:I

    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "wheelSize":I
    iget v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mCurrentOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 137
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105034e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 142
    :goto_0
    const v1, 0x102049c

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/widget/SemGradientColorWheel;

    iput-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorWheel:Lcom/samsung/android/widget/SemGradientColorWheel;

    .line 144
    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorWheel:Lcom/samsung/android/widget/SemGradientColorWheel;

    invoke-virtual {v1, v0}, Lcom/samsung/android/widget/SemGradientColorWheel;->init(I)V

    .line 145
    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorWheel:Lcom/samsung/android/widget/SemGradientColorWheel;

    iget-object v2, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemGradientColorWheel;->setColor(I)V

    .line 146
    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorWheel:Lcom/samsung/android/widget/SemGradientColorWheel;

    new-instance v2, Lcom/samsung/android/widget/SemColorPicker$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/widget/SemColorPicker$2;-><init>(Lcom/samsung/android/widget/SemColorPicker;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemGradientColorWheel;->setOnColorWheelInterface(Lcom/samsung/android/widget/SemGradientColorWheel$OnWheelColorChangedListener;)V

    .line 131
    return-void

    .line 139
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050373

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method

.method private initRecentColorLayout()V
    .locals 2

    .prologue
    .line 212
    const v0, 0x102049f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorLayout:Landroid/view/ViewGroup;

    .line 213
    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorLayout:Landroid/view/ViewGroup;

    const v1, 0x10204a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorListLayout:Landroid/widget/LinearLayout;

    .line 211
    return-void
.end method

.method private setImageColor(Landroid/view/View;Ljava/lang/Integer;)V
    .locals 10
    .param p1, "mButton"    # Landroid/view/View;
    .param p2, "color"    # Ljava/lang/Integer;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 286
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 288
    .local v0, "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v0, v9}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 290
    const v4, 0x106019a

    .line 291
    .local v4, "strokeColor":I
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1050367

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 292
    .local v5, "strokeSize":I
    invoke-virtual {v0, v5, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 294
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 296
    const/16 v6, 0x3d

    invoke-static {v6, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    .line 298
    .local v3, "rippleColor":I
    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v6, v9, [[I

    new-array v7, v8, [I

    aput-object v7, v6, v8

    .line 299
    new-array v7, v9, [I

    aput v3, v7, v8

    .line 298
    invoke-direct {v1, v6, v7}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 302
    .local v1, "myList":Landroid/content/res/ColorStateList;
    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    const/4 v6, 0x0

    invoke-direct {v2, v1, v0, v6}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 304
    .local v2, "ripple":Landroid/graphics/drawable/RippleDrawable;
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 305
    iget-object v6, p0, Lcom/samsung/android/widget/SemColorPicker;->mImageButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    return-void
.end method

.method private setInitialColors()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->getColor()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemColorPicker;->MapColorOnColorWheel(I)V

    .line 261
    return-void
.end method

.method private updateCurrentColor()V
    .locals 2

    .prologue
    .line 267
    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->getColor()I

    move-result v0

    .line 269
    .local v0, "color":I
    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorSeekBar:Lcom/samsung/android/widget/SemGradientColorSeekBar;

    if-eqz v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorSeekBar:Lcom/samsung/android/widget/SemGradientColorSeekBar;

    invoke-virtual {v1, v0}, Lcom/samsung/android/widget/SemGradientColorSeekBar;->changeColorBase(I)V

    .line 272
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_1

    .line 273
    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 275
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorWheel:Lcom/samsung/android/widget/SemGradientColorWheel;

    if-eqz v1, :cond_2

    .line 276
    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorWheel:Lcom/samsung/android/widget/SemGradientColorWheel;

    invoke-virtual {v1, v0}, Lcom/samsung/android/widget/SemGradientColorWheel;->updateCursorColor(I)V

    .line 278
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mOnColorChangedListener:Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;

    if-eqz v1, :cond_3

    .line 279
    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mOnColorChangedListener:Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;->OnColorChanged(I)V

    .line 265
    :cond_3
    return-void
.end method


# virtual methods
.method public getRecentColorInfo()Lcom/samsung/android/widget/SemRecentColorInfo;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorInfo:Lcom/samsung/android/widget/SemRecentColorInfo;

    return-object v0
.end method

.method public saveSelectedColor()V
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorInfo:Lcom/samsung/android/widget/SemRecentColorInfo;

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemRecentColorInfo;->saveSelectedColor(I)V

    .line 349
    return-void
.end method

.method public setOnColorChangedListener(Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;)V
    .locals 0
    .param p1, "changeListener"    # Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/samsung/android/widget/SemColorPicker;->mOnColorChangedListener:Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;

    .line 64
    return-void
.end method

.method public updateRecentColorLayout()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 218
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/widget/SemColorPicker;->recentColorItemViews:Ljava/util/ArrayList;

    .line 220
    const/4 v1, 0x0

    .line 222
    .local v1, "imageButton":Landroid/view/View;
    const/4 v2, 0x0

    .line 223
    .local v2, "size":I
    iget-object v3, p0, Lcom/samsung/android/widget/SemColorPicker;->recentColorValues:Ljava/util/LinkedList;

    if-eqz v3, :cond_0

    .line 224
    iget-object v3, p0, Lcom/samsung/android/widget/SemColorPicker;->recentColorValues:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v2

    .line 227
    :cond_0
    const/4 v0, 0x0

    .end local v1    # "imageButton":Landroid/view/View;
    .local v0, "i":I
    :goto_0
    const/4 v3, 0x6

    if-ge v0, v3, :cond_2

    .line 228
    iget-object v3, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 229
    .local v1, "imageButton":Landroid/view/View;
    if-ge v0, v2, :cond_1

    .line 230
    iget-object v3, p0, Lcom/samsung/android/widget/SemColorPicker;->recentColorValues:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/widget/SemColorPicker;->setImageColor(Landroid/view/View;Ljava/lang/Integer;)V

    .line 231
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104041d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 232
    const-string/jumbo v4, " "

    .line 231
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 232
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104041e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 231
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 233
    invoke-virtual {v1, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 234
    invoke-virtual {v1, v7}, Landroid/view/View;->setClickable(Z)V

    .line 235
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 242
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/widget/SemColorPicker;->recentColorItemViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106019b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/widget/SemColorPicker;->setImageColor(Landroid/view/View;Ljava/lang/Integer;)V

    .line 238
    invoke-virtual {v1, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 239
    invoke-virtual {v1, v6}, Landroid/view/View;->setClickable(Z)V

    .line 240
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 245
    .end local v1    # "imageButton":Landroid/view/View;
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorInfo:Lcom/samsung/android/widget/SemRecentColorInfo;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemRecentColorInfo;->getCurrentColor()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 246
    iget-object v3, p0, Lcom/samsung/android/widget/SemColorPicker;->mCurrentColorView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    iget-object v4, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorInfo:Lcom/samsung/android/widget/SemRecentColorInfo;

    invoke-virtual {v4}, Lcom/samsung/android/widget/SemRecentColorInfo;->getCurrentColor()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 247
    iget-object v3, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColorView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    iget-object v4, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorInfo:Lcom/samsung/android/widget/SemRecentColorInfo;

    invoke-virtual {v4}, Lcom/samsung/android/widget/SemRecentColorInfo;->getCurrentColor()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 248
    iget-object v3, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorInfo:Lcom/samsung/android/widget/SemRecentColorInfo;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemRecentColorInfo;->getCurrentColor()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/samsung/android/widget/SemColorPicker;->MapColorOnColorWheel(I)V

    .line 255
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorInfo:Lcom/samsung/android/widget/SemRecentColorInfo;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemRecentColorInfo;->getNewColor()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 256
    iget-object v3, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColorView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    iget-object v4, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorInfo:Lcom/samsung/android/widget/SemRecentColorInfo;

    invoke-virtual {v4}, Lcom/samsung/android/widget/SemRecentColorInfo;->getNewColor()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 257
    iget-object v3, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorInfo:Lcom/samsung/android/widget/SemRecentColorInfo;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemRecentColorInfo;->getNewColor()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/samsung/android/widget/SemColorPicker;->MapColorOnColorWheel(I)V

    .line 217
    :cond_4
    return-void

    .line 249
    :cond_5
    if-eqz v2, :cond_3

    .line 250
    iget-object v3, p0, Lcom/samsung/android/widget/SemColorPicker;->mCurrentColorView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    iget-object v4, p0, Lcom/samsung/android/widget/SemColorPicker;->recentColorValues:Ljava/util/LinkedList;

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 251
    iget-object v3, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColorView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    iget-object v4, p0, Lcom/samsung/android/widget/SemColorPicker;->recentColorValues:Ljava/util/LinkedList;

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 252
    iget-object v3, p0, Lcom/samsung/android/widget/SemColorPicker;->recentColorValues:Ljava/util/LinkedList;

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/samsung/android/widget/SemColorPicker;->MapColorOnColorWheel(I)V

    goto :goto_2
.end method
