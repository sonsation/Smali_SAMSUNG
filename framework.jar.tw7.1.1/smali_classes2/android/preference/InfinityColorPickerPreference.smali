.class public Landroid/preference/InfinityColorPickerPreference;
.super Landroid/preference/Preference;
.source "InfinityColorPickerPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/preference/InfinityColorPickerDialog$OnColorChangedListener;


# instance fields
.field private mAlphaSliderEnabled:Z

.field private mBroadcast:Ljava/lang/String;

.field private mBroadcastOff:Ljava/lang/String;

.field private mBroadcastOn:Ljava/lang/String;

.field private mColor:I

.field private mColorEditTextEnabled:Z

.field private mColorTriggered:Z

.field private mDefaultValue:Ljava/lang/Integer;

.field public mDensity:F

.field private mDependInValues:[Ljava/lang/String;

.field private mDependOutValues:[Ljava/lang/String;

.field private mDialog:Landroid/preference/InfinityColorPickerDialog;

.field private mEditText:Landroid/widget/EditText;

.field private mFlowCircleDensity:I

.field private mLightnessSliderEnabled:Z

.field private mMaxLines:I

.field public mNeedReboot:Ljava/lang/String;

.field private mNotifyBroadcast:Z

.field private mNotifyScript:Z

.field private mPickerType:I

.field private mPreviewType:I

.field private mRunScript:Ljava/lang/String;

.field private mRunScriptOff:Ljava/lang/String;

.field private mRunScriptOn:Ljava/lang/String;

.field private mSummary:Ljava/lang/String;

.field private mSummaryOff:Ljava/lang/String;

.field private mSummaryOn:Ljava/lang/String;

.field public mTypeSet:Ljava/lang/Class;

.field private mValue:I

.field private mView:Landroid/view/View;

.field private mWheelType:Landroid/preference/colorpicker/flask/ColorPickerView$WHEEL_TYPE;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1, p2}, Landroid/preference/InfinityColorPickerPreference;->initASet(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2}, Landroid/preference/InfinityColorPickerPreference;->initASet(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static convertToARGB(I)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static darken(IF)I
    .locals 8

    const/4 v7, 0x0

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-float v4, v3

    mul-float/2addr v4, p1

    float-to-int v4, v4

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v5, v2

    mul-float/2addr v5, p1

    float-to-int v5, v5

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v6, v1

    mul-float/2addr v6, p1

    float-to-int v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v0, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    return v4
.end method

.method private getSummary(ZI)Ljava/lang/String;
    .locals 4

    invoke-static {p2}, Landroid/preference/InfinityColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/InfinityColorPickerPreference;->mSummary:Ljava/lang/String;

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    iget-object v1, p0, Landroid/preference/InfinityColorPickerPreference;->mSummaryOn:Ljava/lang/String;

    if-nez v1, :cond_1

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/preference/InfinityColorPickerPreference;->mSummaryOff:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initASet(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/high16 v0, -0x1000000

    iput v0, p0, Landroid/preference/InfinityColorPickerPreference;->mValue:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/preference/InfinityColorPickerPreference;->mDensity:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/preference/InfinityColorPickerPreference;->mAlphaSliderEnabled:Z

    iput-boolean v0, p0, Landroid/preference/InfinityColorPickerPreference;->mLightnessSliderEnabled:Z

    invoke-virtual {p0}, Landroid/preference/InfinityColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Landroid/preference/InfinityColorPickerPreference;->mDensity:F

    invoke-virtual {p0, p0}, Landroid/preference/InfinityColorPickerPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    const-string/jumbo v0, "typeset"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/preference/InfinitySet$Utils;->setTypeSet(Landroid/preference/Preference;Ljava/lang/String;)V

    const-string/jumbo v0, "typepicker"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/InfinityColorPickerPreference;->setTypePicker(Ljava/lang/String;)V

    const-string v0, "alphaslider"

    invoke-interface {p2, v1, v0, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/preference/InfinityColorPickerPreference;->mAlphaSliderEnabled:Z

    const-string v0, "lightslider"

    invoke-interface {p2, v1, v0, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/preference/InfinityColorPickerPreference;->mLightnessSliderEnabled:Z

    const-string/jumbo v0, "maxlines"

    invoke-interface {p2, v1, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/preference/InfinityColorPickerPreference;->mMaxLines:I

    const-string v0, "depend-in"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/InfinityColorPickerPreference;->setDependInValues(Ljava/lang/String;)V

    const-string v0, "depend-out"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/InfinityColorPickerPreference;->setDependOutValues(Ljava/lang/String;)V

    const-string/jumbo v0, "summary"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/InfinityColorPickerPreference;->setSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InfinityColorPickerPreference;->mSummary:Ljava/lang/String;

    const-string/jumbo v0, "summary-off"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/InfinityColorPickerPreference;->setSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InfinityColorPickerPreference;->mSummaryOff:Ljava/lang/String;

    const-string/jumbo v0, "summary-on"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/InfinityColorPickerPreference;->setSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InfinityColorPickerPreference;->mSummaryOn:Ljava/lang/String;

    const-string v0, "color"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/InfinityColorPickerPreference;->setColor(Ljava/lang/String;)V

    const-string/jumbo v0, "needreboot"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InfinityColorPickerPreference;->mNeedReboot:Ljava/lang/String;

    const-string v0, "broadcast"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InfinityColorPickerPreference;->mBroadcast:Ljava/lang/String;

    const-string v0, "broadcast-off"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InfinityColorPickerPreference;->mBroadcastOff:Ljava/lang/String;

    const-string v0, "broadcast-on"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InfinityColorPickerPreference;->mBroadcastOn:Ljava/lang/String;

    const-string/jumbo v0, "notify-broadcast"

    invoke-interface {p2, v1, v0, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/preference/InfinityColorPickerPreference;->mNotifyBroadcast:Z

    const-string/jumbo v0, "runscript"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InfinityColorPickerPreference;->mRunScript:Ljava/lang/String;

    const-string/jumbo v0, "runscript-off"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InfinityColorPickerPreference;->mRunScriptOff:Ljava/lang/String;

    const-string/jumbo v0, "runscript-on"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InfinityColorPickerPreference;->mRunScriptOn:Ljava/lang/String;

    const-string/jumbo v0, "notify-script"

    invoke-interface {p2, v1, v0, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/preference/InfinityColorPickerPreference;->mNotifyScript:Z

    const-string/jumbo v0, "typeview"

    invoke-interface {p2, v1, v0, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput v0, p0, Landroid/preference/InfinityColorPickerPreference;->mPreviewType:I

    const-string v0, "coloredit"

    invoke-interface {p2, v1, v0, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/preference/InfinityColorPickerPreference;->mColorEditTextEnabled:Z

    const-string v0, "density"

    const/16 v2, 0xc

    invoke-interface {p2, v1, v0, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/preference/InfinityColorPickerPreference;->mFlowCircleDensity:I

    iget v0, p0, Landroid/preference/InfinityColorPickerPreference;->mPickerType:I

    invoke-static {v0}, Landroid/preference/colorpicker/flask/ColorPickerView$WHEEL_TYPE;->indexOf(I)Landroid/preference/colorpicker/flask/ColorPickerView$WHEEL_TYPE;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InfinityColorPickerPreference;->mWheelType:Landroid/preference/colorpicker/flask/ColorPickerView$WHEEL_TYPE;

    iget-object v0, p0, Landroid/preference/InfinityColorPickerPreference;->mDefaultValue:Ljava/lang/Integer;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/InfinityColorPickerPreference;->getASet()V

    :cond_0
    return-void
.end method

.method private setColor(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/preference/InfinityColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "color"

    invoke-static {v0, p1, v1}, Landroid/preference/InfinitySet$Utils;->resolveIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    invoke-static {p1}, Landroid/preference/InfinitySet$Utils;->convertToColorInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput v0, p0, Landroid/preference/InfinityColorPickerPreference;->mColor:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/InfinityColorPickerPreference;->mColorTriggered:Z

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method private setDependInValues(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InfinityColorPickerPreference;->mDependInValues:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private setDependOutValues(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_1

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    invoke-static {v3}, Landroid/preference/InfinitySet$Utils;->convertToColorInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Landroid/preference/InfinityColorPickerPreference;->mDependOutValues:[Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private setPreviewColor()V
    .locals 7

    iget-object v2, p0, Landroid/preference/InfinityColorPickerPreference;->mView:Landroid/view/View;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/preference/InfinityColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-string/jumbo v3, "widget_frame"

    invoke-static {v0, v3}, Landroid/preference/InfinitySet$Utils;->getIDandroidId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    iget v5, p0, Landroid/preference/InfinityColorPickerPreference;->mDensity:F

    iget v6, p0, Landroid/preference/InfinityColorPickerPreference;->mPreviewType:I

    const/16 v4, 0x1f

    if-nez v6, :cond_2

    const/16 v4, 0x23

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    :cond_2
    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x11

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/16 v4, 0xc

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {v2, v4, v3}, Landroid/widget/LinearLayout;->removeViews(II)V

    :cond_3
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    if-nez v6, :cond_4

    const/4 v4, 0x1

    :cond_4
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    invoke-static {v6, v3, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Landroid/preference/InfinityColorPickerPreference;->mValue:I

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {p0}, Landroid/preference/InfinityColorPickerPreference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v5, v3}, Landroid/preference/InfinityColorPickerPreference;->darken(IF)I

    move-result v5

    :cond_5
    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method private setSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/preference/InfinityColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "string"

    invoke-static {v0, p1, v1}, Landroid/preference/InfinitySet$Utils;->resolveIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method private setTypePicker(Ljava/lang/String;)V
    .locals 2

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    const-string/jumbo v1, "normal"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "flow"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "circle"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    :goto_0
    iput v0, p0, Landroid/preference/InfinityColorPickerPreference;->mPickerType:I

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getASet()V
    .locals 3

    invoke-virtual {p0}, Landroid/preference/InfinityColorPickerPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p0, v0}, Landroid/preference/InfinitySet$Utils;->getInt(Landroid/preference/Preference;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    invoke-virtual {p0, v1}, Landroid/preference/InfinityColorPickerPreference;->onColorChanged(I)V

    iget-object v0, p0, Landroid/preference/InfinityColorPickerPreference;->mDependOutValues:[Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/preference/InfinitySet$Utils;->handleOutDependents(I[Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {p0, v2, v1}, Landroid/preference/InfinityColorPickerPreference;->getSummary(ZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/InfinityColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    iget-object v0, p0, Landroid/preference/InfinityColorPickerPreference;->mDefaultValue:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/InfinityColorPickerPreference;->setASet(I)Z

    goto :goto_0
.end method

.method public getColor()I
    .locals 1

    iget-object v0, p0, Landroid/preference/InfinityColorPickerPreference;->mDialog:Landroid/preference/InfinityColorPickerDialog;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/preference/InfinityColorPickerDialog;->mNewColor:Landroid/preference/InfinityColorPickerPanelView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/preference/InfinityColorPickerPanelView;->getColor()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/preference/InfinityColorPickerPreference;->mValue:I

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Landroid/preference/InfinityColorPickerPreference;->mView:Landroid/view/View;

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    iget v0, p0, Landroid/preference/InfinityColorPickerPreference;->mMaxLines:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/InfinityColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-static {v0, v1}, Landroid/preference/InfinitySet$Utils;->getIDandroidId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget v1, p0, Landroid/preference/InfinityColorPickerPreference;->mMaxLines:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_0
    invoke-direct {p0}, Landroid/preference/InfinityColorPickerPreference;->setPreviewColor()V

    return-void
.end method

.method public onColorChanged(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/preference/InfinityColorPickerPreference;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/preference/InfinityColorPickerPreference;->persistInt(I)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iput p1, p0, Landroid/preference/InfinityColorPickerPreference;->mValue:I

    invoke-direct {p0}, Landroid/preference/InfinityColorPickerPreference;->setPreviewColor()V

    :try_start_1
    invoke-virtual {p0}, Landroid/preference/InfinityColorPickerPreference;->getOnPreferenceChangeListener()Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    iget-object v0, p0, Landroid/preference/InfinityColorPickerPreference;->mEditText:Landroid/widget/EditText;

    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {p0}, Landroid/preference/InfinitySet$Utils;->clearKey(Landroid/preference/Preference;)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public onDependencyChanged(Landroid/preference/Preference;Z)V
    .locals 1

    iget-object v0, p0, Landroid/preference/InfinityColorPickerPreference;->mDependInValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->onDependencyChanged(Landroid/preference/Preference;Z)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {p0, v0}, Landroid/preference/InfinitySet$Utils;->handleInDependents(Landroid/preference/Preference;[Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 2

    const/high16 v0, -0x1000000

    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InfinityColorPickerPreference;->mDefaultValue:Ljava/lang/Integer;

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/InfinitySet$Utils;->convertToColorInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/preference/InfinityColorPickerPreference;->showDialog(Landroid/os/Bundle;)V

    return v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    if-nez p1, :cond_1

    invoke-static {p0}, Landroid/preference/InfinitySet$Utils;->checkDataCleared(Landroid/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/InfinityColorPickerPreference;->setASet(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/preference/InfinityColorPickerPreference;->getASet()V

    goto :goto_0
.end method

.method public postASet(Z)V
    .locals 8

    move-object v1, p0

    const/4 v2, 0x0

    iget v3, p0, Landroid/preference/InfinityColorPickerPreference;->mValue:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move v4, p1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Landroid/preference/InfinityColorPickerPreference;->mBroadcast:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Landroid/preference/InfinityColorPickerPreference;->mBroadcastOn:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Landroid/preference/InfinityColorPickerPreference;->mBroadcastOff:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Landroid/preference/InfinityColorPickerPreference;->mRunScript:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Landroid/preference/InfinityColorPickerPreference;->mRunScriptOn:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Landroid/preference/InfinityColorPickerPreference;->mRunScriptOff:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v6, p0, Landroid/preference/InfinityColorPickerPreference;->mNotifyBroadcast:Z

    iget-boolean v7, p0, Landroid/preference/InfinityColorPickerPreference;->mNotifyScript:Z

    new-instance v0, Landroid/preference/InfinitySet$PostRun;

    invoke-direct/range {v0 .. v7}, Landroid/preference/InfinitySet$PostRun;-><init>(Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;ZZ)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setASet(I)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/preference/InfinityColorPickerPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0, v0, p1}, Landroid/preference/InfinitySet$Utils;->putInt(Landroid/preference/Preference;Ljava/lang/String;I)Z

    invoke-virtual {p0, p1}, Landroid/preference/InfinityColorPickerPreference;->onColorChanged(I)V

    iget-object v0, p0, Landroid/preference/InfinityColorPickerPreference;->mDependOutValues:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/preference/InfinitySet$Utils;->handleOutDependents(I[Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {p0, v2, p1}, Landroid/preference/InfinityColorPickerPreference;->getSummary(ZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/InfinityColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-super {p0, v2}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    :cond_0
    return v2
.end method

.method public shouldDisableDependents()Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/preference/InfinityColorPickerPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {p0, v1}, Landroid/preference/InfinitySet$Utils;->getInt(Landroid/preference/Preference;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    iget-object v2, p0, Landroid/preference/InfinityColorPickerPreference;->mDependOutValues:[Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/preference/InfinitySet$Utils;->handleOutDependents(I[Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v3

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 4

    new-instance v0, Landroid/preference/InfinityColorPickerDialog;

    invoke-virtual {p0}, Landroid/preference/InfinityColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Landroid/preference/InfinityColorPickerPreference;->mValue:I

    iget v3, p0, Landroid/preference/InfinityColorPickerPreference;->mPickerType:I

    invoke-direct {v0, v1, v2, v3}, Landroid/preference/InfinityColorPickerDialog;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Landroid/preference/InfinityColorPickerPreference;->mDialog:Landroid/preference/InfinityColorPickerDialog;

    iget-boolean v2, p0, Landroid/preference/InfinityColorPickerPreference;->mColorTriggered:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "zff_autoset_dialog_colorpicker"

    if-ltz v3, :cond_0

    const-string/jumbo v2, "zff_autoset_dialog_fc_colorpicker"

    :cond_0
    invoke-static {v1, v2}, Landroid/preference/InfinitySet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iget-object v0, p0, Landroid/preference/InfinityColorPickerPreference;->mDialog:Landroid/preference/InfinityColorPickerDialog;

    invoke-virtual {v0, v1}, Landroid/preference/InfinityColorPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroid/preference/InfinityColorPickerPreference;->mColor:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    iget-object v0, p0, Landroid/preference/InfinityColorPickerPreference;->mDialog:Landroid/preference/InfinityColorPickerDialog;

    invoke-virtual {v0, p0}, Landroid/preference/InfinityColorPickerDialog;->setOnColorChangedListener(Landroid/preference/InfinityColorPickerDialog$OnColorChangedListener;)V

    invoke-virtual {v0, p0}, Landroid/preference/InfinityColorPickerDialog;->setColorPickerPreference(Landroid/preference/InfinityColorPickerPreference;)V

    iget-boolean v1, p0, Landroid/preference/InfinityColorPickerPreference;->mColorEditTextEnabled:Z

    invoke-virtual {v0, v1}, Landroid/preference/InfinityColorPickerDialog;->setEnabledColorEditText(Z)V

    iget-boolean v1, p0, Landroid/preference/InfinityColorPickerPreference;->mAlphaSliderEnabled:Z

    invoke-virtual {v0, v1}, Landroid/preference/InfinityColorPickerDialog;->setEnabledAlphaSlider(Z)V

    if-ltz v3, :cond_2

    iget-boolean v1, p0, Landroid/preference/InfinityColorPickerPreference;->mLightnessSliderEnabled:Z

    invoke-virtual {v0, v1}, Landroid/preference/InfinityColorPickerDialog;->setEnabledLightnessSlider(Z)V

    iget v2, p0, Landroid/preference/InfinityColorPickerPreference;->mValue:I

    invoke-virtual {v0, v2}, Landroid/preference/InfinityColorPickerDialog;->initialColor(I)V

    iget-object v1, p0, Landroid/preference/InfinityColorPickerPreference;->mWheelType:Landroid/preference/colorpicker/flask/ColorPickerView$WHEEL_TYPE;

    invoke-virtual {v0, v1}, Landroid/preference/InfinityColorPickerDialog;->wheelType(Landroid/preference/colorpicker/flask/ColorPickerView$WHEEL_TYPE;)V

    iget v1, p0, Landroid/preference/InfinityColorPickerPreference;->mFlowCircleDensity:I

    invoke-virtual {v0, v1}, Landroid/preference/InfinityColorPickerDialog;->density(I)V

    invoke-virtual {v0, v2}, Landroid/preference/InfinityColorPickerDialog;->buildFlowCircle(I)V

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Landroid/preference/InfinityColorPickerPreference;->mDialog:Landroid/preference/InfinityColorPickerDialog;

    invoke-virtual {v0, p1}, Landroid/preference/InfinityColorPickerDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_3
    iget-object v0, p0, Landroid/preference/InfinityColorPickerPreference;->mDialog:Landroid/preference/InfinityColorPickerDialog;

    invoke-virtual {v0}, Landroid/preference/InfinityColorPickerDialog;->show()V

    return-void
.end method
