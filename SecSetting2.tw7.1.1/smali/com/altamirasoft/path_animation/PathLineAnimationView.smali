.class public Lcom/altamirasoft/path_animation/PathLineAnimationView;
.super Landroid/widget/ImageView;
.source "PathLineAnimationView.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

.field context:Landroid/content/Context;

.field private dataArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/altamirasoft/path_animation/PathLineAnimatorModel;",
            ">;"
        }
    .end annotation
.end field

.field haveLoaded:Z

.field haveSVG:Z

.field haveSize:Z

.field height:I

.field isFinished:Z

.field isFinishedSingleAnimation:Z

.field isReverse:Z

.field isSingleAnimation:Z

.field listener:Lcom/altamirasoft/path_animation/PathListener;

.field private mAnimatorListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/altamirasoft/path_animation/SvgHelper$SvgPath;",
            ">;"
        }
    .end annotation
.end field

.field private mReverseAnimatorListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSvg:Lcom/altamirasoft/path_animation/SvgHelper;

.field public needDebug:Z

.field needStart:Z

.field paddingBottom:I

.field paddingLeft:I

.field paddingRight:I

.field paddingTop:I

.field paint:Landroid/graphics/Paint;

.field pathPaint:Landroid/graphics/Paint;

.field pattern2:[F

.field pattern4:[F

.field reverseAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

.field selfListener:Landroid/animation/Animator$AnimatorListener;

.field private set:Landroid/animation/AnimatorSet;

.field simplePaint:Landroid/graphics/Paint;

.field startDelay:J

.field width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 114
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 84
    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveLoaded:Z

    .line 87
    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveSVG:Z

    .line 90
    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveSize:Z

    .line 93
    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needStart:Z

    .line 96
    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isReverse:Z

    .line 99
    iput-boolean v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isFinished:Z

    const-wide/16 v0, 0x0

    .line 107
    iput-wide v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->startDelay:J

    .line 109
    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    .line 111
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pathPaint:Landroid/graphics/Paint;

    .line 609
    iput-boolean v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isSingleAnimation:Z

    .line 610
    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isFinishedSingleAnimation:Z

    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, p1, v0, v2}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 119
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveLoaded:Z

    .line 87
    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveSVG:Z

    .line 90
    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveSize:Z

    .line 93
    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needStart:Z

    .line 96
    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isReverse:Z

    .line 99
    iput-boolean v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isFinished:Z

    const-wide/16 v0, 0x0

    .line 107
    iput-wide v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->startDelay:J

    .line 109
    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    .line 111
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pathPaint:Landroid/graphics/Paint;

    .line 609
    iput-boolean v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isSingleAnimation:Z

    .line 610
    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isFinishedSingleAnimation:Z

    .line 120
    invoke-direct {p0, p1, p2, v2}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 124
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveLoaded:Z

    .line 87
    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveSVG:Z

    .line 90
    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveSize:Z

    .line 93
    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needStart:Z

    .line 96
    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isReverse:Z

    .line 99
    iput-boolean v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isFinished:Z

    const-wide/16 v0, 0x0

    .line 107
    iput-wide v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->startDelay:J

    .line 109
    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    .line 111
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pathPaint:Landroid/graphics/Paint;

    .line 609
    iput-boolean v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isSingleAnimation:Z

    .line 610
    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isFinishedSingleAnimation:Z

    .line 125
    invoke-direct {p0, p1, p2, p3}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/altamirasoft/path_animation/PathLineAnimationView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/altamirasoft/path_animation/PathLineAnimationView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mReverseAnimatorListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/altamirasoft/path_animation/PathLineAnimationView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/altamirasoft/path_animation/PathLineAnimationView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mAnimatorListeners:Ljava/util/List;

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x1

    .line 133
    iput-object p1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->context:Landroid/content/Context;

    .line 135
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    :goto_0
    const/4 v0, 0x0

    .line 139
    invoke-virtual {p0, v2, v0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isReverse:Z

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mReverseAnimatorListeners:Ljava/util/List;

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mAnimatorListeners:Ljava/util/List;

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mPaths:Ljava/util/List;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mAnimators:Ljava/util/List;

    const/4 v0, 0x2

    .line 153
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern2:[F

    const/4 v0, 0x4

    .line 154
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    .line 155
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paint:Landroid/graphics/Paint;

    .line 157
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 158
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 159
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 161
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->simplePaint:Landroid/graphics/Paint;

    .line 162
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->simplePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 163
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->simplePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 164
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->simplePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 168
    return-void

    .line 136
    :cond_0
    invoke-virtual {p0, p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_0
.end method

.method private renderDash(Landroid/graphics/Canvas;Landroid/graphics/Path;[FF)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "path"    # Landroid/graphics/Path;
    .param p3, "pattern"    # [F
    .param p4, "phase"    # F

    .prologue
    .line 715
    new-instance v0, Landroid/graphics/DashPathEffect;

    invoke-direct {v0, p3, p4}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 716
    .local v0, "effect":Landroid/graphics/PathEffect;
    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 717
    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 718
    return-void
.end method

.method private resetAnimator()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 513
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mAnimators:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v3, 0x2

    .line 516
    new-array v3, v3, [F

    aput v7, v3, v6

    aput v8, v3, v9

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 517
    .local v1, "empty":Landroid/animation/ValueAnimator;
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mAnimators:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 519
    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 583
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    .line 584
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mAnimators:Ljava/util/List;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 585
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->selfListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 586
    return-void

    .line 520
    :cond_0
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;

    .local v0, "aModel":Lcom/altamirasoft/path_animation/PathLineAnimatorModel;
    const/4 v3, 0x2

    .line 521
    new-array v3, v3, [F

    aput v7, v3, v6

    aput v8, v3, v9

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->animator:Landroid/animation/ValueAnimator;

    .line 522
    iget-object v3, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->animator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/altamirasoft/path_animation/PathLineAnimationView$2;

    invoke-direct {v4, p0, v0}, Lcom/altamirasoft/path_animation/PathLineAnimationView$2;-><init>(Lcom/altamirasoft/path_animation/PathLineAnimationView;Lcom/altamirasoft/path_animation/PathLineAnimatorModel;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 536
    iget-boolean v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isReverse:Z

    if-nez v3, :cond_1

    .line 550
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    if-nez v3, :cond_3

    const-wide/16 v4, 0x3e8

    .line 559
    iput-wide v4, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->duration:J

    const-wide/16 v4, 0x0

    .line 560
    iput-wide v4, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->delay:J

    .line 567
    :goto_1
    iget-object v3, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->animator:Landroid/animation/ValueAnimator;

    iget-wide v4, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->duration:J

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 568
    iget-object v3, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->animator:Landroid/animation/ValueAnimator;

    iget-wide v4, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->delay:J

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 571
    iget-object v3, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->interpolator:Landroid/animation/TimeInterpolator;

    if-nez v3, :cond_4

    .line 574
    :goto_2
    iget v3, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->repeatMode:I

    if-nez v3, :cond_5

    .line 580
    :goto_3
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mAnimators:Ljava/util/List;

    iget-object v4, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->animator:Landroid/animation/ValueAnimator;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 537
    :cond_1
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->reverseAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    if-nez v3, :cond_2

    const-wide/16 v4, 0x3e8

    .line 546
    iput-wide v4, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->duration:J

    const-wide/16 v4, 0x0

    .line 547
    iput-wide v4, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->delay:J

    goto :goto_1

    .line 538
    :cond_2
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->reverseAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v3, v2}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getInterpolator(I)Landroid/animation/TimeInterpolator;

    move-result-object v3

    iput-object v3, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->interpolator:Landroid/animation/TimeInterpolator;

    .line 539
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->reverseAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v3, v2}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getDuration(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->duration:J

    .line 540
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->reverseAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v3, v2}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getDelay(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->delay:J

    .line 541
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->reverseAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v3, v2}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getDirection(I)I

    move-result v3

    iput v3, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->direction:I

    .line 542
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->reverseAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v3, v2}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getStartPoint(I)I

    move-result v3

    iput v3, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->startPoint:I

    .line 543
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->reverseAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v3, v2}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getRepeatMode(I)I

    move-result v3

    iput v3, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->repeatMode:I

    .line 544
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->reverseAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v3, v2}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getRepeatCount(I)I

    move-result v3

    iput v3, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->repeatCount:I

    goto :goto_1

    .line 551
    :cond_3
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v3, v2}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getInterpolator(I)Landroid/animation/TimeInterpolator;

    move-result-object v3

    iput-object v3, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->interpolator:Landroid/animation/TimeInterpolator;

    .line 552
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v3, v2}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getDuration(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->duration:J

    .line 553
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v3, v2}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getDelay(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->delay:J

    .line 554
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v3, v2}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getDirection(I)I

    move-result v3

    iput v3, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->direction:I

    .line 555
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v3, v2}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getStartPoint(I)I

    move-result v3

    iput v3, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->startPoint:I

    .line 556
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v3, v2}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getRepeatMode(I)I

    move-result v3

    iput v3, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->repeatMode:I

    .line 557
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v3, v2}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getRepeatCount(I)I

    move-result v3

    iput v3, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->repeatCount:I

    goto/16 :goto_1

    .line 572
    :cond_4
    iget-object v3, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->animator:Landroid/animation/ValueAnimator;

    iget-object v4, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->interpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/16 :goto_2

    .line 575
    :cond_5
    iget-object v3, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->animator:Landroid/animation/ValueAnimator;

    iget v4, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->repeatMode:I

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 576
    iget-object v3, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->animator:Landroid/animation/ValueAnimator;

    iget v4, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->repeatCount:I

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    goto/16 :goto_3
.end method

.method private runAnimation()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 389
    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveLoaded:Z

    if-eqz v0, :cond_0

    .line 395
    :try_start_0
    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isFinished:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    .line 401
    :goto_0
    iput-boolean v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isFinishedSingleAnimation:Z

    .line 403
    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->resetProgress()V

    .line 404
    invoke-direct {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->resetAnimator()V

    .line 406
    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->invalidateLineListenerValue()V

    .line 407
    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->resetListener()V

    .line 411
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    iget-wide v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->startDelay:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 412
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 413
    return-void

    .line 390
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needStart:Z

    .line 391
    return-void

    .line 395
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 398
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mAnimatorListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    return-void
.end method

.method public addReverseAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mReverseAnimatorListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    return-void
.end method

.method public cancel()V
    .locals 3

    .prologue
    .line 419
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 431
    :goto_0
    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->invalidate()V

    .line 432
    return-void

    .line 421
    :cond_0
    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    if-nez v0, :cond_1

    .line 425
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 429
    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "log"

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cancel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public initData()V
    .locals 11

    .prologue
    .line 452
    iget v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->width:I

    if-eqz v6, :cond_1

    .line 458
    :goto_0
    iget v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->width:I

    if-nez v6, :cond_2

    .line 459
    :cond_0
    return-void

    .line 453
    :cond_1
    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->getWidth()I

    move-result v6

    iput v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->width:I

    .line 454
    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->getHeight()I

    move-result v6

    iput v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->height:I

    goto :goto_0

    .line 458
    :cond_2
    iget v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->height:I

    if-eqz v6, :cond_0

    .line 463
    iget-boolean v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveSVG:Z

    if-eqz v6, :cond_3

    .line 467
    iget-boolean v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveLoaded:Z

    if-nez v6, :cond_4

    .line 474
    :try_start_0
    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->getPaddingLeft()I

    move-result v6

    iput v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paddingLeft:I

    .line 475
    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->getPaddingTop()I

    move-result v6

    iput v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paddingTop:I

    .line 476
    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->getPaddingRight()I

    move-result v6

    iput v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paddingRight:I

    .line 477
    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->getPaddingBottom()I

    move-result v6

    iput v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paddingBottom:I

    .line 479
    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mPaths:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 480
    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mPaths:Ljava/util/List;

    iget-object v7, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mSvg:Lcom/altamirasoft/path_animation/SvgHelper;

    iget v8, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->width:I

    iget v9, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paddingLeft:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paddingRight:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->height:I

    iget v10, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paddingBottom:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paddingTop:I

    sub-int/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/altamirasoft/path_animation/SvgHelper;->getPathsForViewport(II)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 482
    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 484
    new-instance v5, Landroid/graphics/PathMeasure;

    invoke-direct {v5}, Landroid/graphics/PathMeasure;-><init>()V

    .local v5, "measure":Landroid/graphics/PathMeasure;
    const/4 v3, 0x0

    .line 485
    .local v3, "i":I
    :goto_1
    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mPaths:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v3, v6, :cond_5

    .line 497
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveLoaded:Z

    .line 499
    iget-boolean v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needStart:Z

    if-nez v6, :cond_6

    .line 507
    .end local v3    # "i":I
    .end local v5    # "measure":Landroid/graphics/PathMeasure;
    :goto_2
    return-void

    .line 464
    :cond_3
    return-void

    .line 468
    :cond_4
    return-void

    .line 486
    .restart local v3    # "i":I
    .restart local v5    # "measure":Landroid/graphics/PathMeasure;
    :cond_5
    new-instance v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;

    invoke-direct {v0}, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;-><init>()V

    .line 487
    .local v0, "aModel":Lcom/altamirasoft/path_animation/PathLineAnimatorModel;
    iput v3, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->position:I

    .line 488
    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mPaths:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/altamirasoft/path_animation/SvgHelper$SvgPath;

    .line 489
    .local v1, "aPath":Lcom/altamirasoft/path_animation/SvgHelper$SvgPath;
    iget-object v6, v1, Lcom/altamirasoft/path_animation/SvgHelper$SvgPath;->path:Landroid/graphics/Path;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 490
    invoke-virtual {v5}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v4

    .line 491
    .local v4, "length":F
    iget-object v6, v1, Lcom/altamirasoft/path_animation/SvgHelper$SvgPath;->path:Landroid/graphics/Path;

    iput-object v6, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->path:Landroid/graphics/Path;

    .line 492
    iput v4, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->length:F

    .line 493
    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->isInitialized:Z

    .line 494
    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 500
    .end local v0    # "aModel":Lcom/altamirasoft/path_animation/PathLineAnimatorModel;
    .end local v1    # "aPath":Lcom/altamirasoft/path_animation/SvgHelper$SvgPath;
    .end local v4    # "length":F
    :cond_6
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needStart:Z

    .line 501
    invoke-direct {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->runAnimation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 506
    .end local v3    # "i":I
    .end local v5    # "measure":Landroid/graphics/PathMeasure;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "log"

    .line 505
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "e = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public invalidateLineListenerValue()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 592
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 600
    return-void

    .line 593
    :cond_0
    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;

    .line 594
    .local v0, "aModel":Lcom/altamirasoft/path_animation/PathLineAnimatorModel;
    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->listener:Lcom/altamirasoft/path_animation/PathListener;

    if-nez v2, :cond_1

    .line 592
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 595
    :cond_1
    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->listener:Lcom/altamirasoft/path_animation/PathListener;

    invoke-interface {v2, v1}, Lcom/altamirasoft/path_animation/PathListener;->getLineWidth(I)I

    move-result v2

    iput v2, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->lineWidth:I

    .line 596
    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->listener:Lcom/altamirasoft/path_animation/PathListener;

    invoke-interface {v2, v1}, Lcom/altamirasoft/path_animation/PathListener;->getLineColor(I)I

    move-result v2

    iput v2, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->lineColor:I

    .line 597
    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->listener:Lcom/altamirasoft/path_animation/PathListener;

    invoke-interface {v2, v1}, Lcom/altamirasoft/path_animation/PathListener;->getLineCapStyle(I)Landroid/graphics/Paint$Cap;

    move-result-object v2

    iput-object v2, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->lineCap:Landroid/graphics/Paint$Cap;

    goto :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 616
    iget-boolean v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveLoaded:Z

    if-eqz v6, :cond_0

    .line 622
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 623
    .local v1, "count":I
    iget v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paddingLeft:I

    int-to-float v6, v6

    iget v7, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paddingTop:I

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v3, 0x0

    .line 627
    .local v3, "i":I
    :goto_0
    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v3, v6, :cond_1

    .line 708
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 710
    return-void

    .line 617
    .end local v1    # "count":I
    .end local v3    # "i":I
    :cond_0
    return-void

    .line 629
    .restart local v1    # "count":I
    .restart local v3    # "i":I
    :cond_1
    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;

    .line 632
    .local v0, "aModel":Lcom/altamirasoft/path_animation/PathLineAnimatorModel;
    iget-boolean v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isSingleAnimation:Z

    if-nez v6, :cond_4

    .line 648
    :cond_2
    iget v6, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->percent:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->path:Landroid/graphics/Path;

    if-eqz v6, :cond_3

    .line 653
    iget v4, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->length:F

    .line 657
    .local v4, "length":F
    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paint:Landroid/graphics/Paint;

    iget v7, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->lineColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 658
    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paint:Landroid/graphics/Paint;

    iget v7, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->lineWidth:I

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 659
    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paint:Landroid/graphics/Paint;

    iget-object v7, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->lineCap:Landroid/graphics/Paint$Cap;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 669
    iget v6, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->direction:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_5

    .line 688
    iget v6, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->percent:F

    mul-float v2, v4, v6

    .line 689
    .local v2, "distance":F
    iget v6, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->startPoint:I

    if-gtz v6, :cond_6

    .line 698
    :goto_1
    iget v6, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->startPoint:I

    int-to-float v6, v6

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_3

    .line 699
    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    const/4 v7, 0x0

    iget v8, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->startPoint:I

    int-to-float v8, v8

    add-float/2addr v8, v4

    aput v8, v6, v7

    .line 700
    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    const/4 v7, 0x1

    aput v4, v6, v7

    .line 701
    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    const/4 v7, 0x2

    aput v4, v6, v7

    .line 702
    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    const/4 v7, 0x3

    aput v4, v6, v7

    .line 703
    iget-object v6, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->path:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    const/high16 v8, 0x40a00000    # 5.0f

    mul-float/2addr v8, v4

    add-float/2addr v8, v2

    iget v9, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->startPoint:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-direct {p0, p1, v6, v7, v8}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->renderDash(Landroid/graphics/Canvas;Landroid/graphics/Path;[FF)V

    .line 627
    .end local v2    # "distance":F
    .end local v4    # "length":F
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 632
    :cond_4
    iget-boolean v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isFinishedSingleAnimation:Z

    if-eqz v6, :cond_2

    .line 633
    iget-boolean v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isReverse:Z

    if-nez v6, :cond_3

    .line 637
    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->simplePaint:Landroid/graphics/Paint;

    iget v7, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->lineColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 638
    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->simplePaint:Landroid/graphics/Paint;

    iget v7, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->lineWidth:I

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 639
    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->simplePaint:Landroid/graphics/Paint;

    iget-object v7, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->lineCap:Landroid/graphics/Paint$Cap;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 640
    iget-object v6, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->path:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->simplePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 670
    .restart local v4    # "length":F
    :cond_5
    iget v6, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->percent:F

    mul-float v2, v4, v6

    .line 671
    .restart local v2    # "distance":F
    iget v6, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->startPoint:I

    int-to-float v6, v6

    add-float/2addr v6, v2

    sub-float v5, v6, v4

    .line 673
    .local v5, "movePoint":F
    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    .line 674
    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    const/4 v7, 0x1

    iget v8, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->startPoint:I

    int-to-float v8, v8

    aput v8, v6, v7

    .line 675
    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    const/4 v7, 0x2

    aput v2, v6, v7

    .line 676
    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    const/4 v7, 0x3

    aput v4, v6, v7

    .line 678
    iget-object v6, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->path:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    const/4 v8, 0x0

    invoke-direct {p0, p1, v6, v7, v8}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->renderDash(Landroid/graphics/Canvas;Landroid/graphics/Path;[FF)V

    const/4 v6, 0x0

    .line 679
    cmpl-float v6, v5, v6

    if-lez v6, :cond_3

    .line 680
    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern2:[F

    const/4 v7, 0x0

    aput v5, v6, v7

    .line 681
    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern2:[F

    const/4 v7, 0x1

    aput v4, v6, v7

    .line 682
    iget-object v6, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->path:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern2:[F

    const/4 v8, 0x0

    invoke-direct {p0, p1, v6, v7, v8}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->renderDash(Landroid/graphics/Canvas;Landroid/graphics/Path;[FF)V

    goto :goto_2

    .line 690
    .end local v5    # "movePoint":F
    :cond_6
    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    .line 691
    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    const/4 v7, 0x1

    iget v8, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->startPoint:I

    int-to-float v8, v8

    add-float/2addr v8, v4

    sub-float/2addr v8, v2

    aput v8, v6, v7

    .line 692
    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    const/4 v7, 0x2

    aput v2, v6, v7

    .line 693
    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    const/4 v7, 0x3

    aput v4, v6, v7

    .line 694
    iget-object v6, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->path:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    invoke-direct {p0, p1, v6, v7, v4}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->renderDash(Landroid/graphics/Canvas;Landroid/graphics/Path;[FF)V

    goto/16 :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 730
    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    if-nez v0, :cond_0

    .line 733
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 734
    return-void

    :cond_0
    const-string/jumbo v0, "log"

    const-string/jumbo v1, "onRestoreInstanceState - view"

    .line 731
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 722
    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    if-nez v0, :cond_0

    .line 725
    :goto_0
    invoke-super {p0}, Landroid/widget/ImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "log"

    const-string/jumbo v1, "onSaveInstanceState - view"

    .line 723
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 739
    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    if-nez v0, :cond_1

    .line 742
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 743
    if-nez p1, :cond_2

    .line 747
    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string/jumbo v0, "log"

    const-string/jumbo v1, "onSizeChanged - view"

    .line 740
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 743
    :cond_2
    if-eqz p2, :cond_0

    .line 744
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveSize:Z

    .line 745
    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->initData()V

    goto :goto_1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 752
    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    if-nez v0, :cond_0

    .line 756
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "log"

    const-string/jumbo v1, "onViewAttachedToWindow - view"

    .line 753
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 760
    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    if-nez v0, :cond_0

    .line 763
    :goto_0
    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->cancel()V

    .line 764
    return-void

    :cond_0
    const-string/jumbo v0, "log"

    const-string/jumbo v1, "onViewDetachedFromWindow - view"

    .line 761
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public pause()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 343
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 353
    :goto_0
    return-void

    .line 344
    :cond_0
    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    if-nez v0, :cond_1

    .line 348
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 351
    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "log"

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pause-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public resetListener()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 182
    new-instance v0, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;

    invoke-direct {v0, p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;-><init>(Lcom/altamirasoft/path_animation/PathLineAnimationView;)V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->selfListener:Landroid/animation/Animator$AnimatorListener;

    .line 244
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->selfListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 245
    return-void
.end method

.method public resetProgress()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 437
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 445
    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->invalidate()V

    .line 446
    return-void

    .line 438
    :cond_0
    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;

    .line 439
    .local v0, "aModel":Lcom/altamirasoft/path_animation/PathLineAnimatorModel;
    iget-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isReverse:Z

    if-eqz v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 442
    iput v2, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->percent:F

    .line 437
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 440
    iput v2, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->percent:F

    goto :goto_1
.end method

.method public reverse(J)V
    .locals 1
    .param p1, "startDelay"    # J

    .prologue
    .line 381
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isReverse:Z

    .line 382
    iput-wide p1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->startDelay:J

    .line 383
    invoke-direct {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->runAnimation()V

    .line 384
    return-void
.end method

.method public setOnPathAnimatorListener(Lcom/altamirasoft/path_animation/PathAnimatorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/altamirasoft/path_animation/PathAnimatorListener;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    .line 273
    return-void
.end method

.method public setOnPathListener(Lcom/altamirasoft/path_animation/PathListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/altamirasoft/path_animation/PathListener;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->listener:Lcom/altamirasoft/path_animation/PathListener;

    .line 284
    return-void
.end method

.method public setOnReversePathAnimatorListener(Lcom/altamirasoft/path_animation/PathAnimatorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/altamirasoft/path_animation/PathAnimatorListener;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->reverseAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    .line 278
    return-void
.end method

.method public setSVG(I)V
    .locals 3
    .param p1, "svgResource"    # I

    .prologue
    const/4 v2, 0x0

    .line 289
    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    if-nez v0, :cond_0

    .line 294
    :goto_0
    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveLoaded:Z

    .line 295
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveSVG:Z

    .line 298
    new-instance v0, Lcom/altamirasoft/path_animation/SvgHelper;

    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pathPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Lcom/altamirasoft/path_animation/SvgHelper;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mSvg:Lcom/altamirasoft/path_animation/SvgHelper;

    .line 299
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mSvg:Lcom/altamirasoft/path_animation/SvgHelper;

    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/altamirasoft/path_animation/SvgHelper;->load(Landroid/content/Context;I)V

    .line 300
    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->initData()V

    .line 301
    return-void

    :cond_0
    const-string/jumbo v0, "log"

    const-string/jumbo v1, "setSVG"

    .line 290
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 306
    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    if-nez v0, :cond_0

    .line 310
    :goto_0
    iput-boolean v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isReverse:Z

    const-wide/16 v0, 0x0

    .line 311
    iput-wide v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->startDelay:J

    .line 312
    invoke-direct {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->runAnimation()V

    .line 313
    return-void

    :cond_0
    const-string/jumbo v0, "log"

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveLoaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public start(J)V
    .locals 5
    .param p1, "startDelay"    # J

    .prologue
    const/4 v3, 0x0

    .line 318
    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    if-nez v0, :cond_0

    .line 321
    :goto_0
    iput-boolean v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isReverse:Z

    .line 322
    iput-wide p1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->startDelay:J

    .line 323
    invoke-direct {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->runAnimation()V

    .line 324
    return-void

    :cond_0
    const-string/jumbo v0, "log"

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start delay-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveLoaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
