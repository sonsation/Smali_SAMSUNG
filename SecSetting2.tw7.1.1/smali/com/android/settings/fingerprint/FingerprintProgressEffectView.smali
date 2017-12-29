.class public Lcom/android/settings/fingerprint/FingerprintProgressEffectView;
.super Landroid/widget/FrameLayout;
.source "FingerprintProgressEffectView.java"


# static fields
.field private static completeResID:I

.field private static completeShadowResID:I

.field private static inverseFingerResID:I

.field private static mCompleteColor:I

.field private static mFingerColor:I

.field private static mGreyColor:I

.field private static mProgressColor:I

.field private static strokeWidth:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private bShowError:Z

.field private mContext:Landroid/content/Context;

.field private mEffectHeight:I

.field private mEffectWidth:I

.field private mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

.field private mIsRearSensor:Z

.field private mPercent:I

.field private mUiVersion:I

.field private mWarnEffect:Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    sput v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->strokeWidth:I

    .line 28
    sput v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->inverseFingerResID:I

    .line 29
    sput v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->completeResID:I

    .line 30
    sput v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->completeShadowResID:I

    .line 31
    sput v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerColor:I

    .line 32
    sput v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mProgressColor:I

    .line 33
    sput v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mGreyColor:I

    .line 34
    sput v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mCompleteColor:I

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 18
    const-string/jumbo v0, "FpstFingerprintProgressEffectView"

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->TAG:Ljava/lang/String;

    .line 23
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:I

    .line 24
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->bShowError:Z

    .line 25
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectWidth:I

    .line 26
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectHeight:I

    .line 35
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mUiVersion:I

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const-string/jumbo v0, "FpstFingerprintProgressEffectView"

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->TAG:Ljava/lang/String;

    .line 23
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:I

    .line 24
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->bShowError:Z

    .line 25
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectWidth:I

    .line 26
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectHeight:I

    .line 35
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mUiVersion:I

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const-string/jumbo v0, "FpstFingerprintProgressEffectView"

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->TAG:Ljava/lang/String;

    .line 23
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:I

    .line 24
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->bShowError:Z

    .line 25
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectWidth:I

    .line 26
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectHeight:I

    .line 35
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mUiVersion:I

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 122
    const-string/jumbo v1, "FpstFingerprintProgressEffectView"

    const-string/jumbo v2, "[init]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 125
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "context or attrs is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 128
    :cond_1
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mContext:Landroid/content/Context;

    .line 129
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettings_Utils;->isRearSesnor()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mIsRearSensor:Z

    .line 135
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/settings/R$styleable;->FingerprintEffectView:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 137
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectWidth:I

    .line 138
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectHeight:I

    .line 140
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f04dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->strokeWidth:I

    .line 143
    const v1, 0x7f020150

    sput v1, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->inverseFingerResID:I

    .line 144
    const v1, 0x7f020155

    sput v1, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->completeResID:I

    .line 145
    const v1, 0x7f020156

    sput v1, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->completeShadowResID:I

    .line 146
    const v1, -0xfc4d15

    sput v1, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerColor:I

    .line 147
    const v1, -0x9e4713    # -3.0003649E38f

    sput v1, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mProgressColor:I

    .line 148
    const v1, 0x33737373

    sput v1, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mGreyColor:I

    .line 149
    const v1, -0xdb5bab

    sput v1, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mCompleteColor:I

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->reset()V

    .line 121
    return-void
.end method


# virtual methods
.method public removeFingerMark()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 104
    const-string/jumbo v1, "FpstFingerprintProgressEffectView"

    const-string/jumbo v2, "[removeFingerMark]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->bShowError:Z

    if-eqz v1, :cond_0

    .line 107
    iput-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->bShowError:Z

    .line 109
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3e19999a    # 0.15f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 110
    .local v0, "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 111
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 113
    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->setFingerStatus(I)V

    .line 114
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->showFinger()V

    .line 115
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    invoke-virtual {v1, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->startAnimation(Landroid/view/animation/Animation;)V

    .line 116
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:I

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->setPercent(I)V

    .line 117
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->setWarningStatus(I)V

    .line 103
    .end local v0    # "alpha":Landroid/view/animation/AlphaAnimation;
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 19

    .prologue
    .line 155
    const-string/jumbo v1, "FpstFingerprintProgressEffectView"

    const-string/jumbo v2, "[reset]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:I

    .line 158
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->bShowError:Z

    .line 160
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    if-eqz v1, :cond_0

    .line 161
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->removeView(Landroid/view/View;)V

    .line 162
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    .line 164
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mWarnEffect:Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;

    if-eqz v1, :cond_1

    .line 165
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mWarnEffect:Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->removeView(Landroid/view/View;)V

    .line 166
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mWarnEffect:Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;

    .line 169
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->inverseFingerResID:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 170
    .local v18, "fingerDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    .line 171
    .local v15, "drawingWidth":I
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    .line 172
    .local v14, "drawingHeight":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectWidth:I

    sub-int/2addr v1, v15

    div-int/lit8 v16, v1, 0x2

    .line 173
    .local v16, "drawingX":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectHeight:I

    sub-int/2addr v1, v14

    div-int/lit8 v17, v1, 0x2

    .line 175
    .local v17, "drawingY":I
    new-instance v1, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectHeight:I

    sget v5, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerColor:I

    sget v6, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mProgressColor:I

    sget v7, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mGreyColor:I

    .line 176
    sget v8, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mCompleteColor:I

    sget v9, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->strokeWidth:I

    sget v10, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->inverseFingerResID:I

    sget v11, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->completeResID:I

    sget v12, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->completeShadowResID:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mUiVersion:I

    .line 175
    invoke-direct/range {v1 .. v13}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;-><init>(Landroid/content/Context;IIIIIIIIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    .line 178
    new-instance v1, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mUiVersion:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mIsRearSensor:Z

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;-><init>(Landroid/content/Context;IZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mWarnEffect:Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;

    .line 179
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mWarnEffect:Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;

    move/from16 v0, v16

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->setX(F)V

    .line 180
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mWarnEffect:Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;

    move/from16 v0, v17

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->setY(F)V

    .line 182
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectHeight:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->addView(Landroid/view/View;II)V

    .line 183
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mWarnEffect:Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v15, v14}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->addView(Landroid/view/View;II)V

    .line 184
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->setLayoutDirection(I)V

    .line 154
    return-void
.end method

.method public setFingerStatus(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    invoke-virtual {v0, p1}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->setFingerStatus(I)V

    .line 53
    :cond_0
    return-void
.end method

.method public setPercent(I)V
    .locals 3
    .param p1, "percent"    # I

    .prologue
    .line 69
    const-string/jumbo v0, "FpstFingerprintProgressEffectView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[setPercent] percent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:I

    if-le v0, p1, :cond_0

    .line 72
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->setPercent(F)V

    .line 80
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->bShowError:Z

    if-nez v0, :cond_2

    .line 81
    iput p1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:I

    .line 68
    :cond_2
    return-void
.end method

.method public setWarningStatus(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->hideFinger()V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mWarnEffect:Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mWarnEffect:Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;

    invoke-virtual {v0, p1}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->setWarningStatus(I)V

    .line 59
    :cond_1
    return-void
.end method

.method public showErrorEffect()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 86
    const-string/jumbo v2, "FpstFingerprintProgressEffectView"

    const-string/jumbo v3, "[showErrorEffect]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:I

    add-int/lit8 v1, v2, 0x5

    .line 89
    .local v1, "tmp_percent":I
    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    .line 90
    const/16 v1, 0x62

    .line 92
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e19999a    # 0.15f

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 93
    .local v0, "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 94
    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 96
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->bShowError:Z

    if-eqz v2, :cond_2

    .line 85
    :cond_1
    :goto_0
    return-void

    .line 97
    :cond_2
    iput-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->bShowError:Z

    .line 98
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    invoke-virtual {v2, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->startAnimation(Landroid/view/animation/Animation;)V

    .line 99
    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->setPercent(I)V

    goto :goto_0
.end method
