.class public Lcom/android/keyguard/KeyguardTextView;
.super Landroid/widget/TextView;
.source "KeyguardTextView.java"


# static fields
.field protected static mContext:Landroid/content/Context;


# instance fields
.field private mDensityDpi:I

.field private mFontScale:F

.field private mOriginalFontSize:F

.field private mOriginalFontSizeDp:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 35
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/KeyguardTextView;->mFontScale:F

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardTextView;->mDensityDpi:I

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardTextView;->mOriginalFontSizeDp:F

    .line 44
    sput-object p1, Lcom/android/keyguard/KeyguardTextView;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/KeyguardTextView;->mFontScale:F

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardTextView;->mDensityDpi:I

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardTextView;->mOriginalFontSizeDp:F

    .line 49
    sput-object p1, Lcom/android/keyguard/KeyguardTextView;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/KeyguardTextView;->mFontScale:F

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardTextView;->mDensityDpi:I

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardTextView;->mOriginalFontSizeDp:F

    .line 54
    sput-object p1, Lcom/android/keyguard/KeyguardTextView;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 35
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/KeyguardTextView;->mFontScale:F

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardTextView;->mDensityDpi:I

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardTextView;->mOriginalFontSizeDp:F

    .line 59
    sput-object p1, Lcom/android/keyguard/KeyguardTextView;->mContext:Landroid/content/Context;

    .line 57
    return-void
.end method

.method public static getFontScaleInKeyguardBoundary(F)F
    .locals 3
    .param p0, "newFontScale"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 107
    invoke-static {}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->isSViewCovered()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    sget-object v0, Lcom/android/keyguard/KeyguardTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 110
    :cond_0
    return v2

    .line 109
    :cond_1
    sget-object v0, Lcom/android/keyguard/KeyguardTextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDesktopMode()Z

    move-result v0

    .line 107
    if-nez v0, :cond_0

    .line 112
    const v0, 0x3f99999a    # 1.2f

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method


# virtual methods
.method public getKeyguardFontScale()F
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/android/keyguard/KeyguardTextView;->mFontScale:F

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 78
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardTextView;->updateFontSizeInKeyguardBoundary(Landroid/content/res/Configuration;)V

    .line 76
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 65
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardTextView;->mOriginalFontSize:F

    .line 66
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 70
    iget v0, p0, Lcom/android/keyguard/KeyguardTextView;->mOriginalFontSize:F

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/KeyguardTextView;->mOriginalFontSizeDp:F

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardTextView;->updateFontSizeInKeyguardBoundary(Landroid/content/res/Configuration;)V

    .line 63
    return-void
.end method

.method public updateFontSizeInKeyguardBoundary()V
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardTextView;->updateFontSizeInKeyguardBoundary(Landroid/content/res/Configuration;)V

    .line 81
    return-void
.end method

.method public updateFontSizeInKeyguardBoundary(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v4, 0x0

    .line 86
    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v2}, Lcom/android/keyguard/KeyguardTextView;->getFontScaleInKeyguardBoundary(F)F

    move-result v1

    .line 87
    .local v1, "newFontScaleInBoundary":F
    const/4 v0, 0x0

    .line 88
    .local v0, "ischanged":Z
    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v3, p0, Lcom/android/keyguard/KeyguardTextView;->mDensityDpi:I

    if-eq v2, v3, :cond_0

    .line 89
    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v2, p0, Lcom/android/keyguard/KeyguardTextView;->mDensityDpi:I

    .line 90
    const/4 v0, 0x1

    .line 92
    :cond_0
    iget v2, p0, Lcom/android/keyguard/KeyguardTextView;->mFontScale:F

    invoke-static {v2, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    iput v1, p0, Lcom/android/keyguard/KeyguardTextView;->mFontScale:F

    .line 94
    const/4 v0, 0x1

    .line 96
    :cond_1
    if-eqz v0, :cond_2

    .line 98
    iget v2, p0, Lcom/android/keyguard/KeyguardTextView;->mOriginalFontSizeDp:F

    iget v3, p0, Lcom/android/keyguard/KeyguardTextView;->mFontScale:F

    mul-float/2addr v2, v3

    sget-object v3, Lcom/android/keyguard/KeyguardTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    .line 97
    invoke-virtual {p0, v4, v2}, Lcom/android/keyguard/KeyguardTextView;->setTextSize(IF)V

    .line 85
    :cond_2
    return-void
.end method
