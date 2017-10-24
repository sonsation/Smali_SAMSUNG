.class public Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;
.super Landroid/widget/FrameLayout;
.source "ProgressFingerScanEffect.java"


# instance fields
.field private final ANIMATION_DELAY:J

.field private final ANIMATION_DURATION:J

.field private final TAG:Ljava/lang/String;

.field private complete:Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;

.field private completeOld:Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;

.field private currentStatus:I

.field private finger:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

.field private mUiVersion:I

.field private progress:Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;

.field private progressOld:Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle_old;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIIIIIIIII)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "fingerColor"    # I
    .param p5, "progressColor"    # I
    .param p6, "greyColor"    # I
    .param p7, "completeColor"    # I
    .param p8, "strokeWidth"    # I
    .param p9, "inverseFingerResID"    # I
    .param p10, "completeResID"    # I
    .param p11, "completeShadowResID"    # I
    .param p12, "uiVersion"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "FingerScanEffect"

    .line 18
    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x1f4

    .line 19
    iput-wide v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->ANIMATION_DURATION:J

    const-wide/16 v0, 0x1f4

    .line 20
    iput-wide v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->ANIMATION_DELAY:J

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->currentStatus:I

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->mUiVersion:I

    .line 59
    iput p12, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->mUiVersion:I

    .line 60
    invoke-direct/range {p0 .. p11}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->initialize(Landroid/content/Context;IIIIIIIIII)V

    .line 62
    return-void
.end method

.method private initialize(Landroid/content/Context;IIIIIIIIII)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "fingerColor"    # I
    .param p5, "progressColor"    # I
    .param p6, "greyColor"    # I
    .param p7, "completeColor"    # I
    .param p8, "strokeWidth"    # I
    .param p9, "inverseFingerResID"    # I
    .param p10, "completeResID"    # I
    .param p11, "completeShadowResID"    # I

    .prologue
    const-string/jumbo v3, "FingerScanEffect"

    const-string/jumbo v4, "ProgressFingerScanEffect : Constructor"

    .line 67
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "FingerScanEffect"

    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Version = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/samsung/android/visualeffect/progressfingerscan/R$string;->version:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "FingerScanEffect"

    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", fingerColor = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", progressColor = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", greyColor = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", completeColor = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", strokeWidth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    move/from16 v0, p9

    invoke-virtual {v3, v0, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 77
    .local v18, "fingerDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    .line 78
    .local v15, "drawingWidth":I
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    .line 79
    .local v10, "drawingHeight":I
    sub-int v3, p2, v15

    div-int/lit8 v16, v3, 0x2

    .line 80
    .local v16, "drawingX":I
    sub-int v3, p3, v10

    div-int/lit8 v17, v3, 0x2

    .line 82
    .local v17, "drawingY":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->mUiVersion:I

    const/4 v4, 0x3

    if-lt v3, v4, :cond_0

    .line 86
    new-instance v3, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p8

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;-><init>(Landroid/content/Context;IIIII)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->progress:Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;

    .line 87
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->progress:Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->addView(Landroid/view/View;)V

    .line 90
    :goto_0
    new-instance v3, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    move-object/from16 v4, p1

    move v5, v15

    move v6, v10

    move/from16 v7, p4

    move/from16 v8, p6

    move/from16 v9, p9

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;-><init>(Landroid/content/Context;IIIII)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->finger:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    .line 91
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->finger:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    move/from16 v0, v16

    int-to-float v4, v0

    invoke-virtual {v3, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setX(F)V

    .line 92
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->finger:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    move/from16 v0, v17

    int-to-float v4, v0

    invoke-virtual {v3, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setY(F)V

    .line 93
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->finger:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v15, v10}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->addView(Landroid/view/View;II)V

    .line 95
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->mUiVersion:I

    const/4 v4, 0x3

    if-lt v3, v4, :cond_1

    .line 99
    new-instance v3, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, v16

    move/from16 v8, v17

    move v9, v15

    move/from16 v11, p7

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p8

    invoke-direct/range {v3 .. v14}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;-><init>(Landroid/content/Context;IIIIIIIIII)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->complete:Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;

    .line 100
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->complete:Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v3, v1, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->addView(Landroid/view/View;II)V

    :goto_1
    const/4 v3, 0x0

    .line 103
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->setLayoutDirection(I)V

    .line 104
    return-void

    .line 83
    :cond_0
    new-instance v3, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle_old;

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p8

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle_old;-><init>(Landroid/content/Context;IIIII)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->progressOld:Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle_old;

    .line 84
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->progressOld:Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle_old;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 96
    :cond_1
    new-instance v3, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, v16

    move/from16 v8, v17

    move v9, v15

    move/from16 v11, p7

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-direct/range {v3 .. v13}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;-><init>(Landroid/content/Context;IIIIIIIII)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->completeOld:Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;

    .line 97
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->completeOld:Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v3, v1, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->addView(Landroid/view/View;II)V

    goto :goto_1
.end method


# virtual methods
.method public hideFinger()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->finger:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->hide()V

    .line 153
    return-void
.end method

.method public setFingerStatus(I)V
    .locals 5
    .param p1, "status"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "FingerScanEffect"

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWarningStatus : status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    packed-switch p1, :pswitch_data_0

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 136
    :pswitch_0
    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->currentStatus:I

    if-eq v0, v4, :cond_0

    .line 137
    iput v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->currentStatus:I

    .line 138
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->finger:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->scanOn()V

    goto :goto_0

    .line 143
    :pswitch_1
    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->currentStatus:I

    if-eqz v0, :cond_0

    .line 144
    iput v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->currentStatus:I

    .line 145
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->finger:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->scanOff()V

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setPercent(F)V
    .locals 4
    .param p1, "percent"    # F

    .prologue
    const/4 v3, 0x3

    const-string/jumbo v0, "FingerScanEffect"

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPercent : percent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->mUiVersion:I

    if-lt v0, v3, :cond_0

    .line 111
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->progress:Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;

    invoke-virtual {v0, p1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->setPercent(F)V

    :goto_0
    const/high16 v0, 0x42c80000    # 100.0f

    .line 114
    cmpl-float v0, p1, v0

    if-ltz v0, :cond_2

    .line 115
    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->mUiVersion:I

    if-lt v0, v3, :cond_1

    .line 118
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->complete:Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeOn()V

    .line 119
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->finger:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 130
    :goto_1
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->progressOld:Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle_old;

    invoke-virtual {v0, p1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle_old;->setPercent(F)V

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->completeOld:Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->completeOn()V

    goto :goto_1

    .line 123
    :cond_2
    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->mUiVersion:I

    if-lt v0, v3, :cond_3

    .line 126
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->finger:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setAlpha(F)V

    .line 127
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->complete:Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeOff()V

    goto :goto_1

    .line 124
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->completeOld:Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete_old;->completeOff()V

    goto :goto_1
.end method

.method public showFinger()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->finger:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->show()V

    .line 157
    return-void
.end method
