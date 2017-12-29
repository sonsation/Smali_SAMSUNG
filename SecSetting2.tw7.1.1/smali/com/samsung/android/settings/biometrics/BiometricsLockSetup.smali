.class public Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;
.super Landroid/app/Activity;
.source "BiometricsLockSetup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static mButton:Landroid/widget/Button;

.field private static mWidth:I


# instance fields
.field private EVENT_ID_CONTINUE:I

.field private final FontScale_LARGE:F

.field private final Margin_Landscape:D

.field private final Margin_Portrait:D

.field private SCREEN_ID:I

.field private mButtonContainer:Landroid/widget/LinearLayout;

.field private mContentsScroll:Landroid/widget/ScrollView;

.field private mContinueButtonContainer:Landroid/view/View;

.field private mForFace:Z

.field private mForFingerprint:Z

.field private mForIris:Z

.field private mFromSetupwizard:Z

.field private mIsClickedButton:Z

.field private mIsConfigurationChanged:Z

.field private mNextButton:Landroid/view/View;

.field private mOrientation:I

.field private mOriginFontScale:F

.field private mPreviousButton:Landroid/view/View;

.field private mSetupwizardButtonContainer:Landroid/view/View;


# direct methods
.method static synthetic -get0()Landroid/widget/Button;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mWidth:I

    return v0
.end method

.method static synthetic -set0(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mWidth:I

    return p0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mIsClickedButton:Z

    .line 40
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mIsConfigurationChanged:Z

    .line 43
    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->FontScale_LARGE:F

    .line 44
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mOriginFontScale:F

    .line 45
    const-wide v0, 0x3fbf9db22d0e5604L    # 0.1235

    iput-wide v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->Margin_Portrait:D

    .line 46
    const-wide v0, 0x3fbe978d4fdf3b64L    # 0.1195

    iput-wide v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->Margin_Landscape:D

    .line 25
    return-void
.end method

.method private adjustFontScale()V
    .locals 7

    .prologue
    const v6, 0x3fa66666    # 1.3f

    .line 213
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 214
    .local v0, "configuration":Landroid/content/res/Configuration;
    const-string/jumbo v3, "BiometricsLockSetup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "font scale "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget v3, v0, Landroid/content/res/Configuration;->fontScale:F

    iput v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mOriginFontScale:F

    .line 217
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mOriginFontScale:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_0

    .line 218
    const-string/jumbo v3, "BiometricsLockSetup"

    const-string/jumbo v4, "Font scale is bigger than Large! Change font scale"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iput v6, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 220
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 221
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v3, "window"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 222
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 223
    iget v3, v0, Landroid/content/res/Configuration;->fontScale:F

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    iput v3, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 224
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 212
    .end local v1    # "metrics":Landroid/util/DisplayMetrics;
    .end local v2    # "wm":Landroid/view/WindowManager;
    :cond_0
    return-void
.end method

.method private getNavigationBarHeight()I
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 321
    const/4 v1, 0x0

    .line 323
    .local v1, "result":I
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 324
    return v4

    .line 327
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mFromSetupwizard:Z

    if-eqz v2, :cond_2

    .line 328
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a028b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 336
    :cond_1
    :goto_0
    const-string/jumbo v2, "BiometricsLockSetup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getNavigationBarHeight : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    return v1

    .line 330
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "navigation_bar_height"

    const-string/jumbo v4, "dimen"

    const-string/jumbo v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 331
    .local v0, "resourceId":I
    if-lez v0, :cond_1

    .line 332
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0
.end method

.method private getStatusBarHeight()I
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 306
    iget v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 307
    return v4

    .line 310
    :cond_0
    const/4 v1, 0x0

    .line 311
    .local v1, "result":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "status_bar_height"

    const-string/jumbo v4, "dimen"

    const-string/jumbo v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 312
    .local v0, "resourceId":I
    if-lez v0, :cond_1

    .line 313
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 316
    :cond_1
    const-string/jumbo v2, "BiometricsLockSetup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getStatusBarHeight : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    return v1
.end method

.method private rollbackFontScale()V
    .locals 6

    .prologue
    .line 229
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mOriginFontScale:F

    const v4, 0x3fa66666    # 1.3f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 230
    const-string/jumbo v3, "BiometricsLockSetup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Rollback Font Scale to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mOriginFontScale:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 232
    .local v0, "configuration":Landroid/content/res/Configuration;
    iget v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mOriginFontScale:F

    iput v3, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 233
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 234
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v3, "window"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 235
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 236
    iget v3, v0, Landroid/content/res/Configuration;->fontScale:F

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    iput v3, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 237
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 228
    .end local v0    # "configuration":Landroid/content/res/Configuration;
    .end local v1    # "metrics":Landroid/util/DisplayMetrics;
    .end local v2    # "wm":Landroid/view/WindowManager;
    :cond_0
    return-void
.end method

.method private setButtonSize()V
    .locals 3

    .prologue
    .line 342
    const v2, 0x7f1103f0

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    sput-object v2, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mButton:Landroid/widget/Button;

    .line 344
    const v2, 0x7f11074e

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 346
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup$1;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup$1;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;Landroid/view/View;)V

    .line 359
    .local v0, "listener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 340
    return-void
.end method

.method private setDescriptionString()V
    .locals 8

    .prologue
    .line 249
    const v6, 0x7f110751

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 250
    .local v5, "title":Landroid/widget/TextView;
    const v6, 0x7f110752

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 251
    .local v0, "setupGuideDesc":Landroid/widget/TextView;
    const v6, 0x7f110754

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 252
    .local v3, "setupSubDescNumber1":Landroid/widget/TextView;
    const v6, 0x7f110757

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 253
    .local v4, "setupSubDescNumber2":Landroid/widget/TextView;
    const v6, 0x7f110755

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 254
    .local v1, "setupSubDesc1":Landroid/widget/TextView;
    const v6, 0x7f110758

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 256
    .local v2, "setupSubDesc2":Landroid/widget/TextView;
    if-eqz v3, :cond_0

    .line 257
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0b08f4

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ". "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    :cond_0
    if-eqz v4, :cond_1

    .line 260
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0b08f5

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ". "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    :cond_1
    iget-boolean v6, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForFace:Z

    if-eqz v6, :cond_6

    .line 264
    if-eqz v5, :cond_2

    .line 265
    const v6, 0x7f0b08be

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 267
    :cond_2
    if-eqz v0, :cond_3

    .line 268
    const v6, 0x7f0b08bf

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 270
    :cond_3
    if-eqz v2, :cond_4

    .line 271
    const v6, 0x7f0b08c0

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 299
    :cond_4
    :goto_0
    if-eqz v1, :cond_5

    .line 300
    const v6, 0x7f0b08f6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 241
    :cond_5
    return-void

    .line 273
    :cond_6
    iget-boolean v6, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForFingerprint:Z

    if-eqz v6, :cond_a

    .line 274
    if-eqz v5, :cond_7

    .line 275
    const v6, 0x7f0b07dd

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 277
    :cond_7
    if-eqz v0, :cond_8

    .line 278
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 279
    const v6, 0x7f0b07df

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 284
    :cond_8
    :goto_1
    if-eqz v2, :cond_4

    .line 285
    const v6, 0x7f0b07e0

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 281
    :cond_9
    const v6, 0x7f0b07de

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 287
    :cond_a
    iget-boolean v6, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForIris:Z

    if-eqz v6, :cond_4

    .line 288
    if-eqz v5, :cond_b

    .line 289
    const v6, 0x7f0b094d

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 291
    :cond_b
    if-eqz v0, :cond_c

    .line 292
    const v6, 0x7f0b0950

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 294
    :cond_c
    if-eqz v2, :cond_4

    .line 295
    const v6, 0x7f0b094e

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private setIndicatorTransparency()V
    .locals 4

    .prologue
    .line 378
    const/16 v0, 0x3400

    .line 379
    .local v0, "visibility":I
    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mFromSetupwizard:Z

    if-eqz v2, :cond_0

    .line 380
    const/16 v0, 0x3402

    .line 382
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 384
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 385
    .local v1, "wmLp":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x7ffff400

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 377
    return-void
.end method

.method private setPhoneMarginToLayout()V
    .locals 10

    .prologue
    .line 192
    const v6, 0x7f11074f

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ScrollView;

    iput-object v6, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mContentsScroll:Landroid/widget/ScrollView;

    .line 193
    const v6, 0x7f110750

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mButtonContainer:Landroid/widget/LinearLayout;

    .line 194
    iget-object v6, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mContentsScroll:Landroid/widget/ScrollView;

    invoke-virtual {v6}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 195
    .local v5, "scrollControl":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v6, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 197
    .local v0, "buttonControl":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 198
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v2, v6

    .line 199
    .local v2, "height":D
    const/4 v4, 0x0

    .line 200
    .local v4, "margin":I
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getNavigationBarHeight()I

    move-result v6

    int-to-double v6, v6

    sub-double v6, v2, v6

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getStatusBarHeight()I

    move-result v8

    int-to-double v8, v8

    sub-double v2, v6, v8

    .line 202
    iget v6, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mOrientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    const-wide v6, 0x3fbe978d4fdf3b64L    # 0.1195

    :goto_0
    mul-double/2addr v6, v2

    double-to-int v4, v6

    .line 203
    const-string/jumbo v6, "BiometricsLockSetup"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "margin value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getStatusBarHeight()I

    move-result v6

    add-int/2addr v6, v4

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 206
    iget-object v6, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mContentsScroll:Landroid/widget/ScrollView;

    invoke-virtual {v6, v5}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    iget-boolean v6, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mFromSetupwizard:Z

    if-eqz v6, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getNavigationBarHeight()I

    move-result v6

    :goto_1
    add-int/2addr v6, v4

    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 209
    iget-object v6, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    return-void

    .line 202
    :cond_0
    const-wide v6, 0x3fbf9db22d0e5604L    # 0.1235

    goto :goto_0

    .line 208
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private setTabletMarginToLayout()V
    .locals 3

    .prologue
    .line 183
    const v2, 0x7f11074e

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 185
    .local v1, "totalScreen":Landroid/widget/RelativeLayout;
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 187
    .local v0, "control":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getStatusBarHeight()I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 188
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 372
    const-string/jumbo v0, "BiometricsLockSetup"

    const-string/jumbo v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->setResult(I)V

    .line 374
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->finish()V

    .line 371
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 150
    :goto_0
    :pswitch_0
    return-void

    .line 154
    :pswitch_1
    const-string/jumbo v0, "BiometricsLockSetup"

    const-string/jumbo v1, "Previous button clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->setResult(I)V

    .line 156
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->finish()V

    goto :goto_0

    .line 159
    :pswitch_2
    const-string/jumbo v0, "BiometricsLockSetup"

    const-string/jumbo v1, "Next button clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->setResult(I)V

    .line 161
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->finish()V

    goto :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x7f1103f2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onClickContinue(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 363
    const-string/jumbo v0, "BiometricsLockSetup"

    const-string/jumbo v1, "onClickContinue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->SCREEN_ID:I

    iget v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->EVENT_ID_CONTINUE:I

    invoke-static {p0, v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    .line 365
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mIsClickedButton:Z

    .line 366
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->setResult(I)V

    .line 367
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->finish()V

    .line 362
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 129
    const-string/jumbo v0, "BiometricsLockSetup"

    const-string/jumbo v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mIsConfigurationChanged:Z

    .line 127
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 53
    const-string/jumbo v2, "BiometricsLockSetup"

    const-string/jumbo v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const/4 v0, 0x0

    .line 57
    .local v0, "appId":I
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->adjustFontScale()V

    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "for_face"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForFace:Z

    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "for_iris"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForIris:Z

    .line 61
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "for_fingerprint"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForFingerprint:Z

    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "fromSetupwizard"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mFromSetupwizard:Z

    .line 64
    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForFace:Z

    if-eqz v2, :cond_0

    .line 65
    const v0, 0x7f0b0982

    .line 67
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForFingerprint:Z

    if-eqz v2, :cond_1

    .line 68
    const v0, 0x7f0b0983

    .line 70
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForIris:Z

    if-eqz v2, :cond_2

    .line 71
    const v0, 0x7f0b0984

    .line 74
    :cond_2
    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForFace:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForFingerprint:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForIris:Z

    if-eqz v2, :cond_4

    :cond_3
    const-string/jumbo v2, "BiometricsLockSetup"

    invoke-static {p0, v0, v2}, Lcom/android/settings/Utils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->finish()V

    .line 76
    return-void

    .line 79
    :cond_4
    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForFace:Z

    if-eqz v2, :cond_a

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0282

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->SCREEN_ID:I

    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0283

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->EVENT_ID_CONTINUE:I

    .line 90
    :cond_5
    :goto_0
    const v2, 0x7f0402bd

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->setContentView(I)V

    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mOrientation:I

    .line 93
    iget v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mOrientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_c

    .line 94
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->setIndicatorTransparency()V

    .line 99
    :goto_1
    const v2, 0x7f110750

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mContinueButtonContainer:Landroid/view/View;

    .line 100
    const v2, 0x7f1103f1

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mSetupwizardButtonContainer:Landroid/view/View;

    .line 101
    const v2, 0x7f1103f2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mPreviousButton:Landroid/view/View;

    .line 102
    const v2, 0x7f1103f4

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mNextButton:Landroid/view/View;

    .line 104
    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mFromSetupwizard:Z

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 109
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mSetupwizardButtonContainer:Landroid/view/View;

    if-eqz v2, :cond_7

    .line 110
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mSetupwizardButtonContainer:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 114
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "show_button_background"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 115
    .local v1, "showButtonBackground":I
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mPreviousButton:Landroid/view/View;

    if-eqz v2, :cond_8

    .line 116
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mPreviousButton:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    :cond_8
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mNextButton:Landroid/view/View;

    if-eqz v2, :cond_9

    .line 119
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mNextButton:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    if-eqz v1, :cond_9

    .line 121
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mNextButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020681

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    :cond_9
    return-void

    .line 82
    .end local v1    # "showButtonBackground":I
    :cond_a
    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForFingerprint:Z

    if-eqz v2, :cond_b

    .line 83
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0264

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->SCREEN_ID:I

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0265

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->EVENT_ID_CONTINUE:I

    goto/16 :goto_0

    .line 85
    :cond_b
    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForIris:Z

    if-eqz v2, :cond_5

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f02f0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->SCREEN_ID:I

    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f02f1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->EVENT_ID_CONTINUE:I

    goto/16 :goto_0

    .line 96
    :cond_c
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    goto/16 :goto_1

    .line 105
    :cond_d
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mContinueButtonContainer:Landroid/view/View;

    if-eqz v2, :cond_7

    .line 106
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mContinueButtonContainer:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 135
    const-string/jumbo v0, "BiometricsLockSetup"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->rollbackFontScale()V

    .line 139
    iget v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mOrientation:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mIsConfigurationChanged:Z

    .line 142
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mIsClickedButton:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mIsConfigurationChanged:Z

    if-eqz v0, :cond_2

    .line 146
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 134
    return-void

    .line 143
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->setResult(I)V

    .line 144
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->finish()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 167
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 168
    const-string/jumbo v0, "BiometricsLockSetup"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->setTabletMarginToLayout()V

    .line 176
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->setDescriptionString()V

    .line 178
    iget v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->SCREEN_ID:I

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->insertFlowLog(Landroid/content/Context;I)V

    .line 166
    return-void

    .line 173
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->setButtonSize()V

    .line 174
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->setPhoneMarginToLayout()V

    goto :goto_0
.end method
