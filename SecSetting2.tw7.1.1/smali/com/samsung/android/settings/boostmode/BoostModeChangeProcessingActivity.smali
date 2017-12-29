.class public Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;
.super Landroid/app/Activity;
.source "BoostModeChangeProcessingActivity.java"

# interfaces
.implements Lcom/samsung/android/visualeffect/circle/CircleContainer$CircleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$1;,
        Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;,
        Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;,
        Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimatedDoneV:Lcom/samsung/android/visualeffect/check/DoneView;

.field private mBoostMode:I

.field private mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

.field private mCircleTextContainer:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDescContainer:Landroid/view/View;

.field private mDoCheckingAnimation:Z

.field private mExtendedTimeTv:Landroid/widget/TextView;

.field private mFirstContainer:Landroid/widget/RelativeLayout;

.field mListView:Landroid/widget/ListView;

.field private mPerfmodeAnimIconIv:Lcom/altamirasoft/path_animation/PathLineAnimationView;

.field private mPerformanceIconContainer:Landroid/widget/FrameLayout;

.field private mPrevBoostMode:I

.field private mProcessingDescTv:Landroid/widget/TextView;

.field private mSavingAdapter:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)Lcom/samsung/android/visualeffect/check/DoneView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mAnimatedDoneV:Lcom/samsung/android/visualeffect/check/DoneView;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mSavingAdapter:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mBoostMode:I

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)Lcom/samsung/android/visualeffect/circle/CircleContainer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mDescContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)Lcom/altamirasoft/path_animation/PathLineAnimationView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mPerfmodeAnimIconIv:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mPerformanceIconContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mPrevBoostMode:I

    return v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mProcessingDescTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mDoCheckingAnimation:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->startFinishAnimation()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->TAG:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mContext:Landroid/content/Context;

    .line 75
    iput-boolean v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mDoCheckingAnimation:Z

    .line 77
    iput v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mBoostMode:I

    .line 78
    iput v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mPrevBoostMode:I

    .line 82
    new-instance v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$1;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mUiHandler:Landroid/os/Handler;

    .line 45
    return-void
.end method

.method private buildDataFromIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 186
    if-nez p1, :cond_0

    return-void

    .line 188
    :cond_0
    const-string/jumbo v0, "key_next_boost_mode"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mBoostMode:I

    .line 189
    const-string/jumbo v0, "key_prev_boost_mode"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mPrevBoostMode:I

    .line 190
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mExtendedTimeTv:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    iget v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mBoostMode:I

    packed-switch v0, :pswitch_data_0

    .line 204
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mSavingAdapter:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->buildAllItems(Landroid/content/Intent;)V

    .line 185
    return-void

    .line 193
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mProcessingDescTv:Landroid/widget/TextView;

    new-array v1, v2, [Ljava/lang/Object;

    .line 194
    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mPrevBoostMode:I

    invoke-static {v2, v3}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getPerfModeTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 193
    const v2, 0x7f0b0cc8

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 199
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mProcessingDescTv:Landroid/widget/TextView;

    new-array v1, v2, [Ljava/lang/Object;

    .line 200
    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mBoostMode:I

    invoke-static {v2, v3}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getPerfModeTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 199
    const v2, 0x7f0b0cca

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private setAndShowLoadingPathAnimation()V
    .locals 9

    .prologue
    const/16 v8, 0x1f4

    const/4 v4, 0x6

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 501
    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mPerfmodeAnimIconIv:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    iget v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mBoostMode:I

    invoke-static {v2}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getModeImageFgId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setSVG(I)V

    .line 502
    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mPerfmodeAnimIconIv:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-virtual {v1, v5}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setVisibility(I)V

    .line 505
    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 504
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v6, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v0, v1

    .line 506
    .local v0, "dpForPath":I
    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mPerfmodeAnimIconIv:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    .line 508
    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mBoostMode:I

    if-eqz v1, :cond_1

    .line 509
    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f0d01bb

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 511
    :goto_0
    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 506
    invoke-static {v0, v1, v3}, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->newInstance(IILandroid/graphics/Paint$Cap;)Lcom/altamirasoft/path_animation/PaintLineModelFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->getListener()Lcom/altamirasoft/path_animation/PathListener;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setOnPathListener(Lcom/altamirasoft/path_animation/PathListener;)V

    .line 513
    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mBoostMode:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mBoostMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 514
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mPerfmodeAnimIconIv:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-static {}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->newInstance()Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    .line 515
    new-array v3, v6, [I

    aput v8, v3, v5

    .line 514
    invoke-virtual {v2, v3}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDuration([I)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    .line 516
    filled-new-array {v6, v7}, [I

    move-result-object v3

    .line 514
    invoke-virtual {v2, v3}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDirection([I)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    .line 517
    new-instance v3, Lcom/samsung/android/settings/widget/SineInOut33;

    invoke-direct {v3}, Lcom/samsung/android/settings/widget/SineInOut33;-><init>()V

    .line 514
    invoke-virtual {v2, v3}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDefaultInterpolator(Landroid/animation/TimeInterpolator;)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    .line 518
    new-array v3, v6, [I

    aput v5, v3, v5

    .line 514
    invoke-virtual {v2, v3}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDelay([I)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->getAnimatorListener()Lcom/altamirasoft/path_animation/PathAnimatorListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setOnPathAnimatorListener(Lcom/altamirasoft/path_animation/PathAnimatorListener;)V

    .line 520
    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mPerfmodeAnimIconIv:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-static {}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->newInstance()Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    .line 521
    new-array v3, v6, [I

    aput v8, v3, v5

    .line 520
    invoke-virtual {v2, v3}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDuration([I)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    .line 522
    filled-new-array {v6, v7}, [I

    move-result-object v3

    .line 520
    invoke-virtual {v2, v3}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDirection([I)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    .line 523
    new-array v3, v6, [I

    aput v5, v3, v5

    .line 520
    invoke-virtual {v2, v3}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDelay([I)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    .line 524
    new-instance v3, Lcom/samsung/android/settings/widget/SineInOut33;

    invoke-direct {v3}, Lcom/samsung/android/settings/widget/SineInOut33;-><init>()V

    .line 520
    invoke-virtual {v2, v3}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDefaultInterpolator(Landroid/animation/TimeInterpolator;)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->getAnimatorListener()Lcom/altamirasoft/path_animation/PathAnimatorListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setOnReversePathAnimatorListener(Lcom/altamirasoft/path_animation/PathAnimatorListener;)V

    .line 554
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mPerfmodeAnimIconIv:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    new-instance v2, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$4;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)V

    invoke-virtual {v1, v2}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 576
    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mPerfmodeAnimIconIv:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    new-instance v2, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$5;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)V

    invoke-virtual {v1, v2}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->addReverseAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 500
    return-void

    .line 510
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f0d01bc

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    goto/16 :goto_0

    .line 526
    :cond_2
    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mBoostMode:I

    if-ne v1, v6, :cond_3

    .line 527
    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mPerfmodeAnimIconIv:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-static {}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->newInstance()Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    .line 528
    new-array v3, v4, [I

    fill-array-data v3, :array_0

    .line 527
    invoke-virtual {v2, v3}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDuration([I)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    .line 529
    new-array v3, v4, [I

    fill-array-data v3, :array_1

    .line 527
    invoke-virtual {v2, v3}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDirection([I)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    .line 530
    new-array v3, v4, [I

    fill-array-data v3, :array_2

    .line 527
    invoke-virtual {v2, v3}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDelay([I)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    .line 531
    new-instance v3, Lcom/samsung/android/settings/widget/SineInOut33;

    invoke-direct {v3}, Lcom/samsung/android/settings/widget/SineInOut33;-><init>()V

    .line 527
    invoke-virtual {v2, v3}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDefaultInterpolator(Landroid/animation/TimeInterpolator;)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->getAnimatorListener()Lcom/altamirasoft/path_animation/PathAnimatorListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setOnPathAnimatorListener(Lcom/altamirasoft/path_animation/PathAnimatorListener;)V

    .line 533
    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mPerfmodeAnimIconIv:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-static {}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->newInstance()Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    .line 534
    new-array v3, v4, [I

    fill-array-data v3, :array_3

    .line 533
    invoke-virtual {v2, v3}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDuration([I)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    .line 535
    new-array v3, v4, [I

    fill-array-data v3, :array_4

    .line 533
    invoke-virtual {v2, v3}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDirection([I)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    .line 536
    new-array v3, v4, [I

    fill-array-data v3, :array_5

    .line 533
    invoke-virtual {v2, v3}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDelay([I)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    .line 537
    new-instance v3, Lcom/samsung/android/settings/widget/SineInOut33;

    invoke-direct {v3}, Lcom/samsung/android/settings/widget/SineInOut33;-><init>()V

    .line 533
    invoke-virtual {v2, v3}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDefaultInterpolator(Landroid/animation/TimeInterpolator;)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->getAnimatorListener()Lcom/altamirasoft/path_animation/PathAnimatorListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setOnReversePathAnimatorListener(Lcom/altamirasoft/path_animation/PathAnimatorListener;)V

    goto/16 :goto_1

    .line 540
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mPerfmodeAnimIconIv:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-static {}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->newInstance()Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    .line 541
    const/16 v3, 0xa7

    const/16 v4, 0xa7

    filled-new-array {v8, v8, v3, v4}, [I

    move-result-object v3

    .line 540
    invoke-virtual {v2, v3}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDuration([I)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    .line 542
    filled-new-array {v7, v6, v6, v7}, [I

    move-result-object v3

    .line 540
    invoke-virtual {v2, v3}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDirection([I)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    .line 543
    const/16 v3, 0x85

    const/16 v4, 0x85

    filled-new-array {v5, v5, v3, v4}, [I

    move-result-object v3

    .line 540
    invoke-virtual {v2, v3}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDelay([I)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    .line 544
    new-instance v3, Lcom/samsung/android/settings/widget/SineInOut33;

    invoke-direct {v3}, Lcom/samsung/android/settings/widget/SineInOut33;-><init>()V

    .line 540
    invoke-virtual {v2, v3}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDefaultInterpolator(Landroid/animation/TimeInterpolator;)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->getAnimatorListener()Lcom/altamirasoft/path_animation/PathAnimatorListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setOnPathAnimatorListener(Lcom/altamirasoft/path_animation/PathAnimatorListener;)V

    .line 546
    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mPerfmodeAnimIconIv:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-static {}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->newInstance()Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    .line 547
    const/16 v3, 0xb7

    const/16 v4, 0xb7

    filled-new-array {v8, v8, v3, v4}, [I

    move-result-object v3

    .line 546
    invoke-virtual {v2, v3}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDuration([I)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    .line 548
    filled-new-array {v7, v6, v6, v7}, [I

    move-result-object v3

    .line 546
    invoke-virtual {v2, v3}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDirection([I)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    .line 549
    const/16 v3, 0xc8

    const/16 v4, 0xc8

    filled-new-array {v5, v5, v3, v4}, [I

    move-result-object v3

    .line 546
    invoke-virtual {v2, v3}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDelay([I)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    .line 550
    new-instance v3, Lcom/samsung/android/settings/widget/SineInOut33;

    invoke-direct {v3}, Lcom/samsung/android/settings/widget/SineInOut33;-><init>()V

    .line 546
    invoke-virtual {v2, v3}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDefaultInterpolator(Landroid/animation/TimeInterpolator;)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->getAnimatorListener()Lcom/altamirasoft/path_animation/PathAnimatorListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setOnReversePathAnimatorListener(Lcom/altamirasoft/path_animation/PathAnimatorListener;)V

    goto/16 :goto_1

    .line 528
    :array_0
    .array-data 4
        0x1f4
        0x1f4
        0xa7
        0xa7
        0xa7
        0xa7
    .end array-data

    .line 529
    :array_1
    .array-data 4
        -0x1
        0x1
        -0x1
        0x1
        -0x1
        0x1
    .end array-data

    .line 530
    :array_2
    .array-data 4
        0x0
        0x0
        0x85
        0x85
        0x85
        0x85
    .end array-data

    .line 534
    :array_3
    .array-data 4
        0x1f4
        0x1f4
        0xb7
        0xb7
        0xb7
        0xb7
    .end array-data

    .line 535
    :array_4
    .array-data 4
        -0x1
        0x1
        -0x1
        0x1
        -0x1
        0x1
    .end array-data

    .line 536
    :array_5
    .array-data 4
        0x0
        0x0
        0xc8
        0xc8
        0xc8
        0xc8
    .end array-data
.end method

.method private startFinishAnimation()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 208
    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mFirstContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->setElevation(F)V

    .line 209
    const v4, 0x7f0a00ef

    invoke-static {p0, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getFloatFromDimension(Landroid/content/Context;I)F

    move-result v0

    .line 210
    .local v0, "bounceUpTo":F
    new-instance v1, Lcom/samsung/android/visualeffect/circle/BounceAnimation;

    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    invoke-direct {v1, v4, v6, v0, v6}, Lcom/samsung/android/visualeffect/circle/BounceAnimation;-><init>(Landroid/view/View;FFF)V

    .line 211
    .local v1, "circleBounce":Lcom/samsung/android/visualeffect/circle/BounceAnimation;
    new-instance v4, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$2;

    invoke-direct {v4, p0, v1}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$2;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;Lcom/samsung/android/visualeffect/circle/BounceAnimation;)V

    invoke-virtual {v1, v4}, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->setBounceListener(Lcom/samsung/android/visualeffect/circle/BounceAnimationListener;)V

    .line 253
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 254
    .local v2, "fadeout":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->getBounceUpDuration()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 255
    new-instance v4, Lcom/samsung/android/settings/widget/SineInOut90;

    invoke-direct {v4}, Lcom/samsung/android/settings/widget/SineInOut90;-><init>()V

    invoke-virtual {v2, v4}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 256
    invoke-virtual {v2, v8}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 258
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 259
    .local v3, "fadeoutWithListener":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->getBounceUpDuration()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 260
    new-instance v4, Lcom/samsung/android/settings/widget/SineInOut90;

    invoke-direct {v4}, Lcom/samsung/android/settings/widget/SineInOut90;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 261
    invoke-virtual {v3, v8}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 262
    new-instance v4, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$3;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$3;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 280
    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->startAnimation()V

    .line 281
    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mCircleTextContainer:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 283
    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mDescContainer:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 207
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x8

    const/4 v4, 0x0

    .line 121
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    iput-object p0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mContext:Landroid/content/Context;

    .line 124
    const v0, 0x7f0401f9

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->setContentView(I)V

    .line 126
    const v0, 0x7f11062f

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mPerformanceIconContainer:Landroid/widget/FrameLayout;

    .line 127
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mPerformanceIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 128
    const v0, 0x7f110630

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/altamirasoft/path_animation/PathLineAnimationView;

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mPerfmodeAnimIconIv:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    .line 129
    const v0, 0x7f11055d

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 130
    const v0, 0x7f11055e

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 132
    const v0, 0x7f110558

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mFirstContainer:Landroid/widget/RelativeLayout;

    .line 133
    const v0, 0x7f11003e

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/visualeffect/circle/CircleContainer;

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    .line 134
    const v0, 0x7f11003f

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mCircleTextContainer:Landroid/view/View;

    .line 136
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a05c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 137
    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a05c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 136
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setCircle(II)V

    .line 138
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    invoke-virtual {v0, p0}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setCircleListener(Lcom/samsung/android/visualeffect/circle/CircleContainer$CircleListener;)V

    .line 140
    const v0, 0x7f11062e

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/visualeffect/check/DoneView;

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mAnimatedDoneV:Lcom/samsung/android/visualeffect/check/DoneView;

    .line 142
    const v0, 0x7f110631

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mDescContainer:Landroid/view/View;

    .line 143
    const v0, 0x7f110632

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mProcessingDescTv:Landroid/widget/TextView;

    .line 144
    const v0, 0x7f110633

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mExtendedTimeTv:Landroid/widget/TextView;

    .line 146
    const v0, 0x7f110634

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mListView:Landroid/widget/ListView;

    .line 147
    new-instance v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mSavingAdapter:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;

    .line 148
    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->buildDataFromIntent(Landroid/content/Intent;)V

    .line 149
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mSavingAdapter:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 150
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 152
    invoke-direct {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->setAndShowLoadingPathAnimation()V

    .line 120
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 170
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->removeCircleListener()V

    .line 172
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setVisibility(I)V

    .line 173
    iput-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mPerfmodeAnimIconIv:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-virtual {v0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pause()V

    .line 176
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 169
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 492
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 493
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 494
    return v1

    .line 497
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->finish()V

    .line 165
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 163
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 157
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 159
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0x138c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 156
    return-void
.end method

.method public onRoundEnd()V
    .locals 2

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mDoCheckingAnimation:Z

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0x1389

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 180
    :cond_0
    return-void
.end method
