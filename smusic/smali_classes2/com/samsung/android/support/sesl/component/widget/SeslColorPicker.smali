.class public Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;
.super Landroid/widget/LinearLayout;
.source "SeslColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$PickedColor;,
        Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$OnColorChangedListener;
    }
.end annotation


# static fields
.field static final RECENT_COLOR_SLOT_COUNT:I = 0x6

.field private static final RIPPLE_EFFECT_OPACITY:I = 0x3d

.field private static final TAG:Ljava/lang/String; = "SeslColorPicker"


# instance fields
.field private mColorDescription:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mCurrentColorView:Landroid/widget/ImageView;

.field private mGradientColorSeekBar:Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;

.field private mGradientColorWheel:Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;

.field private final mImageButtonClickListener:Landroid/view/View$OnClickListener;

.field private mIsInputFromUser:Z

.field private mOnColorChangedListener:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$OnColorChangedListener;

.field private mPickedColor:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$PickedColor;

.field private mPickedColorView:Landroid/widget/ImageView;

.field private final mRecentColorInfo:Lcom/samsung/android/support/sesl/component/widget/SeslRecentColorInfo;

.field private mRecentColorListLayout:Landroid/widget/LinearLayout;

.field private final mRecentColorValues:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mResources:Landroid/content/res/Resources;

.field private mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mIsInputFromUser:Z

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mColorDescription:[Ljava/lang/String;

    .line 300
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$4;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mImageButtonClickListener:Landroid/view/View$OnClickListener;

    .line 88
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mContext:Landroid/content/Context;

    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    .line 91
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/sesl/R$layout;->sesl_color_picker_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 92
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecentColorInfo;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecentColorInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mRecentColorInfo:Lcom/samsung/android/support/sesl/component/widget/SeslRecentColorInfo;

    .line 94
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mRecentColorInfo:Lcom/samsung/android/support/sesl/component/widget/SeslRecentColorInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecentColorInfo;->getRecentColorInfo()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mRecentColorValues:Ljava/util/LinkedList;

    .line 96
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->init()V

    .line 97
    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mIsInputFromUser:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;)Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$PickedColor;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mPickedColor:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$PickedColor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->updateCurrentColor()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;)Landroid/graphics/drawable/GradientDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;)Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$OnColorChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mOnColorChangedListener:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$OnColorChangedListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;)Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mGradientColorSeekBar:Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mRecentColorValues:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mRecentColorListLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;
    .param p1, "x1"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mapColorOnColorWheel(I)V

    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$PickedColor;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$PickedColor;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mPickedColor:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$PickedColor;

    .line 103
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->initCurrentColorView()V

    .line 104
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->initGradientColorSeekBar()V

    .line 105
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->initGradientColorWheel()V

    .line 106
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->initRecentColorLayout()V

    .line 108
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->updateCurrentColor()V

    .line 109
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->setInitialColors()V

    .line 110
    return-void
.end method

.method private initCurrentColorView()V
    .locals 5

    .prologue
    .line 113
    sget v2, Lcom/samsung/android/support/sesl/R$id;->sesl_color_picker_current_color_view:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mCurrentColorView:Landroid/widget/ImageView;

    .line 114
    sget v2, Lcom/samsung/android/support/sesl/R$id;->sesl_color_picker_picked_color_view:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mPickedColorView:Landroid/widget/ImageView;

    .line 116
    sget v2, Lcom/samsung/android/support/sesl/R$id;->sesl_color_picker_current_color_focus:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 117
    .local v0, "currentColorContainer":Landroid/view/View;
    sget v2, Lcom/samsung/android/support/sesl/R$id;->sesl_color_picker_picked_color_focus:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 119
    .local v1, "pickedColorContainer":Landroid/view/View;
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mPickedColorView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 120
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mPickedColor:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$PickedColor;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/samsung/android/support/sesl/R$string;->sesl_color_picker_current:I

    .line 123
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/samsung/android/support/sesl/R$string;->sesl_color_picker_color:I

    .line 124
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/samsung/android/support/sesl/R$string;->sesl_color_picker_new:I

    .line 126
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/samsung/android/support/sesl/R$string;->sesl_color_picker_color:I

    .line 127
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 128
    return-void
.end method

.method private initGradientColorSeekBar()V
    .locals 4

    .prologue
    .line 150
    sget v1, Lcom/samsung/android/support/sesl/R$id;->sesl_color_picker_gradient_seekbar:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mGradientColorSeekBar:Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;

    .line 152
    sget v1, Lcom/samsung/android/support/sesl/R$id;->sesl_color_picker_gradient_seekbar_container:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 155
    .local v0, "gradientColorSeekBarContainer":Landroid/widget/FrameLayout;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mGradientColorSeekBar:Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mPickedColor:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$PickedColor;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;->init(I)V

    .line 156
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mGradientColorSeekBar:Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;

    new-instance v2, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$2;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 183
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mGradientColorSeekBar:Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;

    new-instance v2, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$3;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/samsung/android/support/sesl/R$string;->sesl_color_picker_brightness:I

    .line 202
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/samsung/android/support/sesl/R$string;->sesl_color_picker_slider:I

    .line 203
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/samsung/android/support/sesl/R$string;->sesl_color_picker_double_tap_to_select:I

    .line 204
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 205
    return-void
.end method

.method private initGradientColorWheel()V
    .locals 4

    .prologue
    .line 131
    sget v0, Lcom/samsung/android/support/sesl/R$id;->sesl_color_picker_gradient_wheel:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mGradientColorWheel:Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;

    .line 133
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mGradientColorWheel:Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mPickedColor:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$PickedColor;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->setColor(I)V

    .line 134
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mGradientColorWheel:Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;

    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$1;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->setOnColorWheelInterface(Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel$OnWheelColorChangedListener;)V

    .line 143
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mGradientColorWheel:Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/samsung/android/support/sesl/R$string;->sesl_color_picker_hue_and_saturation:I

    .line 144
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/samsung/android/support/sesl/R$string;->sesl_color_picker_color_wheel:I

    .line 145
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/samsung/android/support/sesl/R$string;->sesl_color_picker_double_tap_to_select:I

    .line 146
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 147
    return-void
.end method

.method private initRecentColorLayout()V
    .locals 4

    .prologue
    .line 208
    sget v0, Lcom/samsung/android/support/sesl/R$id;->sesl_color_picker_used_color_item_list_layout:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mRecentColorListLayout:Landroid/widget/LinearLayout;

    .line 211
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/samsung/android/support/sesl/R$string;->sesl_color_picker_color_one:I

    .line 212
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/samsung/android/support/sesl/R$string;->sesl_color_picker_color_two:I

    .line 213
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/samsung/android/support/sesl/R$string;->sesl_color_picker_color_three:I

    .line 214
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/samsung/android/support/sesl/R$string;->sesl_color_picker_color_four:I

    .line 215
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/samsung/android/support/sesl/R$string;->sesl_color_picker_color_five:I

    .line 216
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/samsung/android/support/sesl/R$string;->sesl_color_picker_color_six:I

    .line 217
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mColorDescription:[Ljava/lang/String;

    .line 219
    return-void
.end method

.method private mapColorOnColorWheel(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 321
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mPickedColor:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$PickedColor;->setColor(I)V

    .line 323
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mGradientColorWheel:Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;

    if-eqz v1, :cond_0

    .line 324
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mGradientColorWheel:Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->setColor(I)V

    .line 326
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mGradientColorSeekBar:Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;

    if-eqz v1, :cond_1

    .line 327
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mGradientColorSeekBar:Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;->restoreColor(I)V

    .line 329
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_2

    .line 330
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 332
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mGradientColorWheel:Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;

    if-eqz v1, :cond_3

    .line 333
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mPickedColor:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$PickedColor;->getV()F

    move-result v0

    .line 334
    .local v0, "tempV":F
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mPickedColor:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$PickedColor;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$PickedColor;->setV(F)V

    .line 335
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mGradientColorWheel:Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mPickedColor:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$PickedColor;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->updateCursorColor(I)V

    .line 336
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mPickedColor:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$PickedColor;->setV(F)V

    .line 338
    .end local v0    # "tempV":F
    :cond_3
    return-void
.end method

.method private setImageColor(Landroid/view/View;Ljava/lang/Integer;)V
    .locals 7
    .param p1, "button"    # Landroid/view/View;
    .param p2, "color"    # Ljava/lang/Integer;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 287
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mContext:Landroid/content/Context;

    sget v4, Lcom/samsung/android/support/sesl/R$drawable;->sesl_color_picker_used_color_item_slot:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 290
    .local v0, "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 292
    :cond_0
    const/16 v3, 0x3d

    invoke-static {v3, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    .line 293
    .local v2, "rippleColor":I
    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v3, v6, [[I

    new-array v4, v5, [I

    aput-object v4, v3, v5

    new-array v4, v6, [I

    aput v2, v4, v5

    invoke-direct {v1, v3, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 296
    .local v1, "myList":Landroid/content/res/ColorStateList;
    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v0, v4}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 297
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mImageButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    return-void
.end method

.method private setInitialColors()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mPickedColor:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$PickedColor;->getColor()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mapColorOnColorWheel(I)V

    .line 267
    return-void
.end method

.method private updateCurrentColor()V
    .locals 2

    .prologue
    .line 270
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mPickedColor:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$PickedColor;->getColor()I

    move-result v0

    .line 272
    .local v0, "color":I
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mGradientColorSeekBar:Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mGradientColorSeekBar:Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;->changeColorBase(I)V

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_1

    .line 276
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 278
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mGradientColorWheel:Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;

    if-eqz v1, :cond_2

    .line 279
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mGradientColorWheel:Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->updateCursorColor(I)V

    .line 281
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mOnColorChangedListener:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$OnColorChangedListener;

    if-eqz v1, :cond_3

    .line 282
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mOnColorChangedListener:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$OnColorChangedListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$OnColorChangedListener;->onColorChanged(I)V

    .line 284
    :cond_3
    return-void
.end method


# virtual methods
.method public getRecentColorInfo()Lcom/samsung/android/support/sesl/component/widget/SeslRecentColorInfo;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mRecentColorInfo:Lcom/samsung/android/support/sesl/component/widget/SeslRecentColorInfo;

    return-object v0
.end method

.method public isUserInputValid()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mIsInputFromUser:Z

    return v0
.end method

.method public saveSelectedColor()V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mRecentColorInfo:Lcom/samsung/android/support/sesl/component/widget/SeslRecentColorInfo;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mPickedColor:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$PickedColor;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecentColorInfo;->saveSelectedColor(I)V

    .line 343
    return-void
.end method

.method public setOnColorChangedListener(Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$OnColorChangedListener;)V
    .locals 0
    .param p1, "changeListener"    # Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$OnColorChangedListener;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mOnColorChangedListener:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$OnColorChangedListener;

    .line 64
    return-void
.end method

.method public updateRecentColorLayout()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v9, 0x0

    .line 223
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mRecentColorValues:Ljava/util/LinkedList;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mRecentColorValues:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v7

    .line 225
    .local v7, "size":I
    :goto_0
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mContext:Landroid/content/Context;

    sget v10, Lcom/samsung/android/support/sesl/R$color;->sesl_color_picker_used_color_item_empty_slot_color:I

    invoke-virtual {v8, v10}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 226
    .local v2, "emptyColor":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ", "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v11, Lcom/samsung/android/support/sesl/R$string;->sesl_color_picker_option:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "defaultDescription":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    const/4 v8, 0x6

    if-ge v4, v8, :cond_2

    .line 230
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mRecentColorListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 231
    .local v6, "recentColorSlot":Landroid/view/View;
    if-ge v4, v7, :cond_1

    .line 232
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mRecentColorValues:Ljava/util/LinkedList;

    invoke-virtual {v8, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-direct {p0, v6, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->setImageColor(Landroid/view/View;Ljava/lang/Integer;)V

    .line 233
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mColorDescription:[Ljava/lang/String;

    aget-object v10, v10, v4

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 234
    invoke-virtual {v6, v12}, Landroid/view/View;->setFocusable(Z)V

    .line 235
    invoke-virtual {v6, v12}, Landroid/view/View;->setClickable(Z)V

    .line 241
    :goto_2
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 229
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v1    # "defaultDescription":Ljava/lang/String;
    .end local v2    # "emptyColor":I
    .end local v4    # "i":I
    .end local v6    # "recentColorSlot":Landroid/view/View;
    .end local v7    # "size":I
    :cond_0
    move v7, v9

    .line 223
    goto :goto_0

    .line 237
    .restart local v1    # "defaultDescription":Ljava/lang/String;
    .restart local v2    # "emptyColor":I
    .restart local v4    # "i":I
    .restart local v6    # "recentColorSlot":Landroid/view/View;
    .restart local v7    # "size":I
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {p0, v6, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->setImageColor(Landroid/view/View;Ljava/lang/Integer;)V

    .line 238
    invoke-virtual {v6, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 239
    invoke-virtual {v6, v9}, Landroid/view/View;->setClickable(Z)V

    goto :goto_2

    .line 245
    .end local v6    # "recentColorSlot":Landroid/view/View;
    :cond_2
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mRecentColorInfo:Lcom/samsung/android/support/sesl/component/widget/SeslRecentColorInfo;

    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecentColorInfo;->getCurrentColor()Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 246
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mRecentColorInfo:Lcom/samsung/android/support/sesl/component/widget/SeslRecentColorInfo;

    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecentColorInfo;->getCurrentColor()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 247
    .local v0, "currentColor":I
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mCurrentColorView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 248
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mPickedColorView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 249
    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mapColorOnColorWheel(I)V

    .line 258
    .end local v0    # "currentColor":I
    :cond_3
    :goto_3
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mRecentColorInfo:Lcom/samsung/android/support/sesl/component/widget/SeslRecentColorInfo;

    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecentColorInfo;->getNewColor()Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 259
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mRecentColorInfo:Lcom/samsung/android/support/sesl/component/widget/SeslRecentColorInfo;

    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecentColorInfo;->getNewColor()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 260
    .local v5, "newColor":I
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mPickedColorView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v8, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 261
    invoke-direct {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mapColorOnColorWheel(I)V

    .line 263
    .end local v5    # "newColor":I
    :cond_4
    return-void

    .line 250
    :cond_5
    if-eqz v7, :cond_3

    .line 251
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mRecentColorValues:Ljava/util/LinkedList;

    invoke-virtual {v8, v9}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 252
    .local v3, "firstColor":I
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mCurrentColorView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v8, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 253
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mPickedColorView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v8, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 254
    invoke-direct {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->mapColorOnColorWheel(I)V

    goto :goto_3
.end method
