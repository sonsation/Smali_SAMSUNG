.class public Landroid/preference/InfinityColorPickerDialog;
.super Landroid/app/Dialog;
.source "InfinityColorPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/preference/InfinityColorPickerView$OnColorChangedListener;


# instance fields
.field private mAlphaSlider:Landroid/preference/colorpicker/flask/slider/AlphaSlider;

.field private mAlphaSliderEnabled:Z

.field private mBlack:Landroid/preference/InfinityColorPickerPanelView;

.field private mBlue:Landroid/preference/InfinityColorPickerPanelView;

.field private mColorEditTextEnabled:Z

.field private mColorPicker:Landroid/preference/InfinityColorPickerView;

.field private mColorPickerContainer:Landroid/view/View;

.field private mColorPickerFC:Landroid/preference/colorpicker/flask/ColorPickerView;

.field private mColorPickerPreference:Landroid/preference/InfinityColorPickerPreference;

.field private mGreen:Landroid/preference/InfinityColorPickerPanelView;

.field private mHex:Landroid/widget/EditText;

.field private mInitialColor:[Ljava/lang/Integer;

.field private mLightnessSlider:Landroid/preference/colorpicker/flask/slider/LightnessSlider;

.field private mLightnessSliderEnabled:Z

.field private mListener:Landroid/preference/InfinityColorPickerDialog$OnColorChangedListener;

.field public mNewColor:Landroid/preference/InfinityColorPickerPanelView;

.field private mOldColor:Landroid/preference/InfinityColorPickerPanelView;

.field public mPickerType:I

.field private mRed:Landroid/preference/InfinityColorPickerPanelView;

.field private mTextCancel:Landroid/widget/TextView;

.field private mTextChangedListener:Landroid/text/TextWatcher;

.field private mTextOk:Landroid/widget/TextView;

.field private mWhite:Landroid/preference/InfinityColorPickerPanelView;

.field private mYellow:Landroid/preference/InfinityColorPickerPanelView;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2, p3}, Landroid/preference/InfinityColorPickerDialog;->init(II)V

    return-void
.end method

.method static synthetic access$000(Landroid/preference/InfinityColorPickerDialog;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Landroid/preference/InfinityColorPickerDialog;->mHex:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Landroid/preference/InfinityColorPickerDialog;)Landroid/preference/InfinityColorPickerView;
    .locals 1

    iget-object v0, p0, Landroid/preference/InfinityColorPickerDialog;->mColorPicker:Landroid/preference/InfinityColorPickerView;

    return-object v0
.end method

.method private static getDimensionAsPx(Landroid/content/Context;I)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getStartColor([Ljava/lang/Integer;)I
    .locals 2

    invoke-direct {p0, p1}, Landroid/preference/InfinityColorPickerDialog;->getStartOffset([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method private getStartOffset([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 3

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    aget-object v2, p1, v0

    if-nez v2, :cond_1

    :cond_0
    return-object v1

    :cond_1
    add-int/lit8 v2, v0, 0x1

    div-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private init(II)V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/preference/InfinityColorPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    invoke-virtual {p0, v1}, Landroid/preference/InfinityColorPickerDialog;->requestWindowFeature(I)Z

    iput p2, p0, Landroid/preference/InfinityColorPickerDialog;->mPickerType:I

    if-gez p2, :cond_0

    invoke-direct {p0, p1}, Landroid/preference/InfinityColorPickerDialog;->setUp(I)V

    if-ltz p2, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Landroid/preference/InfinityColorPickerDialog;->setUpFlowCircle(I)V

    :cond_1
    return-void
.end method

.method private setUp(I)V
    .locals 8

    invoke-virtual {p0}, Landroid/preference/InfinityColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const-string/jumbo v3, "zff_autoset_dialog_colorpicker"

    invoke-static {v2, v3}, Landroid/preference/InfinitySet$Utils;->getIDinternalLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/InfinityColorPickerDialog;->setContentView(Landroid/view/View;)V

    const-string/jumbo v3, "zff_autoset_colorpicker_view"

    invoke-static {v2, v3}, Landroid/preference/InfinitySet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/preference/InfinityColorPickerView;

    iput-object v3, p0, Landroid/preference/InfinityColorPickerDialog;->mColorPicker:Landroid/preference/InfinityColorPickerView;

    const-string/jumbo v3, "zff_autoset_old_color_panel"

    invoke-static {v2, v3}, Landroid/preference/InfinitySet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/preference/InfinityColorPickerPanelView;

    iput-object v3, p0, Landroid/preference/InfinityColorPickerDialog;->mOldColor:Landroid/preference/InfinityColorPickerPanelView;

    const-string/jumbo v3, "zff_autoset_new_color_panel"

    invoke-static {v2, v3}, Landroid/preference/InfinitySet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/preference/InfinityColorPickerPanelView;

    iput-object v3, p0, Landroid/preference/InfinityColorPickerDialog;->mNewColor:Landroid/preference/InfinityColorPickerPanelView;

    const-string/jumbo v3, "zff_autoset_colorpicker_text_cancel"

    invoke-static {v2, v3}, Landroid/preference/InfinitySet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/preference/InfinityColorPickerDialog;->mTextCancel:Landroid/widget/TextView;

    const-string/jumbo v3, "zff_autoset_colorpicker_text_ok"

    invoke-static {v2, v3}, Landroid/preference/InfinitySet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/preference/InfinityColorPickerDialog;->mTextOk:Landroid/widget/TextView;

    const-string/jumbo v3, "zff_autoset_white_panel"

    invoke-static {v2, v3}, Landroid/preference/InfinitySet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/preference/InfinityColorPickerPanelView;

    iput-object v3, p0, Landroid/preference/InfinityColorPickerDialog;->mWhite:Landroid/preference/InfinityColorPickerPanelView;

    const-string/jumbo v3, "zff_autoset_black_panel"

    invoke-static {v2, v3}, Landroid/preference/InfinitySet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/preference/InfinityColorPickerPanelView;

    iput-object v3, p0, Landroid/preference/InfinityColorPickerDialog;->mBlack:Landroid/preference/InfinityColorPickerPanelView;

    const-string/jumbo v3, "zff_autoset_blue_panel"

    invoke-static {v2, v3}, Landroid/preference/InfinitySet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/preference/InfinityColorPickerPanelView;

    iput-object v3, p0, Landroid/preference/InfinityColorPickerDialog;->mBlue:Landroid/preference/InfinityColorPickerPanelView;

    const-string/jumbo v3, "zff_autoset_red_panel"

    invoke-static {v2, v3}, Landroid/preference/InfinitySet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/preference/InfinityColorPickerPanelView;

    iput-object v3, p0, Landroid/preference/InfinityColorPickerDialog;->mRed:Landroid/preference/InfinityColorPickerPanelView;

    const-string/jumbo v3, "zff_autoset_green_panel"

    invoke-static {v2, v3}, Landroid/preference/InfinitySet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/preference/InfinityColorPickerPanelView;

    iput-object v3, p0, Landroid/preference/InfinityColorPickerDialog;->mGreen:Landroid/preference/InfinityColorPickerPanelView;

    const-string/jumbo v3, "zff_autoset_yellow_panel"

    invoke-static {v2, v3}, Landroid/preference/InfinitySet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/preference/InfinityColorPickerPanelView;

    iput-object v3, p0, Landroid/preference/InfinityColorPickerDialog;->mYellow:Landroid/preference/InfinityColorPickerPanelView;

    const-string/jumbo v3, "zff_autoset_colorpicker_hex"

    invoke-static {v2, v3}, Landroid/preference/InfinitySet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Landroid/preference/InfinityColorPickerDialog;->mHex:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->setSingleLine()V

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/text/InputFilter;

    const/16 v5, 0x9

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v6, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v5, 0x0

    aput-object v6, v4, v5

    iget-object v3, p0, Landroid/preference/InfinityColorPickerDialog;->mHex:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const-string v3, "cancel"

    invoke-static {v2, v3}, Landroid/preference/InfinitySet$Utils;->getIDandroidString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Landroid/preference/InfinityColorPickerDialog;->mTextCancel:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Landroid/preference/InfinitySet$Utils;->inverseColor(I)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const-string/jumbo v3, "ok"

    invoke-static {v2, v3}, Landroid/preference/InfinitySet$Utils;->getIDandroidString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Landroid/preference/InfinityColorPickerDialog;->mTextOk:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Landroid/preference/InfinityColorPickerDialog;->mOldColor:Landroid/preference/InfinityColorPickerPanelView;

    invoke-virtual {v2, p0}, Landroid/preference/InfinityColorPickerPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Landroid/preference/InfinityColorPickerDialog;->mNewColor:Landroid/preference/InfinityColorPickerPanelView;

    invoke-virtual {v2, p0}, Landroid/preference/InfinityColorPickerPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Landroid/preference/InfinityColorPickerDialog;->mColorPicker:Landroid/preference/InfinityColorPickerView;

    invoke-virtual {v2, p0}, Landroid/preference/InfinityColorPickerView;->setOnColorChangedListener(Landroid/preference/InfinityColorPickerView$OnColorChangedListener;)V

    iget-object v2, p0, Landroid/preference/InfinityColorPickerDialog;->mOldColor:Landroid/preference/InfinityColorPickerPanelView;

    invoke-virtual {v2, p1}, Landroid/preference/InfinityColorPickerPanelView;->setColor(I)V

    iget-object v2, p0, Landroid/preference/InfinityColorPickerDialog;->mColorPicker:Landroid/preference/InfinityColorPickerView;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3, v3}, Landroid/preference/InfinityColorPickerView;->setColor(IZZ)V

    iget-object v2, p0, Landroid/preference/InfinityColorPickerDialog;->mWhite:Landroid/preference/InfinityColorPickerPanelView;

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Landroid/preference/InfinityColorPickerDialog;->setColorAndClickAction(Landroid/preference/InfinityColorPickerPanelView;I)V

    iget-object v2, p0, Landroid/preference/InfinityColorPickerDialog;->mBlack:Landroid/preference/InfinityColorPickerPanelView;

    const/high16 v3, -0x1000000

    invoke-virtual {p0, v2, v3}, Landroid/preference/InfinityColorPickerDialog;->setColorAndClickAction(Landroid/preference/InfinityColorPickerPanelView;I)V

    iget-object v2, p0, Landroid/preference/InfinityColorPickerDialog;->mBlue:Landroid/preference/InfinityColorPickerPanelView;

    const v3, -0xffff01

    invoke-virtual {p0, v2, v3}, Landroid/preference/InfinityColorPickerDialog;->setColorAndClickAction(Landroid/preference/InfinityColorPickerPanelView;I)V

    iget-object v2, p0, Landroid/preference/InfinityColorPickerDialog;->mRed:Landroid/preference/InfinityColorPickerPanelView;

    const/high16 v3, -0x10000

    invoke-virtual {p0, v2, v3}, Landroid/preference/InfinityColorPickerDialog;->setColorAndClickAction(Landroid/preference/InfinityColorPickerPanelView;I)V

    iget-object v2, p0, Landroid/preference/InfinityColorPickerDialog;->mGreen:Landroid/preference/InfinityColorPickerPanelView;

    const v3, -0xff0100

    invoke-virtual {p0, v2, v3}, Landroid/preference/InfinityColorPickerDialog;->setColorAndClickAction(Landroid/preference/InfinityColorPickerPanelView;I)V

    iget-object v2, p0, Landroid/preference/InfinityColorPickerDialog;->mYellow:Landroid/preference/InfinityColorPickerPanelView;

    const/16 v3, -0x100

    invoke-virtual {p0, v2, v3}, Landroid/preference/InfinityColorPickerDialog;->setColorAndClickAction(Landroid/preference/InfinityColorPickerPanelView;I)V

    iget-object v2, p0, Landroid/preference/InfinityColorPickerDialog;->mHex:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/preference/InfinityColorPickerDialog;->mHex:Landroid/widget/EditText;

    invoke-static {p1}, Landroid/preference/InfinityColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1}, Landroid/preference/InfinitySet$Utils;->inverseColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v3, p0, Landroid/preference/InfinityColorPickerDialog;->mColorPicker:Landroid/preference/InfinityColorPickerView;

    invoke-virtual {v3, v2}, Landroid/preference/InfinityColorPickerView;->setColorEdit(Landroid/widget/EditText;)V

    :cond_0
    return-void
.end method

.method private setUpFlowCircle(I)V
    .locals 8

    const/4 v2, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v2, v2, [Ljava/lang/Integer;

    aput-object v5, v2, v6

    aput-object v5, v2, v4

    const/4 v3, 0x2

    aput-object v5, v2, v3

    const/4 v3, 0x3

    aput-object v5, v2, v3

    const/4 v3, 0x4

    aput-object v5, v2, v3

    iput-object v2, p0, Landroid/preference/InfinityColorPickerDialog;->mInitialColor:[Ljava/lang/Integer;

    invoke-virtual {p0}, Landroid/preference/InfinityColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "layout_inflater"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const-string/jumbo v3, "zff_autoset_dialog_fc_colorpicker"

    invoke-static {v1, v3}, Landroid/preference/InfinitySet$Utils;->getIDinternalLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InfinityColorPickerDialog;->mColorPickerContainer:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/preference/InfinityColorPickerDialog;->setContentView(Landroid/view/View;)V

    const-string/jumbo v3, "zff_autoset_fc_colorpicker_view"

    invoke-static {v1, v3}, Landroid/preference/InfinitySet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/preference/colorpicker/flask/ColorPickerView;

    iput-object v2, p0, Landroid/preference/InfinityColorPickerDialog;->mColorPickerFC:Landroid/preference/colorpicker/flask/ColorPickerView;

    const-string/jumbo v3, "zff_autoset_old_color_panel"

    invoke-static {v1, v3}, Landroid/preference/InfinitySet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/preference/InfinityColorPickerPanelView;

    iput-object v2, p0, Landroid/preference/InfinityColorPickerDialog;->mOldColor:Landroid/preference/InfinityColorPickerPanelView;

    const-string/jumbo v3, "zff_autoset_new_color_panel"

    invoke-static {v1, v3}, Landroid/preference/InfinitySet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/preference/InfinityColorPickerPanelView;

    iput-object v2, p0, Landroid/preference/InfinityColorPickerDialog;->mNewColor:Landroid/preference/InfinityColorPickerPanelView;

    const-string/jumbo v3, "zff_autoset_colorpicker_text_cancel"

    invoke-static {v1, v3}, Landroid/preference/InfinitySet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/preference/InfinityColorPickerDialog;->mTextCancel:Landroid/widget/TextView;

    const-string/jumbo v3, "zff_autoset_colorpicker_text_ok"

    invoke-static {v1, v3}, Landroid/preference/InfinitySet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/preference/InfinityColorPickerDialog;->mTextOk:Landroid/widget/TextView;

    const-string v3, "cancel"

    invoke-static {v1, v3}, Landroid/preference/InfinitySet$Utils;->getIDandroidString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Landroid/preference/InfinityColorPickerDialog;->mTextCancel:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Landroid/preference/InfinitySet$Utils;->inverseColor(I)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const-string/jumbo v3, "ok"

    invoke-static {v1, v3}, Landroid/preference/InfinitySet$Utils;->getIDandroidString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Landroid/preference/InfinityColorPickerDialog;->mTextOk:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Landroid/preference/InfinitySet$Utils;->inverseColor(I)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Landroid/preference/InfinityColorPickerDialog;->mOldColor:Landroid/preference/InfinityColorPickerPanelView;

    invoke-virtual {v2, p0}, Landroid/preference/InfinityColorPickerPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p1}, Landroid/preference/InfinityColorPickerPanelView;->setColor(I)V

    iget-object v2, p0, Landroid/preference/InfinityColorPickerDialog;->mNewColor:Landroid/preference/InfinityColorPickerPanelView;

    invoke-virtual {v2, p0}, Landroid/preference/InfinityColorPickerPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p1}, Landroid/preference/InfinityColorPickerPanelView;->setColor(I)V

    return-void
.end method


# virtual methods
.method public buildFlowCircle(I)V
    .locals 7

    iget-object v0, p0, Landroid/preference/InfinityColorPickerDialog;->mColorPickerContainer:Landroid/view/View;

    invoke-virtual {p0}, Landroid/preference/InfinityColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/InfinityColorPickerDialog;->mColorPickerFC:Landroid/preference/colorpicker/flask/ColorPickerView;

    iget-object v3, p0, Landroid/preference/InfinityColorPickerDialog;->mInitialColor:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Landroid/preference/InfinityColorPickerDialog;->getStartOffset([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/preference/colorpicker/flask/ColorPickerView;->setInitialColors([Ljava/lang/Integer;I)V

    const-string/jumbo v3, "zff_autoset_colorpicker_hex"

    invoke-static {v1, v3}, Landroid/preference/InfinitySet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Landroid/preference/InfinityColorPickerDialog;->mHex:Landroid/widget/EditText;

    iget-object v2, p0, Landroid/preference/InfinityColorPickerDialog;->mHex:Landroid/widget/EditText;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    const/4 v4, 0x0

    new-instance v5, Landroid/text/InputFilter$AllCaps;

    invoke-direct {v5}, Landroid/text/InputFilter$AllCaps;-><init>()V

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    invoke-virtual {v2}, Landroid/widget/EditText;->setSingleLine()V

    const/16 v6, 0x9

    iget-boolean v3, p0, Landroid/preference/InfinityColorPickerDialog;->mAlphaSliderEnabled:Z

    if-nez v3, :cond_0

    const/4 v6, 0x7

    :cond_0
    iget-object v2, p0, Landroid/preference/InfinityColorPickerDialog;->mHex:Landroid/widget/EditText;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    const/4 v4, 0x0

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-boolean v4, p0, Landroid/preference/InfinityColorPickerDialog;->mAlphaSliderEnabled:Z

    invoke-static {p1, v4}, Landroid/preference/colorpicker/flask/Utils;->getHexString(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1}, Landroid/preference/InfinitySet$Utils;->inverseColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v3, p0, Landroid/preference/InfinityColorPickerDialog;->mColorPickerFC:Landroid/preference/colorpicker/flask/ColorPickerView;

    invoke-virtual {v3, v2}, Landroid/preference/colorpicker/flask/ColorPickerView;->setColorEdit(Landroid/widget/EditText;)V

    iget-boolean v3, p0, Landroid/preference/InfinityColorPickerDialog;->mColorEditTextEnabled:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_1
    iget-boolean v3, p0, Landroid/preference/InfinityColorPickerDialog;->mLightnessSliderEnabled:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "zff_autoset_fc_colorpicker_lightslider"

    invoke-static {v1, v3}, Landroid/preference/InfinitySet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/preference/colorpicker/flask/slider/LightnessSlider;

    iput-object v2, p0, Landroid/preference/InfinityColorPickerDialog;->mLightnessSlider:Landroid/preference/colorpicker/flask/slider/LightnessSlider;

    iget-object v2, p0, Landroid/preference/InfinityColorPickerDialog;->mColorPickerFC:Landroid/preference/colorpicker/flask/ColorPickerView;

    iget-object v3, p0, Landroid/preference/InfinityColorPickerDialog;->mLightnessSlider:Landroid/preference/colorpicker/flask/slider/LightnessSlider;

    invoke-virtual {v2, v3}, Landroid/preference/colorpicker/flask/ColorPickerView;->setLightnessSlider(Landroid/preference/colorpicker/flask/slider/LightnessSlider;)V

    iget-object v2, p0, Landroid/preference/InfinityColorPickerDialog;->mLightnessSlider:Landroid/preference/colorpicker/flask/slider/LightnessSlider;

    iget-object v3, p0, Landroid/preference/InfinityColorPickerDialog;->mInitialColor:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Landroid/preference/InfinityColorPickerDialog;->getStartColor([Ljava/lang/Integer;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/colorpicker/flask/slider/LightnessSlider;->setColor(I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/colorpicker/flask/slider/LightnessSlider;->setVisibility(I)V

    :cond_2
    iget-boolean v3, p0, Landroid/preference/InfinityColorPickerDialog;->mAlphaSliderEnabled:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "zff_autoset_fc_colorpicker_alphaslider"

    invoke-static {v1, v3}, Landroid/preference/InfinitySet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/preference/colorpicker/flask/slider/AlphaSlider;

    iput-object v2, p0, Landroid/preference/InfinityColorPickerDialog;->mAlphaSlider:Landroid/preference/colorpicker/flask/slider/AlphaSlider;

    iget-object v2, p0, Landroid/preference/InfinityColorPickerDialog;->mColorPickerFC:Landroid/preference/colorpicker/flask/ColorPickerView;

    iget-object v3, p0, Landroid/preference/InfinityColorPickerDialog;->mAlphaSlider:Landroid/preference/colorpicker/flask/slider/AlphaSlider;

    invoke-virtual {v2, v3}, Landroid/preference/colorpicker/flask/ColorPickerView;->setAlphaSlider(Landroid/preference/colorpicker/flask/slider/AlphaSlider;)V

    iget-object v2, p0, Landroid/preference/InfinityColorPickerDialog;->mAlphaSlider:Landroid/preference/colorpicker/flask/slider/AlphaSlider;

    iget-object v3, p0, Landroid/preference/InfinityColorPickerDialog;->mInitialColor:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Landroid/preference/InfinityColorPickerDialog;->getStartColor([Ljava/lang/Integer;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/colorpicker/flask/slider/AlphaSlider;->setColor(I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/colorpicker/flask/slider/AlphaSlider;->setVisibility(I)V

    :cond_3
    iget-object v2, p0, Landroid/preference/InfinityColorPickerDialog;->mColorPickerFC:Landroid/preference/colorpicker/flask/ColorPickerView;

    iget-object v3, p0, Landroid/preference/InfinityColorPickerDialog;->mNewColor:Landroid/preference/InfinityColorPickerPanelView;

    invoke-virtual {v2, v3}, Landroid/preference/colorpicker/flask/ColorPickerView;->setColorPanel(Landroid/preference/InfinityColorPickerPanelView;)V

    iget-object v3, p0, Landroid/preference/InfinityColorPickerDialog;->mTextOk:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/preference/colorpicker/flask/ColorPickerView;->setTextOk(Landroid/widget/TextView;)V

    return-void
.end method

.method public density(I)V
    .locals 1

    iget-object v0, p0, Landroid/preference/InfinityColorPickerDialog;->mColorPickerFC:Landroid/preference/colorpicker/flask/ColorPickerView;

    invoke-virtual {v0, p1}, Landroid/preference/colorpicker/flask/ColorPickerView;->setDensity(I)V

    return-void
.end method

.method public initialColor(I)V
    .locals 3

    iget-object v0, p0, Landroid/preference/InfinityColorPickerDialog;->mInitialColor:[Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Landroid/preference/InfinityColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v1, "zff_autoset_new_color_panel"

    invoke-static {v2, v1}, Landroid/preference/InfinitySet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/preference/InfinityColorPickerDialog;->mListener:Landroid/preference/InfinityColorPickerDialog$OnColorChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/InfinityColorPickerDialog;->mListener:Landroid/preference/InfinityColorPickerDialog$OnColorChangedListener;

    iget-object v1, p0, Landroid/preference/InfinityColorPickerDialog;->mNewColor:Landroid/preference/InfinityColorPickerPanelView;

    invoke-virtual {v1}, Landroid/preference/InfinityColorPickerPanelView;->getColor()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/preference/InfinityColorPickerDialog$OnColorChangedListener;->onColorChanged(I)V

    iget-object v0, p0, Landroid/preference/InfinityColorPickerDialog;->mColorPickerPreference:Landroid/preference/InfinityColorPickerPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/InfinityColorPickerDialog;->mColorPickerPreference:Landroid/preference/InfinityColorPickerPreference;

    invoke-virtual {v0, v1}, Landroid/preference/InfinityColorPickerPreference;->setASet(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/InfinityColorPickerPreference;->postASet(Z)V

    iget-object v1, v0, Landroid/preference/InfinityColorPickerPreference;->mNeedReboot:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {v2, v1}, Landroid/preference/InfinitySet$Utils;->needRebootDialog(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroid/preference/InfinityColorPickerDialog;->dismiss()V

    return-void
.end method

.method public onColorChanged(I)V
    .locals 2

    iget-object v0, p0, Landroid/preference/InfinityColorPickerDialog;->mNewColor:Landroid/preference/InfinityColorPickerPanelView;

    invoke-virtual {v0, p1}, Landroid/preference/InfinityColorPickerPanelView;->setColor(I)V

    iget-object v0, p0, Landroid/preference/InfinityColorPickerDialog;->mTextOk:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/preference/InfinitySet$Utils;->inverseColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/preference/InfinityColorPickerDialog;->mOldColor:Landroid/preference/InfinityColorPickerPanelView;

    const-string/jumbo v1, "old_color"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/InfinityColorPickerPanelView;->setColor(I)V

    iget-object v0, p0, Landroid/preference/InfinityColorPickerDialog;->mColorPicker:Landroid/preference/InfinityColorPickerView;

    const-string/jumbo v1, "new_color"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/preference/InfinityColorPickerView;->setColor(IZZ)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "old_color"

    iget-object v2, p0, Landroid/preference/InfinityColorPickerDialog;->mOldColor:Landroid/preference/InfinityColorPickerPanelView;

    invoke-virtual {v2}, Landroid/preference/InfinityColorPickerPanelView;->getColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "new_color"

    iget-object v2, p0, Landroid/preference/InfinityColorPickerDialog;->mNewColor:Landroid/preference/InfinityColorPickerPanelView;

    invoke-virtual {v2}, Landroid/preference/InfinityColorPickerPanelView;->getColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public setColorAndClickAction(Landroid/preference/InfinityColorPickerPanelView;I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/preference/InfinityColorPickerPanelView;->setColor(I)V

    new-instance v0, Landroid/preference/InfinityColorPickerDialog$1;

    invoke-direct {v0, p0, p2}, Landroid/preference/InfinityColorPickerDialog$1;-><init>(Landroid/preference/InfinityColorPickerDialog;I)V

    invoke-virtual {p1, v0}, Landroid/preference/InfinityColorPickerPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setColorPickerPreference(Landroid/preference/InfinityColorPickerPreference;)V
    .locals 0

    iput-object p1, p0, Landroid/preference/InfinityColorPickerDialog;->mColorPickerPreference:Landroid/preference/InfinityColorPickerPreference;

    return-void
.end method

.method public setEnabledAlphaSlider(Z)V
    .locals 1

    iput-boolean p1, p0, Landroid/preference/InfinityColorPickerDialog;->mAlphaSliderEnabled:Z

    iget-object v0, p0, Landroid/preference/InfinityColorPickerDialog;->mColorPicker:Landroid/preference/InfinityColorPickerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/preference/InfinityColorPickerView;->setAlphaSliderVisible(Z)V

    :cond_0
    return-void
.end method

.method public setEnabledColorEditText(Z)V
    .locals 2

    iput-boolean p1, p0, Landroid/preference/InfinityColorPickerDialog;->mColorEditTextEnabled:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/preference/InfinityColorPickerDialog;->mHex:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setEnabledLightnessSlider(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/preference/InfinityColorPickerDialog;->mLightnessSliderEnabled:Z

    return-void
.end method

.method public setOnColorChangedListener(Landroid/preference/InfinityColorPickerDialog$OnColorChangedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/preference/InfinityColorPickerDialog;->mListener:Landroid/preference/InfinityColorPickerDialog$OnColorChangedListener;

    return-void
.end method

.method public wheelType(Landroid/preference/colorpicker/flask/ColorPickerView$WHEEL_TYPE;)V
    .locals 2

    invoke-static {p1}, Landroid/preference/colorpicker/flask/builder/ColorWheelRendererBuilder;->getRenderer(Landroid/preference/colorpicker/flask/ColorPickerView$WHEEL_TYPE;)Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderer;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/InfinityColorPickerDialog;->mColorPickerFC:Landroid/preference/colorpicker/flask/ColorPickerView;

    invoke-virtual {v1, v0}, Landroid/preference/colorpicker/flask/ColorPickerView;->setRenderer(Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderer;)V

    return-void
.end method
