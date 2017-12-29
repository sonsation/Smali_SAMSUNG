.class public Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;
.super Landroid/preference/Preference;
.source "NavigationbarColorPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$1;,
        Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$2;,
        Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;
    }
.end annotation


# static fields
.field private static sBackgroundColor:I

.field private static sSelectedColorIndex:I


# instance fields
.field private color_value:[I

.field private mAdapter:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;

.field public mColorPickerDialog:Lcom/samsung/android/app/SemColorPickerDialog;

.field private mContext:Landroid/content/Context;

.field private mGrid:Landroid/widget/GridView;

.field mOnColorChangedListener:Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;

.field public mOnColorSetListener:Lcom/samsung/android/app/SemColorPickerDialog$OnColorSetListener;

.field private mPreviewBg:Landroid/widget/ImageView;

.field private mPreviewIcon:Landroid/widget/ImageView;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->sBackgroundColor:I

    return v0
.end method

.method static synthetic -get2()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->sSelectedColorIndex:I

    return v0
.end method

.method static synthetic -set0(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->sBackgroundColor:I

    return p0
.end method

.method static synthetic -set1(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->sSelectedColorIndex:I

    return p0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->notifyChanged()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->resetNavigationBarIconColor()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;I)V
    .locals 0
    .param p1, "bgColor"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->setNavigationBarPreview(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->updatePreview()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->updateUI()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->sSelectedColorIndex:I

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mColorPickerDialog:Lcom/samsung/android/app/SemColorPickerDialog;

    .line 132
    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$1;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mOnColorSetListener:Lcom/samsung/android/app/SemColorPickerDialog$OnColorSetListener;

    .line 139
    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$2;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mOnColorChangedListener:Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;

    .line 64
    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    .line 65
    const v0, 0x7f0401b0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->setLayoutResource(I)V

    .line 66
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->color_value:[I

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->getSelectedPosition()I

    move-result v0

    sput v0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->sSelectedColorIndex:I

    .line 62
    return-void
.end method

.method private getNavigationBarIconColor(I)I
    .locals 14
    .param p1, "bgColor"    # I

    .prologue
    const-wide v12, 0x3feb333333333333L    # 0.85

    const-wide v10, 0x3fee666666666666L    # 0.95

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, "iconColor":I
    const/4 v2, 0x3

    new-array v1, v2, [F

    .line 209
    .local v1, "pixelHSV":[F
    invoke-static {p1, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 210
    aget v2, v1, v7

    float-to-double v2, v2

    const-wide v4, 0x3fc999999999999aL    # 0.2

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_1

    aget v2, v1, v6

    float-to-double v2, v2

    cmpl-double v2, v2, v10

    if-ltz v2, :cond_1

    .line 211
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0d018d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 242
    :cond_0
    :goto_0
    const-string/jumbo v2, "NavigationbarColorPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get Icon color : bg ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "), icon ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return v0

    .line 212
    :cond_1
    aget v2, v1, v6

    float-to-double v2, v2

    const-wide v4, 0x3fa999999999999aL    # 0.05

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_2

    .line 213
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0d018c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 215
    :cond_2
    aget v2, v1, v8

    const/high16 v3, 0x41f00000    # 30.0f

    cmpg-float v2, v2, v3

    if-lez v2, :cond_3

    aget v2, v1, v8

    const/high16 v3, 0x433e0000    # 190.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_8

    aget v2, v1, v8

    const/high16 v3, 0x43b40000    # 360.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_8

    .line 216
    :cond_3
    aget v2, v1, v7

    float-to-double v2, v2

    const-wide v4, 0x3fc999999999999aL    # 0.2

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_5

    aget v2, v1, v7

    float-to-double v2, v2

    const-wide v4, 0x3fdccccccccccccdL    # 0.45

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_5

    aget v2, v1, v6

    float-to-double v2, v2

    cmpl-double v2, v2, v10

    if-ltz v2, :cond_5

    .line 219
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0d018e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto/16 :goto_0

    .line 217
    :cond_5
    aget v2, v1, v7

    float-to-double v2, v2

    const-wide v4, 0x3fdccccccccccccdL    # 0.45

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_6

    aget v2, v1, v6

    float-to-double v2, v2

    cmpl-double v2, v2, v12

    if-ltz v2, :cond_6

    aget v2, v1, v6

    float-to-double v2, v2

    cmpg-double v2, v2, v10

    if-lez v2, :cond_4

    .line 218
    :cond_6
    aget v2, v1, v7

    float-to-double v2, v2

    const-wide v4, 0x3fa999999999999aL    # 0.05

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_7

    aget v2, v1, v6

    float-to-double v2, v2

    const-wide v4, 0x3fe6666666666666L    # 0.7

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_7

    aget v2, v1, v6

    float-to-double v2, v2

    cmpg-double v2, v2, v12

    if-lez v2, :cond_4

    .line 221
    :cond_7
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0d018f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto/16 :goto_0

    .line 223
    :cond_8
    aget v2, v1, v8

    const/high16 v3, 0x42480000    # 50.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_d

    aget v2, v1, v8

    const/high16 v3, 0x43110000    # 145.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_d

    .line 224
    aget v2, v1, v7

    float-to-double v2, v2

    const-wide v4, 0x3fc999999999999aL    # 0.2

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_a

    aget v2, v1, v6

    float-to-double v2, v2

    cmpl-double v2, v2, v10

    if-ltz v2, :cond_a

    .line 227
    :cond_9
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0d018e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto/16 :goto_0

    .line 225
    :cond_a
    aget v2, v1, v6

    float-to-double v2, v2

    cmpl-double v2, v2, v12

    if-ltz v2, :cond_b

    aget v2, v1, v6

    float-to-double v2, v2

    cmpg-double v2, v2, v10

    if-lez v2, :cond_9

    .line 226
    :cond_b
    aget v2, v1, v7

    float-to-double v2, v2

    const-wide v4, 0x3fc999999999999aL    # 0.2

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_c

    aget v2, v1, v6

    float-to-double v2, v2

    const-wide v4, 0x3fe6666666666666L    # 0.7

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_c

    aget v2, v1, v6

    float-to-double v2, v2

    cmpg-double v2, v2, v12

    if-lez v2, :cond_9

    .line 229
    :cond_c
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0d018f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto/16 :goto_0

    .line 231
    :cond_d
    aget v2, v1, v8

    const/high16 v3, 0x41f00000    # 30.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_f

    aget v2, v1, v8

    const/high16 v3, 0x42480000    # 50.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_f

    .line 232
    :goto_1
    aget v2, v1, v7

    float-to-double v2, v2

    const-wide v4, 0x3fc999999999999aL    # 0.2

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_10

    aget v2, v1, v6

    float-to-double v2, v2

    cmpl-double v2, v2, v10

    if-ltz v2, :cond_10

    .line 235
    :cond_e
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0d018e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto/16 :goto_0

    .line 231
    :cond_f
    aget v2, v1, v8

    const/high16 v3, 0x43110000    # 145.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    aget v2, v1, v8

    const/high16 v3, 0x433e0000    # 190.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    goto :goto_1

    .line 233
    :cond_10
    aget v2, v1, v7

    float-to-double v2, v2

    const-wide v4, 0x3fdccccccccccccdL    # 0.45

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_11

    aget v2, v1, v6

    float-to-double v2, v2

    cmpl-double v2, v2, v12

    if-ltz v2, :cond_11

    aget v2, v1, v6

    float-to-double v2, v2

    cmpg-double v2, v2, v10

    if-lez v2, :cond_e

    .line 234
    :cond_11
    aget v2, v1, v7

    float-to-double v2, v2

    const-wide v4, 0x3fc3333333333333L    # 0.15

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_12

    aget v2, v1, v6

    float-to-double v2, v2

    const-wide v4, 0x3fe6666666666666L    # 0.7

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_12

    aget v2, v1, v6

    float-to-double v2, v2

    cmpg-double v2, v2, v12

    if-lez v2, :cond_e

    .line 237
    :cond_12
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0d018f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto/16 :goto_0
.end method

.method private getSelectedPosition()I
    .locals 6

    .prologue
    .line 123
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->color_value:[I

    array-length v3, v3

    add-int/lit8 v2, v3, -0x1

    .line 124
    .local v2, "selectedPos":I
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "navigationbar_color"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 125
    .local v1, "selectedColor":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->color_value:[I

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 126
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->color_value:[I

    aget v3, v3, v0

    if-ne v3, v1, :cond_0

    .line 127
    move v2, v0

    .line 125
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_1
    return v2
.end method

.method private resetNavigationBarIconColor()V
    .locals 3

    .prologue
    .line 262
    const-string/jumbo v2, "statusbar"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 263
    .local v1, "mStatusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 265
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1, v2}, Lcom/android/internal/statusbar/IStatusBarService;->setNavigationBarIconColor(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 266
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private setNavigationBarPreview(I)V
    .locals 5
    .param p1, "bgColor"    # I

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->getNavigationBarIconColor(I)I

    move-result v1

    .line 248
    .local v1, "iconColor":I
    const-string/jumbo v4, "statusbar"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    .line 250
    .local v2, "mStatusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v2, :cond_0

    .line 252
    :try_start_0
    invoke-interface {v2, v1}, Lcom/android/internal/statusbar/IStatusBarService;->setNavigationBarIconColor(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/PhoneWindow;

    .line 258
    .local v3, "win":Lcom/android/internal/policy/PhoneWindow;
    invoke-virtual {v3, p1}, Lcom/android/internal/policy/PhoneWindow;->setNavigationBarInternalColor(I)V

    .line 246
    return-void

    .line 253
    .end local v3    # "win":Lcom/android/internal/policy/PhoneWindow;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private updatePreview()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 100
    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mPreviewBg:Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mPreviewIcon:Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 101
    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 102
    const-string/jumbo v6, "navigationbar_color"

    .line 101
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 103
    .local v0, "bgColor":I
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->getNavigationBarIconColor(I)I

    move-result v2

    .line 105
    .local v2, "iconColor":I
    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    const v6, 0x7f020185

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 106
    .local v1, "bgDrawable":Landroid/graphics/drawable/Drawable;
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 107
    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mPreviewBg:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 110
    const-string/jumbo v6, "navigationbar_key_order"

    .line 109
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 112
    .local v4, "keyOrder":I
    if-nez v4, :cond_1

    .line 113
    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    const v6, 0x7f020186

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 117
    .local v3, "iconDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v2, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 118
    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mPreviewIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    .end local v0    # "bgColor":I
    .end local v1    # "bgDrawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "iconColor":I
    .end local v3    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "keyOrder":I
    :cond_0
    return-void

    .line 115
    .restart local v0    # "bgColor":I
    .restart local v1    # "bgDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "iconColor":I
    .restart local v4    # "keyOrder":I
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    const v6, 0x7f020187

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .restart local v3    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method private updateUI()V
    .locals 2

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->updatePreview()V

    .line 92
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->getSelectedPosition()I

    move-result v0

    sput v0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->sSelectedColorIndex:I

    .line 93
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mAdapter:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mGrid:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mAdapter:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;

    invoke-virtual {v0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;->notifyDataSetChanged()V

    .line 95
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mAdapter:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    :cond_0
    return-void
.end method


# virtual methods
.method public getRecentlyUsedColor()[I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 190
    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "navigationbar_recently_used_color"

    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "recentlyUseColor":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 193
    :cond_0
    return-object v6

    .line 195
    :cond_1
    const-string/jumbo v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, "value":[Ljava/lang/String;
    array-length v4, v3

    new-array v2, v4, [I

    .line 197
    .local v2, "result":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 198
    aget-object v4, v3, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v0

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 201
    :cond_2
    return-object v2
.end method

.method public getSemColorPickerDialog()Lcom/samsung/android/app/SemColorPickerDialog;
    .locals 6

    .prologue
    .line 147
    const/4 v2, 0x0

    .line 148
    .local v2, "semColorPickerDialog":Lcom/samsung/android/app/SemColorPickerDialog;
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->getRecentlyUsedColor()[I

    move-result-object v1

    .line 149
    .local v1, "recent":[I
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "navigationbar_color"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 150
    .local v0, "current":I
    if-eqz v1, :cond_0

    .line 151
    new-instance v2, Lcom/samsung/android/app/SemColorPickerDialog;

    .end local v2    # "semColorPickerDialog":Lcom/samsung/android/app/SemColorPickerDialog;
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mOnColorSetListener:Lcom/samsung/android/app/SemColorPickerDialog$OnColorSetListener;

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/samsung/android/app/SemColorPickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/app/SemColorPickerDialog$OnColorSetListener;I[I)V

    .line 155
    .local v2, "semColorPickerDialog":Lcom/samsung/android/app/SemColorPickerDialog;
    :goto_0
    invoke-virtual {v2}, Lcom/samsung/android/app/SemColorPickerDialog;->getColorPicker()Lcom/samsung/android/widget/SemColorPicker;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mOnColorChangedListener:Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;

    invoke-virtual {v3, v4}, Lcom/samsung/android/widget/SemColorPicker;->setOnColorChangedListener(Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;)V

    .line 156
    new-instance v3, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$3;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/SemColorPickerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 166
    return-object v2

    .line 153
    .local v2, "semColorPickerDialog":Lcom/samsung/android/app/SemColorPickerDialog;
    :cond_0
    new-instance v2, Lcom/samsung/android/app/SemColorPickerDialog;

    .end local v2    # "semColorPickerDialog":Lcom/samsung/android/app/SemColorPickerDialog;
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mOnColorSetListener:Lcom/samsung/android/app/SemColorPickerDialog$OnColorSetListener;

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/SemColorPickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/app/SemColorPickerDialog$OnColorSetListener;)V

    .local v2, "semColorPickerDialog":Lcom/samsung/android/app/SemColorPickerDialog;
    goto :goto_0
.end method

.method public isDefaultBackgroundColor()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 359
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->getSelectedPosition()I

    move-result v0

    .line 360
    .local v0, "pos":I
    if-nez v0, :cond_0

    .line 361
    const/4 v1, 0x1

    return v1

    .line 363
    :cond_0
    return v1
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 74
    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->color_value:[I

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;Landroid/content/Context;[I)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mAdapter:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;

    .line 75
    const v0, 0x7f1104e3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mGrid:Landroid/widget/GridView;

    .line 76
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mAdapter:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    const v0, 0x7f1105a2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mPreviewBg:Landroid/widget/ImageView;

    .line 79
    const v0, 0x7f1105a4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mPreviewIcon:Landroid/widget/ImageView;

    .line 81
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->updateUI()V

    .line 82
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mColorPickerDialog:Lcom/samsung/android/app/SemColorPickerDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mColorPickerDialog:Lcom/samsung/android/app/SemColorPickerDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/SemColorPickerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mColorPickerDialog:Lcom/samsung/android/app/SemColorPickerDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/SemColorPickerDialog;->dismiss()V

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->getSemColorPickerDialog()Lcom/samsung/android/app/SemColorPickerDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mColorPickerDialog:Lcom/samsung/android/app/SemColorPickerDialog;

    .line 86
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mColorPickerDialog:Lcom/samsung/android/app/SemColorPickerDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/SemColorPickerDialog;->show()V

    .line 71
    :cond_0
    return-void
.end method

.method public setDefaultBackgroundColor()V
    .locals 4

    .prologue
    .line 354
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "navigationbar_color"

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->color_value:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 355
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->updateUI()V

    .line 353
    return-void
.end method

.method public setRecentlyUsedColor(I)V
    .locals 8
    .param p1, "color"    # I

    .prologue
    .line 170
    const-string/jumbo v2, ""

    .line 171
    .local v2, "result":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "navigationbar_recently_used_color"

    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "recentlyUseColor":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 174
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "navigationbar_recently_used_color"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 169
    :goto_0
    return-void

    .line 176
    :cond_1
    const-string/jumbo v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, "value":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x6

    if-ge v4, v5, :cond_2

    .line 178
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 185
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "navigationbar_recently_used_color"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 180
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    const/4 v4, 0x5

    if-ge v0, v4, :cond_3

    .line 181
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 183
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method
