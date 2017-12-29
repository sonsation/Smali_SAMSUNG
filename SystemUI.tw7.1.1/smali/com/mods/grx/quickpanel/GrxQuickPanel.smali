.class public Lcom/mods/grx/quickpanel/GrxQuickPanel;
.super Lcom/android/systemui/qs/QSBarItem;
.source "GrxQuickPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mods/grx/quickpanel/GrxQuickPanel$ShortCut;
    }
.end annotation


# instance fields
.field private Animator:Lcom/android/systemui/qs/TouchAnimator;

.field CIRCLE_BG_COLOR:Ljava/lang/String;

.field CIRCLE_BG_COLOR_PRESSED:Ljava/lang/String;

.field DEF_BG_COLOR:Ljava/lang/String;

.field DEF_TEXT_COLOR:Ljava/lang/String;

.field DPI_HEIGHT:I

.field DPI_ICO_SIZE:I

.field DPI_TEXT_SIZE:I

.field MARGIN_START:I

.field MIN_PADDING_LEFT_RIGHT_DEF_DPI:I

.field PADDING_ICO_DEF:I

.field PADDING_TOP_BOTTOM_DPI:I

.field TAG:Ljava/lang/String;

.field private mBgColor:I

.field private mCircleBgColor:I

.field private mCircleBgColorPress:I

.field private mContainer:Landroid/widget/LinearLayout;

.field private mCurrentNumberOfShortCuts:I

.field private mEditButton:Landroid/widget/TextView;

.field private mFloatWidthScale:F

.field private mIconPadding:I

.field private mIconSize:I

.field private mNumVisibleShortcuts:I

.field private mPaddingTopBottom:I

.field private mShortCutHeight:I

.field private mShortCuts:Ljava/lang/String;

.field private mShortCutsWidths:[F

.field private mShowPanel:Z

.field private mTextColor:I

.field private shortcutParams:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x4

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSBarItem;-><init>(Landroid/content/Context;I)V

    const-string v0, "#00000000"

    iput-object v0, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->DEF_BG_COLOR:Ljava/lang/String;

    const-string v0, "#ff1e4e78"

    iput-object v0, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->DEF_TEXT_COLOR:Ljava/lang/String;

    const-string v0, "#fff5f7f8"

    iput-object v0, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->CIRCLE_BG_COLOR:Ljava/lang/String;

    const-string v0, "#80cccccc"

    iput-object v0, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->CIRCLE_BG_COLOR_PRESSED:Ljava/lang/String;

    const/16 v0, 0x4c

    iput v0, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->DPI_HEIGHT:I

    iput v1, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->MIN_PADDING_LEFT_RIGHT_DEF_DPI:I

    iput v1, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->PADDING_TOP_BOTTOM_DPI:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->DPI_TEXT_SIZE:I

    const/16 v0, 0x26

    iput v0, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->DPI_ICO_SIZE:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->PADDING_ICO_DEF:I

    const/16 v0, 0x18

    iput v0, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->MARGIN_START:I

    iput v1, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mNumVisibleShortcuts:I

    iput v2, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mCurrentNumberOfShortCuts:I

    iput-boolean v2, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mShowPanel:Z

    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->Animator:Lcom/android/systemui/qs/TouchAnimator;

    const-string v0, "GrxQuickPanel"

    iput-object v0, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->ini_param()V

    invoke-direct {p0}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->ini_views()V

    const v0, 0x8

    invoke-virtual {p0, v0}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x4

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "#00000000"

    iput-object v0, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->DEF_BG_COLOR:Ljava/lang/String;

    const-string v0, "#ff1e4e78"

    iput-object v0, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->DEF_TEXT_COLOR:Ljava/lang/String;

    const-string v0, "#fff5f7f8"

    iput-object v0, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->CIRCLE_BG_COLOR:Ljava/lang/String;

    const-string v0, "#80cccccc"

    iput-object v0, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->CIRCLE_BG_COLOR_PRESSED:Ljava/lang/String;

    const/16 v0, 0x4c

    iput v0, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->DPI_HEIGHT:I

    iput v1, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->MIN_PADDING_LEFT_RIGHT_DEF_DPI:I

    iput v1, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->PADDING_TOP_BOTTOM_DPI:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->DPI_TEXT_SIZE:I

    const/16 v0, 0x26

    iput v0, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->DPI_ICO_SIZE:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->PADDING_ICO_DEF:I

    const/16 v0, 0x18

    iput v0, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->MARGIN_START:I

    iput v1, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mNumVisibleShortcuts:I

    iput v2, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mCurrentNumberOfShortCuts:I

    iput-boolean v2, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mShowPanel:Z

    invoke-direct {p0}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->ini_param()V

    invoke-direct {p0}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->ini_views()V

    return-void
.end method

.method static synthetic access$000(Lcom/mods/grx/quickpanel/GrxQuickPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->close_notification_panel()V

    return-void
.end method

.method static synthetic access$100(Lcom/mods/grx/quickpanel/GrxQuickPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->update_panel()V

    return-void
.end method

.method static synthetic access$200(Lcom/mods/grx/quickpanel/GrxQuickPanel;)I
    .locals 1

    iget v0, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mIconSize:I

    return v0
.end method

.method static synthetic access$300(Lcom/mods/grx/quickpanel/GrxQuickPanel;)I
    .locals 1

    iget v0, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mIconPadding:I

    return v0
.end method

.method static synthetic access$400(Lcom/mods/grx/quickpanel/GrxQuickPanel;)I
    .locals 1

    iget v0, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mCircleBgColorPress:I

    return v0
.end method

.method static synthetic access$500(Lcom/mods/grx/quickpanel/GrxQuickPanel;)I
    .locals 1

    iget v0, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mCircleBgColor:I

    return v0
.end method

.method static synthetic access$600(Lcom/mods/grx/quickpanel/GrxQuickPanel;)I
    .locals 1

    iget v0, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mTextColor:I

    return v0
.end method

.method private add_empty_layout()V
    .locals 5

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->shortcutParams:Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->shortcutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    div-int/lit8 v3, v4, 0x4

    iget-object v4, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->shortcutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v0, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mContainer:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private close_notification_panel()V
    .locals 6

    invoke-virtual {p0}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    :try_start_0
    const-string v5, "statusbar"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    invoke-virtual {v2}, Landroid/app/StatusBarManager;->collapsePanels()V

    :goto_0
    return-void
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private dip_to_pixels(F)F
    .locals 2

    invoke-virtual {p0}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    return v1
.end method

.method private ini_param()V
    .locals 6

    const/4 v5, 0x1

    const/16 v3, 0x9

    new-array v0, v3, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mShortCutsWidths:[F

    iget v3, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->DPI_HEIGHT:I

    int-to-float v3, v3

    invoke-direct {p0, v3}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->dip_to_pixels(F)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mShortCutHeight:I

    iget v3, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->PADDING_ICO_DEF:I

    int-to-float v3, v3

    invoke-direct {p0, v3}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->dip_to_pixels(F)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mIconPadding:I

    iget v3, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->DPI_ICO_SIZE:I

    int-to-float v3, v3

    invoke-direct {p0, v3}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->dip_to_pixels(F)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mIconSize:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    iget v4, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mShortCutHeight:I

    const v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v3, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->MIN_PADDING_LEFT_RIGHT_DEF_DPI:I

    int-to-float v3, v3

    invoke-direct {p0, v3}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->dip_to_pixels(F)F

    move-result v3

    float-to-int v2, v3

    iget v3, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->PADDING_TOP_BOTTOM_DPI:I

    int-to-float v3, v3

    invoke-direct {p0, v3}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->dip_to_pixels(F)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mPaddingTopBottom:I

    iget v3, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mPaddingTopBottom:I

    iget v4, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mPaddingTopBottom:I

    invoke-virtual {p0, v2, v3, v2, v4}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->setPadding(IIII)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->shortcutParams:Landroid/widget/LinearLayout$LayoutParams;

    return-void

    nop

    :array_0
    .array-data 4
        0x43b40000    # 360.0f
        0x43b40000    # 360.0f
        0x43340000    # 180.0f
        0x42e40000    # 114.0f
        0x42a00000    # 80.0f
        0x42880000    # 68.0f
        0x42700000    # 60.0f
        0x42480000    # 50.0f
        0x42480000    # 50.0f
    .end array-data
.end method

.method private ini_views()V
    .locals 7

    const/4 v6, -0x2

    const/4 v5, 0x0

    new-instance v1, Landroid/widget/HorizontalScrollView;

    invoke-virtual {p0}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v5}, Landroid/widget/HorizontalScrollView;->setBackgroundColor(I)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    invoke-virtual {v1, v5}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0, v5}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->setVisibility(I)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mContainer:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v3, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v3, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->addView(Landroid/view/View;)V

    return-void
.end method

.method private new_circle(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-object v0
.end method

.method private new_edit_button()Landroid/widget/TextView;
    .locals 6

    const/16 v5, 0x11

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mIconSize:I

    iget v4, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mIconSize:I

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->shortcutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v4, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mIconSize:I

    sub-int/2addr v3, v4

    div-int/lit8 v2, v3, 0x2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->CIRCLE_BG_COLOR_PRESSED:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->CIRCLE_BG_COLOR:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->new_selector(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v3, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->DEF_TEXT_COLOR:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v3, "+/-"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/mods/grx/quickpanel/GrxQuickPanel$1;

    invoke-direct {v3, p0}, Lcom/mods/grx/quickpanel/GrxQuickPanel$1;-><init>(Lcom/mods/grx/quickpanel/GrxQuickPanel;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/mods/grx/quickpanel/GrxQuickPanel$2;

    invoke-direct {v3, p0}, Lcom/mods/grx/quickpanel/GrxQuickPanel$2;-><init>(Lcom/mods/grx/quickpanel/GrxQuickPanel;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-object v1
.end method

.method private show_toast(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private update_panel()V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mShortCuts:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mShortCuts:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iput v9, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mCurrentNumberOfShortCuts:I

    :goto_0
    invoke-direct {p0}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->update_shortcuts_params()V

    iget-object v1, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-boolean v1, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mShowPanel:Z

    if-nez v1, :cond_2

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->setVisibility(I)V

    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mShortCuts:Ljava/lang/String;

    const-string v2, "|"

    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v1, v8

    iput v1, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mCurrentNumberOfShortCuts:I

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->add_empty_layout()V

    const/4 v7, 0x0

    :goto_2
    iget v1, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mCurrentNumberOfShortCuts:I

    if-ge v7, v1, :cond_4

    const/4 v4, 0x0

    :try_start_0
    aget-object v1, v8, v7

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_3
    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/mods/grx/Utils;->is_package_installed(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/mods/grx/quickpanel/GrxQuickPanel$ShortCut;

    invoke-virtual {p0}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    aget-object v5, v8, v7

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/mods/grx/quickpanel/GrxQuickPanel$ShortCut;-><init>(Lcom/mods/grx/quickpanel/GrxQuickPanel;Landroid/view/View$OnClickListener;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->shortcutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/mods/grx/quickpanel/GrxQuickPanel$ShortCut;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :catch_0
    move-exception v6

    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    invoke-direct {p0}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->new_edit_button()Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mEditButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mEditButton:Landroid/widget/TextView;

    iget v2, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mEditButton:Landroid/widget/TextView;

    iget v2, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mCircleBgColorPress:I

    iget v3, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mCircleBgColor:I

    invoke-virtual {p0, v2, v3}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->new_selector(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mEditButton:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->add_empty_layout()V

    iget v1, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mBgColor:I

    invoke-virtual {p0, v1}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->setBackgroundColor(I)V

    invoke-virtual {p0, v9}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->setVisibility(I)V

    goto :goto_1
.end method

.method private update_shortcuts_params()V
    .locals 5

    iget v2, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mCurrentNumberOfShortCuts:I

    add-int/lit8 v0, v2, 0x1

    iget v2, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mNumVisibleShortcuts:I

    if-le v2, v0, :cond_0

    iget-object v2, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mShortCutsWidths:[F

    aget v2, v2, v0

    invoke-direct {p0, v2}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->dip_to_pixels(F)F

    move-result v2

    iget v3, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mFloatWidthScale:F

    mul-float/2addr v2, v3

    float-to-int v1, v2

    :goto_0
    iget-object v2, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->shortcutParams:Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v2, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->shortcutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mShortCutHeight:I

    iget v4, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mPaddingTopBottom:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mShortCutsWidths:[F

    iget v3, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mNumVisibleShortcuts:I

    aget v2, v2, v3

    invoke-direct {p0, v2}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->dip_to_pixels(F)F

    move-result v2

    iget v3, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mFloatWidthScale:F

    mul-float/2addr v2, v3

    float-to-int v1, v2

    goto :goto_0
.end method


# virtual methods
.method public getAnimator()Lcom/android/systemui/qs/TouchAnimator;
    .locals 2

    iget-object v0, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->Animator:Lcom/android/systemui/qs/TouchAnimator;

    return-object v0
.end method

.method public getBarHeight()I
    .locals 1

    iget-boolean v0, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mShowPanel:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mShortCutHeight:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBarVisibility()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mShowPanel:Z

    return v0
.end method

.method public new_selector(II)Landroid/graphics/drawable/StateListDrawable;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setExitFadeDuration(I)V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10100a7

    aput v2, v1, v3

    invoke-direct {p0, p1}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->new_circle(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v1, v3, [I

    invoke-direct {p0, p2}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->new_circle(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->close_notification_panel()V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERROR =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public read_settings_and_update_panel()V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "b_qp_show"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    :goto_0
    iput-boolean v2, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mShowPanel:Z

    invoke-virtual {p0}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "b_qp_shortcuts"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mShortCuts:Ljava/lang/String;

    iget-object v2, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mShortCuts:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""

    iput-object v2, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mShortCuts:Ljava/lang/String;

    :cond_0
    const-string v2, "b_gp_bgcolor"

    iget-object v3, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->DEF_BG_COLOR:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mBgColor:I

    const-string v2, "b_gp_textcolor"

    iget-object v3, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->DEF_TEXT_COLOR:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mTextColor:I

    const-string v2, "b_gp_circlecolor"

    iget-object v3, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->CIRCLE_BG_COLOR:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mCircleBgColor:I

    const-string v2, "b_gp_circlecolor_press"

    iget-object v3, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->CIRCLE_BG_COLOR_PRESSED:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mCircleBgColorPress:I

    const-string v2, "b_gp_width_scale"

    const/16 v3, 0x64

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-float v2, v1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    iput v2, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mFloatWidthScale:F

    invoke-direct {p0}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->update_panel()V

    return-void

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public setPosition(F)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/qs/QSBarItem;->setPosition(F)V

    return-void
.end method

.method public set_number_of_colums(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->set_number_of_visible_shortcuts(I)V

    invoke-direct {p0}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->update_shortcuts_params()V

    iget-boolean v0, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mShowPanel:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->update_panel()V

    :cond_0
    return-void
.end method

.method public set_number_of_visible_shortcuts(I)V
    .locals 0

    iput p1, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel;->mNumVisibleShortcuts:I

    return-void
.end method
