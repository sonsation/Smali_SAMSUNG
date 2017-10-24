.class public Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;
.super Landroid/widget/FrameLayout;
.source "KeyguardCinematicPreview.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$1;,
        Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$CinematicCallback;
    }
.end annotation


# instance fields
.field private mAodCapturedView:Landroid/widget/ImageView;

.field private mCallback:Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$CinematicCallback;

.field private mContext:Landroid/content/Context;

.field private mCurrentMode:I

.field private mCurrentPlusValue:F

.field private mDPlus:I

.field private mGalaxyView:Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;

.field private mHandler:Landroid/os/Handler;

.field private mHomeBackgroundView:Landroid/widget/ImageView;

.field private mHomeCapturedView:Landroid/widget/ImageView;

.field private mIsAodOptionChecked:Z

.field private mIsChangeHolding:Z

.field private mIsFirstSensor:Z

.field private mIsShowing:Z

.field private mLockBackgroundView:Landroid/widget/ImageView;

.field private mLockCapturedView:Landroid/widget/ImageView;

.field private mRootView:Landroid/view/View;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mStartPlusValue:I

.field private mTarget:[F


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;)Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$CinematicCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mCallback:Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$CinematicCallback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;)Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mGalaxyView:Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mIsShowing:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;F)F
    .locals 0

    iput p1, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mCurrentPlusValue:F

    return p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mIsChangeHolding:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->goNextMode()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZLcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$CinematicCallback;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewWidth"    # I
    .param p3, "viewHeight"    # I
    .param p4, "isAodModeEnabled"    # Z
    .param p5, "callback"    # Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$CinematicCallback;

    .prologue
    const/4 v3, 0x0

    .line 128
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 100
    const/16 v0, -0xc8

    iput v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mDPlus:I

    .line 101
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mStartPlusValue:I

    .line 103
    iget v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mStartPlusValue:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mCurrentPlusValue:F

    .line 104
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mTarget:[F

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mIsFirstSensor:Z

    .line 113
    new-instance v0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$1;-><init>(Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;)V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mHandler:Landroid/os/Handler;

    .line 130
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mContext:Landroid/content/Context;

    .line 131
    iput-boolean p4, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mIsAodOptionChecked:Z

    .line 132
    iput-object p5, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mCallback:Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$CinematicCallback;

    .line 134
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$layout;->keyguard_cinematic_preview:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mRootView:Landroid/view/View;

    .line 135
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mRootView:Landroid/view/View;

    const/16 v1, 0x5a0

    const/16 v2, 0xb90

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->addView(Landroid/view/View;II)V

    .line 137
    sget v0, Lcom/android/keyguard/R$id;->lock_background_view:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mLockBackgroundView:Landroid/widget/ImageView;

    .line 138
    sget v0, Lcom/android/keyguard/R$id;->home_background_view:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mHomeBackgroundView:Landroid/widget/ImageView;

    .line 139
    sget v0, Lcom/android/keyguard/R$id;->aod_captured_view:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mAodCapturedView:Landroid/widget/ImageView;

    .line 140
    sget v0, Lcom/android/keyguard/R$id;->lock_captured_view:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mLockCapturedView:Landroid/widget/ImageView;

    .line 141
    sget v0, Lcom/android/keyguard/R$id;->home_captured_view:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mHomeCapturedView:Landroid/widget/ImageView;

    .line 142
    sget v0, Lcom/android/keyguard/R$id;->galaxy_view:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mGalaxyView:Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;

    .line 144
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setPivotX(F)V

    .line 145
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setPivotY(F)V

    .line 146
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mRootView:Landroid/view/View;

    int-to-float v1, p2

    const/high16 v2, 0x44b40000    # 1440.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 147
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mRootView:Landroid/view/View;

    int-to-float v1, p3

    const/high16 v2, 0x45390000    # 2960.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 149
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mSensorManager:Landroid/hardware/SensorManager;

    .line 151
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->initCapturedView()V

    .line 153
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mGalaxyView:Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;

    new-instance v1, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$2;-><init>(Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 166
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mGalaxyView:Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;

    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$3;-><init>(Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 127
    return-void
.end method

.method private goAodMode()V
    .locals 10

    .prologue
    const/4 v4, 0x2

    const/4 v9, 0x1

    .line 333
    const-string/jumbo v1, "KeyguardCinematicPreview"

    const-string/jumbo v2, "goAodMode()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const-wide/16 v2, 0x8fc

    invoke-direct {p0, v2, v3}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->holdChangeMode(J)V

    .line 336
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mCallback:Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$CinematicCallback;

    invoke-interface {v1, v9}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$CinematicCallback;->onModeChanged(I)V

    .line 338
    new-array v1, v4, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    .line 339
    .local v8, "galaxyAnimAlpha":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$6;

    invoke-direct {v1, p0}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$6;-><init>(Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;)V

    invoke-virtual {v8, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 346
    new-instance v1, Lcom/samsung/android/view/animation/SineInOut90;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineInOut90;-><init>()V

    invoke-virtual {v8, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 347
    const-wide/16 v2, 0x3e8

    invoke-virtual {v8, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 348
    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->start()V

    .line 350
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mAodCapturedView:Landroid/widget/ImageView;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v4, [F

    fill-array-data v3, :array_1

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 351
    .local v0, "aodCapturedAnimAlpha":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 352
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 353
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 355
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mGalaxyView:Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;

    iget v1, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mCurrentPlusValue:F

    iget v3, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mDPlus:I

    int-to-float v3, v3

    add-float/2addr v3, v1

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x7d0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->plusAnimation(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;FJJ)V

    .line 357
    iput v9, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mCurrentMode:I

    .line 332
    return-void

    .line 338
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 350
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private goHomeMode()V
    .locals 19

    .prologue
    .line 406
    const-string/jumbo v3, "KeyguardCinematicPreview"

    const-string/jumbo v4, "goHomeMode()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const-wide/16 v4, 0x8fc

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->holdChangeMode(J)V

    .line 409
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mCallback:Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$CinematicCallback;

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$CinematicCallback;->onModeChanged(I)V

    .line 411
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mLockBackgroundView:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 412
    .local v15, "lockBackgroundAnim":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mLockCapturedView:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    .line 413
    .local v16, "lockCapturedAnimAlpha":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mLockCapturedView:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v17

    .line 414
    .local v17, "lockCapturedAnimScaleX":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mLockCapturedView:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_3

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v18

    .line 416
    .local v18, "lockCapturedAnimScaleY":Landroid/animation/ObjectAnimator;
    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    .line 417
    .local v14, "lockAnimSet":Landroid/animation/AnimatorSet;
    const/4 v3, 0x4

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v15, v3, v4

    const/4 v4, 0x1

    aput-object v16, v3, v4

    const/4 v4, 0x2

    aput-object v17, v3, v4

    .line 418
    const/4 v4, 0x3

    aput-object v18, v3, v4

    .line 417
    invoke-virtual {v14, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 419
    const-wide/16 v4, 0xc8

    invoke-virtual {v14, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 420
    new-instance v3, Lcom/samsung/android/view/animation/SineIn90;

    invoke-direct {v3}, Lcom/samsung/android/view/animation/SineIn90;-><init>()V

    invoke-virtual {v14, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 421
    invoke-virtual {v14}, Landroid/animation/AnimatorSet;->start()V

    .line 423
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mHomeBackgroundView:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_4

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 424
    .local v10, "homeBackgroundAnim":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mHomeCapturedView:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_5

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 425
    .local v11, "homeCapturedAnimAlpha":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mHomeCapturedView:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 426
    .local v12, "homeCapturedAnimScaleX":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mHomeCapturedView:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 428
    .local v13, "homeCapturedAnimScaleY":Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 429
    .local v2, "homeAnimSet":Landroid/animation/AnimatorSet;
    const/4 v3, 0x4

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v10, v3, v4

    const/4 v4, 0x1

    aput-object v11, v3, v4

    const/4 v4, 0x2

    aput-object v12, v3, v4

    .line 430
    const/4 v4, 0x3

    aput-object v13, v3, v4

    .line 429
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 431
    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 432
    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 433
    new-instance v3, Lcom/samsung/android/view/animation/SineOut90;

    invoke-direct {v3}, Lcom/samsung/android/view/animation/SineOut90;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 434
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 436
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mGalaxyView:Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mCurrentPlusValue:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mDPlus:I

    int-to-float v5, v5

    add-float/2addr v3, v5

    const/high16 v5, 0x42480000    # 50.0f

    add-float/2addr v5, v3

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x7d0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->plusAnimation(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;FJJ)V

    .line 438
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mCurrentMode:I

    .line 405
    return-void

    .line 411
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 412
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 413
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    .line 414
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    .line 423
    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 424
    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 425
    :array_6
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data

    .line 426
    :array_7
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private goLockMode()V
    .locals 13

    .prologue
    const-wide/16 v4, 0x12c

    const/4 v12, 0x2

    .line 361
    const-string/jumbo v1, "KeyguardCinematicPreview"

    const-string/jumbo v2, "goLockMode()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const-wide/16 v2, 0x8fc

    invoke-direct {p0, v2, v3}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->holdChangeMode(J)V

    .line 364
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$7;

    invoke-direct {v2, p0}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$7;-><init>(Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;)V

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 371
    iget-boolean v1, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mIsAodOptionChecked:Z

    if-eqz v1, :cond_0

    .line 372
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mAodCapturedView:Landroid/widget/ImageView;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v12, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 373
    .local v0, "aodCapturedAnimAlpha":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 374
    new-instance v1, Lcom/samsung/android/view/animation/SineIn90;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineIn90;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 375
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 390
    .end local v0    # "aodCapturedAnimAlpha":Landroid/animation/ObjectAnimator;
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mLockBackgroundView:Landroid/widget/ImageView;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v12, [F

    fill-array-data v3, :array_1

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 391
    .local v10, "lockBackgroundAnim":Landroid/animation/ObjectAnimator;
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mLockCapturedView:Landroid/widget/ImageView;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v12, [F

    fill-array-data v3, :array_2

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 393
    .local v11, "lockCapturedAnimAlpha":Landroid/animation/ObjectAnimator;
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    .line 394
    .local v9, "lockAnimSet":Landroid/animation/AnimatorSet;
    new-array v1, v12, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object v10, v1, v2

    const/4 v2, 0x1

    aput-object v11, v1, v2

    invoke-virtual {v9, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 395
    invoke-virtual {v9, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 396
    invoke-virtual {v9, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 397
    new-instance v1, Lcom/samsung/android/view/animation/SineOut90;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineOut90;-><init>()V

    invoke-virtual {v9, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 398
    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    .line 400
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mGalaxyView:Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;

    iget v1, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mCurrentPlusValue:F

    iget v3, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mDPlus:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    const/high16 v3, 0x42480000    # 50.0f

    sub-float v3, v1, v3

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x7d0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->plusAnimation(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;FJJ)V

    .line 402
    iput v12, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mCurrentMode:I

    .line 360
    return-void

    .line 377
    .end local v9    # "lockAnimSet":Landroid/animation/AnimatorSet;
    .end local v10    # "lockBackgroundAnim":Landroid/animation/ObjectAnimator;
    .end local v11    # "lockCapturedAnimAlpha":Landroid/animation/ObjectAnimator;
    :cond_0
    new-array v1, v12, [F

    fill-array-data v1, :array_3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    .line 378
    .local v8, "galaxyAnimAlpha":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$8;

    invoke-direct {v1, p0}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$8;-><init>(Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;)V

    invoke-virtual {v8, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 385
    new-instance v1, Lcom/samsung/android/view/animation/SineInOut90;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineInOut90;-><init>()V

    invoke-virtual {v8, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 386
    const-wide/16 v2, 0x3e8

    invoke-virtual {v8, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 387
    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 372
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 390
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 391
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 377
    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private goNextMode()V
    .locals 3

    .prologue
    .line 280
    const-string/jumbo v0, "KeyguardCinematicPreview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "goNextMode(): mCurrentMode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mCurrentMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-boolean v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mIsChangeHolding:Z

    if-nez v0, :cond_0

    .line 282
    iget v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mCurrentMode:I

    packed-switch v0, :pswitch_data_0

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 284
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mIsAodOptionChecked:Z

    if-eqz v0, :cond_1

    .line 285
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->goAodMode()V

    goto :goto_0

    .line 287
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->goLockMode()V

    goto :goto_0

    .line 291
    :pswitch_1
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->goLockMode()V

    goto :goto_0

    .line 294
    :pswitch_2
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->goHomeMode()V

    goto :goto_0

    .line 297
    :pswitch_3
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->goOffMode()V

    goto :goto_0

    .line 282
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private goOffMode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 304
    const-string/jumbo v1, "KeyguardCinematicPreview"

    const-string/jumbo v2, "goOffMode()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const-wide/16 v2, 0x258

    invoke-direct {p0, v2, v3}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->holdChangeMode(J)V

    .line 307
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mCallback:Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$CinematicCallback;

    invoke-interface {v1, v4}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$CinematicCallback;->onModeChanged(I)V

    .line 309
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 310
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    new-instance v1, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$5;

    invoke-direct {v1, p0}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$5;-><init>(Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 328
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 329
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 303
    return-void
.end method

.method private holdChangeMode(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mIsChangeHolding:Z

    .line 265
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$4;-><init>(Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 263
    return-void
.end method

.method private initCapturedView()V
    .locals 17

    .prologue
    .line 459
    const-string/jumbo v14, "KeyguardCinematicPreview"

    const-string/jumbo v15, "initCapturedView()"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const/4 v1, 0x0

    .line 464
    .local v1, "aodCaptureBitmap":Landroid/graphics/Bitmap;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "/storage/emulated/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 465
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    .line 464
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 465
    const-string/jumbo v15, "/Android/data/com.samsung.android.app.aodservice/cache/aod_capture.png"

    .line 464
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 466
    .local v3, "aodCapturedPath":Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 467
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 471
    .end local v1    # "aodCaptureBitmap":Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v1, :cond_0

    .line 472
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v14, 0x0

    invoke-direct {v2, v14, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 473
    .local v2, "aodCapturedDrawable":Landroid/graphics/drawable/BitmapDrawable;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mAodCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v14, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 476
    .end local v2    # "aodCapturedDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    const/4 v11, 0x0

    .line 477
    .local v11, "lockCapturedBitmap":Landroid/graphics/Bitmap;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "/storage/emulated/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 478
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    .line 477
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 478
    const-string/jumbo v15, "/Android/data/com.android.systemui/cache/lockscreen_capture_port.png"

    .line 477
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 479
    .local v13, "lockCapturedPath":Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 480
    invoke-static {v13}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 494
    .end local v11    # "lockCapturedBitmap":Landroid/graphics/Bitmap;
    :goto_1
    if-eqz v11, :cond_1

    .line 495
    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v14, 0x0

    invoke-direct {v12, v14, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 496
    .local v12, "lockCapturedDrawable":Landroid/graphics/drawable/BitmapDrawable;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mLockCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v14, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 499
    .end local v12    # "lockCapturedDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    const/4 v7, 0x0

    .line 500
    .local v7, "homeCapturedBitmap":Landroid/graphics/Bitmap;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "/storage/emulated/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 501
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    .line 500
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 501
    const-string/jumbo v15, "/Android/data/com.sec.android.app.launcher/cache/homescreenPreview.png"

    .line 500
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 502
    .local v9, "homeCapturedPath":Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 503
    invoke-static {v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 517
    .end local v7    # "homeCapturedBitmap":Landroid/graphics/Bitmap;
    :goto_2
    if-eqz v7, :cond_2

    .line 518
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v14, 0x0

    invoke-direct {v8, v14, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 519
    .local v8, "homeCapturedDrawable":Landroid/graphics/drawable/BitmapDrawable;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mHomeCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v14, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 458
    .end local v8    # "homeCapturedDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_2
    return-void

    .line 469
    .end local v9    # "homeCapturedPath":Ljava/lang/String;
    .end local v13    # "lockCapturedPath":Ljava/lang/String;
    .restart local v1    # "aodCaptureBitmap":Landroid/graphics/Bitmap;
    :cond_3
    const-string/jumbo v14, "KeyguardCinematicPreview"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "initCapturedView(): "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " isn\'t exist"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 482
    .end local v1    # "aodCaptureBitmap":Landroid/graphics/Bitmap;
    .restart local v11    # "lockCapturedBitmap":Landroid/graphics/Bitmap;
    .restart local v13    # "lockCapturedPath":Ljava/lang/String;
    :cond_4
    const-string/jumbo v14, "KeyguardCinematicPreview"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "initCapturedView(): "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " isn\'t exist"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :try_start_0
    const-string/jumbo v14, "android.resource://com.android.systemui/drawable/lockscreen_capture_dummy_port"

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 485
    .local v4, "dummyUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    .line 486
    .local v10, "inputStream":Ljava/io/InputStream;
    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 487
    .local v11, "lockCapturedBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 488
    .end local v4    # "dummyUri":Landroid/net/Uri;
    .end local v10    # "inputStream":Ljava/io/InputStream;
    .end local v11    # "lockCapturedBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v5

    .line 489
    .local v5, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 490
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v6

    .line 491
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 505
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v7    # "homeCapturedBitmap":Landroid/graphics/Bitmap;
    .restart local v9    # "homeCapturedPath":Ljava/lang/String;
    :cond_5
    const-string/jumbo v14, "KeyguardCinematicPreview"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "initCapturedView(): "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " isn\'t exist"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :try_start_1
    const-string/jumbo v14, "android.resource://com.sec.android.app.wallpaperchooser/drawable/default_home_dummy"

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 508
    .restart local v4    # "dummyUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    .line 509
    .restart local v10    # "inputStream":Ljava/io/InputStream;
    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 510
    .local v7, "homeCapturedBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_2

    .line 511
    .end local v4    # "dummyUri":Landroid/net/Uri;
    .end local v7    # "homeCapturedBitmap":Landroid/graphics/Bitmap;
    .end local v10    # "inputStream":Ljava/io/InputStream;
    :catch_2
    move-exception v5

    .line 512
    .restart local v5    # "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_2

    .line 513
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v6

    .line 514
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2
.end method

.method private plusAnimation(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;FJJ)V
    .locals 5
    .param p1, "targetView"    # Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;
    .param p2, "target"    # F
    .param p3, "delay"    # J
    .param p5, "duration"    # J

    .prologue
    .line 442
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mCurrentPlusValue:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 443
    .local v0, "plusAnim":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$9;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$9;-><init>(Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 452
    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 453
    invoke-virtual {v0, p5, p6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 454
    new-instance v1, Lcom/samsung/android/view/animation/SineOut90;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineOut90;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 455
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 441
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 206
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/16 v2, 0x63

    .line 225
    const-string/jumbo v0, "KeyguardCinematicPreview"

    const-string/jumbo v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mIsShowing:Z

    .line 228
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    .line 224
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/16 v2, 0x63

    .line 210
    const-string/jumbo v0, "KeyguardCinematicPreview"

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mIsShowing:Z

    .line 213
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 218
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    .line 209
    :cond_1
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .param p1, "e"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/high16 v5, 0x41200000    # 10.0f

    const/4 v4, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    .line 179
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    if-ne v1, v6, :cond_3

    .line 180
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mTarget:[F

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    div-float/2addr v2, v5

    aput v2, v1, v4

    .line 181
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mTarget:[F

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v6

    div-float/2addr v2, v5

    aput v2, v1, v6

    .line 182
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mTarget:[F

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v7

    div-float/2addr v2, v5

    sub-float/2addr v2, v3

    aput v2, v1, v7

    .line 184
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mTarget:[F

    aget v0, v1, v4

    .line 185
    .local v0, "value":F
    const/high16 v1, -0x41000000    # -0.5f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 186
    const/high16 v0, -0x41000000    # -0.5f

    .line 188
    :cond_0
    cmpl-float v1, v0, v3

    if-lez v1, :cond_1

    .line 189
    const/high16 v0, 0x3f000000    # 0.5f

    .line 192
    :cond_1
    iget-boolean v1, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mIsFirstSensor:Z

    if-eqz v1, :cond_2

    .line 193
    iput-boolean v4, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mIsFirstSensor:Z

    .line 194
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mGalaxyView:Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;

    add-float v2, v0, v3

    invoke-virtual {v1, v2}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->accChangeCurrent(F)V

    .line 197
    :cond_2
    iget v1, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mCurrentMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 198
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mGalaxyView:Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;

    add-float v2, v0, v3

    const v3, 0x3eb33333    # 0.35f

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->accChangeX(F)V

    .line 178
    .end local v0    # "value":F
    :cond_3
    :goto_0
    return-void

    .line 200
    .restart local v0    # "value":F
    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mGalaxyView:Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;

    add-float v2, v0, v3

    invoke-virtual {v1, v2}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->accChangeX(F)V

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 238
    const-string/jumbo v0, "KeyguardCinematicPreview"

    const-string/jumbo v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mCurrentMode:I

    .line 240
    iget v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mStartPlusValue:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mCurrentPlusValue:F

    .line 242
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mGalaxyView:Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->changePlusValue(F)V

    .line 243
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mGalaxyView:Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->changeAlpha(F)V

    .line 245
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mLockBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 246
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mHomeBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 248
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mAodCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 249
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mAodCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 250
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mAodCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 252
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mLockCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 253
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mLockCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 254
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mLockCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 256
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mHomeCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 257
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mHomeCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 258
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mHomeCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 260
    invoke-virtual {p0, v3}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->setAlpha(F)V

    .line 237
    return-void
.end method

.method public setAodOptionChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 526
    iput-boolean p1, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->mIsAodOptionChecked:Z

    .line 525
    return-void
.end method
