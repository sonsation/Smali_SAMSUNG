.class public Lcom/altamirasoft/path_animation/PathLineAnimationView;
.super Landroid/view/View;
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

.field isReverse:Z

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

.field startDelay:J

.field width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 111
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 81
    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveLoaded:Z

    .line 84
    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveSVG:Z

    .line 87
    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveSize:Z

    .line 90
    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needStart:Z

    .line 93
    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isReverse:Z

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isFinished:Z

    .line 104
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->startDelay:J

    .line 106
    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    .line 108
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pathPaint:Landroid/graphics/Paint;

    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v2}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 116
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveLoaded:Z

    .line 84
    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveSVG:Z

    .line 87
    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveSize:Z

    .line 90
    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needStart:Z

    .line 93
    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isReverse:Z

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isFinished:Z

    .line 104
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->startDelay:J

    .line 106
    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    .line 108
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pathPaint:Landroid/graphics/Paint;

    .line 117
    invoke-direct {p0, p1, p2, v2}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 121
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveLoaded:Z

    .line 84
    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveSVG:Z

    .line 87
    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveSize:Z

    .line 90
    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needStart:Z

    .line 93
    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isReverse:Z

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isFinished:Z

    .line 104
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->startDelay:J

    .line 106
    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    .line 108
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pathPaint:Landroid/graphics/Paint;

    .line 122
    invoke-direct {p0, p1, p2, p3}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/altamirasoft/path_animation/PathLineAnimationView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/altamirasoft/path_animation/PathLineAnimationView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mReverseAnimatorListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/altamirasoft/path_animation/PathLineAnimationView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/altamirasoft/path_animation/PathLineAnimationView;

    .prologue
    .line 30
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

    .line 130
    iput-object p1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->context:Landroid/content/Context;

    .line 132
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 133
    invoke-virtual {p0, p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 137
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mReverseAnimatorListeners:Ljava/util/List;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mAnimatorListeners:Ljava/util/List;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mPaths:Ljava/util/List;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mAnimators:Ljava/util/List;

    .line 143
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern2:[F

    .line 144
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    .line 145
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paint:Landroid/graphics/Paint;

    .line 146
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 147
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 148
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 149
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 150
    return-void
.end method

.method private renderDash(Landroid/graphics/Canvas;Landroid/graphics/Path;[FF)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "path"    # Landroid/graphics/Path;
    .param p3, "pattern"    # [F
    .param p4, "phase"    # F

    .prologue
    .line 660
    new-instance v0, Landroid/graphics/DashPathEffect;

    invoke-direct {v0, p3, p4}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 661
    .local v0, "effect":Landroid/graphics/PathEffect;
    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 662
    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 663
    return-void
.end method

.method private resetAnimator()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 489
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mAnimators:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 492
    new-array v3, v5, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 493
    .local v1, "empty":Landroid/animation/ValueAnimator;
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mAnimators:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 496
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;

    .line 497
    .local v0, "aModel":Lcom/altamirasoft/path_animation/PathLineAnimatorModel;
    new-array v3, v5, [F

    fill-array-data v3, :array_1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->animator:Landroid/animation/ValueAnimator;

    .line 498
    iget-object v3, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->animator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/altamirasoft/path_animation/PathLineAnimationView$2;

    invoke-direct {v4, p0, v0}, Lcom/altamirasoft/path_animation/PathLineAnimationView$2;-><init>(Lcom/altamirasoft/path_animation/PathLineAnimationView;Lcom/altamirasoft/path_animation/PathLineAnimatorModel;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 510
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mAnimators:Ljava/util/List;

    iget-object v4, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->animator:Landroid/animation/ValueAnimator;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 512
    .end local v0    # "aModel":Lcom/altamirasoft/path_animation/PathLineAnimatorModel;
    :cond_0
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    .line 513
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mAnimators:Ljava/util/List;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 514
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->selfListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 515
    return-void

    .line 492
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 497
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private runAnimation()V
    .locals 4

    .prologue
    .line 369
    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveLoaded:Z

    if-nez v0, :cond_0

    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needStart:Z

    .line 389
    :goto_0
    return-void

    .line 375
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isFinished:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->resetProgress()V

    .line 381
    invoke-direct {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->resetAnimator()V

    .line 382
    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->invalidateAnimationListenerValue()V

    .line 383
    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->invalidateLineListenerValue()V

    .line 384
    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->resetListener()V

    .line 387
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    iget-wide v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->startDelay:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 388
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 376
    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mAnimatorListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    return-void
.end method

.method public addReverseAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mReverseAnimatorListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    return-void
.end method

.method public cancel()V
    .locals 3

    .prologue
    .line 395
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 397
    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    if-eqz v0, :cond_0

    .line 398
    const-string v0, "log"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->invalidate()V

    .line 408
    return-void

    .line 403
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public end()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 309
    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    if-eqz v0, :cond_0

    .line 313
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :cond_1
    :goto_0
    return-void

    .line 314
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public initData()V
    .locals 11

    .prologue
    .line 428
    iget v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->width:I

    if-nez v6, :cond_0

    .line 429
    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->getWidth()I

    move-result v6

    iput v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->width:I

    .line 430
    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->getHeight()I

    move-result v6

    iput v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->height:I

    .line 434
    :cond_0
    iget v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->width:I

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->height:I

    if-nez v6, :cond_2

    .line 483
    :cond_1
    :goto_0
    return-void

    .line 439
    :cond_2
    iget-boolean v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveSVG:Z

    if-eqz v6, :cond_1

    .line 443
    iget-boolean v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveLoaded:Z

    if-nez v6, :cond_1

    .line 450
    :try_start_0
    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->getPaddingLeft()I

    move-result v6

    iput v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paddingLeft:I

    .line 451
    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->getPaddingTop()I

    move-result v6

    iput v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paddingTop:I

    .line 452
    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->getPaddingRight()I

    move-result v6

    iput v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paddingRight:I

    .line 453
    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->getPaddingBottom()I

    move-result v6

    iput v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paddingBottom:I

    .line 455
    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mPaths:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 456
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

    .line 458
    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 460
    new-instance v5, Landroid/graphics/PathMeasure;

    invoke-direct {v5}, Landroid/graphics/PathMeasure;-><init>()V

    .line 461
    .local v5, "measure":Landroid/graphics/PathMeasure;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mPaths:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 462
    new-instance v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;

    invoke-direct {v0}, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;-><init>()V

    .line 463
    .local v0, "aModel":Lcom/altamirasoft/path_animation/PathLineAnimatorModel;
    iput v3, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->position:I

    .line 464
    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mPaths:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/altamirasoft/path_animation/SvgHelper$SvgPath;

    .line 465
    .local v1, "aPath":Lcom/altamirasoft/path_animation/SvgHelper$SvgPath;
    iget-object v6, v1, Lcom/altamirasoft/path_animation/SvgHelper$SvgPath;->path:Landroid/graphics/Path;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 466
    invoke-virtual {v5}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v4

    .line 467
    .local v4, "length":F
    iget-object v6, v1, Lcom/altamirasoft/path_animation/SvgHelper$SvgPath;->path:Landroid/graphics/Path;

    iput-object v6, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->path:Landroid/graphics/Path;

    .line 468
    iput v4, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->length:F

    .line 469
    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->isInitialized:Z

    .line 470
    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 473
    .end local v0    # "aModel":Lcom/altamirasoft/path_animation/PathLineAnimatorModel;
    .end local v1    # "aPath":Lcom/altamirasoft/path_animation/SvgHelper$SvgPath;
    .end local v4    # "length":F
    :cond_3
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveLoaded:Z

    .line 475
    iget-boolean v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needStart:Z

    if-eqz v6, :cond_1

    .line 476
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needStart:Z

    .line 477
    invoke-direct {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->runAnimation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 480
    .end local v3    # "i":I
    .end local v5    # "measure":Landroid/graphics/PathMeasure;
    :catch_0
    move-exception v2

    .line 481
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "log"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "e = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public invalidateAnimationListenerValue()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    const-wide/16 v6, 0x0

    .line 521
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 522
    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;

    .line 524
    .local v0, "aModel":Lcom/altamirasoft/path_animation/PathLineAnimatorModel;
    iget-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isReverse:Z

    if-eqz v2, :cond_3

    .line 525
    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->reverseAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    if-eqz v2, :cond_2

    .line 526
    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->reverseAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v2, v1}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getInterpolator(I)Landroid/animation/TimeInterpolator;

    move-result-object v2

    iput-object v2, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->interpolator:Landroid/animation/TimeInterpolator;

    .line 527
    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->reverseAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v2, v1}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getDuration(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->duration:J

    .line 528
    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->reverseAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v2, v1}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getDelay(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->delay:J

    .line 529
    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->reverseAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v2, v1}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getDirection(I)I

    move-result v2

    iput v2, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->direction:I

    .line 530
    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->reverseAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v2, v1}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getStartPoint(I)I

    move-result v2

    iput v2, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->startPoint:I

    .line 531
    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->reverseAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v2, v1}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getRepeatMode(I)I

    move-result v2

    iput v2, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->repeatMode:I

    .line 532
    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->reverseAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v2, v1}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getRepeatCount(I)I

    move-result v2

    iput v2, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->repeatCount:I

    .line 553
    :goto_1
    iget-object v2, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->animator:Landroid/animation/ValueAnimator;

    iget-wide v4, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->duration:J

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 554
    iget-object v2, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->animator:Landroid/animation/ValueAnimator;

    iget-wide v4, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->delay:J

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 558
    iget-object v2, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->interpolator:Landroid/animation/TimeInterpolator;

    if-eqz v2, :cond_0

    .line 559
    iget-object v2, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->animator:Landroid/animation/ValueAnimator;

    iget-object v3, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->interpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 561
    :cond_0
    iget v2, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->repeatMode:I

    if-eqz v2, :cond_1

    .line 562
    iget-object v2, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->animator:Landroid/animation/ValueAnimator;

    iget v3, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->repeatMode:I

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 563
    iget-object v2, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->animator:Landroid/animation/ValueAnimator;

    iget v3, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->repeatCount:I

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 521
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 534
    :cond_2
    iput-wide v8, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->duration:J

    .line 535
    iput-wide v6, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->delay:J

    goto :goto_1

    .line 538
    :cond_3
    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    if-eqz v2, :cond_4

    .line 539
    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v2, v1}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getInterpolator(I)Landroid/animation/TimeInterpolator;

    move-result-object v2

    iput-object v2, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->interpolator:Landroid/animation/TimeInterpolator;

    .line 540
    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v2, v1}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getDuration(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->duration:J

    .line 541
    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v2, v1}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getDelay(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->delay:J

    .line 542
    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v2, v1}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getDirection(I)I

    move-result v2

    iput v2, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->direction:I

    .line 543
    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v2, v1}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getStartPoint(I)I

    move-result v2

    iput v2, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->startPoint:I

    .line 544
    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v2, v1}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getRepeatMode(I)I

    move-result v2

    iput v2, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->repeatMode:I

    .line 545
    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v2, v1}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getRepeatCount(I)I

    move-result v2

    iput v2, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->repeatCount:I

    goto :goto_1

    .line 547
    :cond_4
    iput-wide v8, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->duration:J

    .line 548
    iput-wide v6, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->delay:J

    goto :goto_1

    .line 567
    .end local v0    # "aModel":Lcom/altamirasoft/path_animation/PathLineAnimatorModel;
    :cond_5
    return-void
.end method

.method public invalidateLineListenerValue()V
    .locals 3

    .prologue
    .line 572
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 573
    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;

    .line 574
    .local v0, "aModel":Lcom/altamirasoft/path_animation/PathLineAnimatorModel;
    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->listener:Lcom/altamirasoft/path_animation/PathListener;

    if-eqz v2, :cond_0

    .line 575
    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->listener:Lcom/altamirasoft/path_animation/PathListener;

    invoke-interface {v2, v1}, Lcom/altamirasoft/path_animation/PathListener;->getLineWidth(I)I

    move-result v2

    iput v2, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->lineWidth:I

    .line 576
    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->listener:Lcom/altamirasoft/path_animation/PathListener;

    invoke-interface {v2, v1}, Lcom/altamirasoft/path_animation/PathListener;->getLineColor(I)I

    move-result v2

    iput v2, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->lineColor:I

    .line 577
    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->listener:Lcom/altamirasoft/path_animation/PathListener;

    invoke-interface {v2, v1}, Lcom/altamirasoft/path_animation/PathListener;->getLineCapStyle(I)Landroid/graphics/Paint$Cap;

    move-result-object v2

    iput-object v2, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->lineCap:Landroid/graphics/Paint$Cap;

    .line 572
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 580
    .end local v0    # "aModel":Lcom/altamirasoft/path_animation/PathLineAnimatorModel;
    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 585
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 588
    iget-boolean v5, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveLoaded:Z

    if-nez v5, :cond_0

    .line 655
    :goto_0
    return-void

    .line 594
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 595
    iget v5, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paddingLeft:I

    int-to-float v5, v5

    iget v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paddingTop:I

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 599
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v5, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_5

    .line 601
    iget-object v5, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;

    .line 602
    .local v0, "aModel":Lcom/altamirasoft/path_animation/PathLineAnimatorModel;
    iget v5, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->percent:F

    cmpl-float v5, v5, v9

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->path:Landroid/graphics/Path;

    if-nez v5, :cond_2

    .line 599
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 607
    :cond_2
    iget v3, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->length:F

    .line 611
    .local v3, "length":F
    iget-object v5, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paint:Landroid/graphics/Paint;

    iget v6, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->lineColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 612
    iget-object v5, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paint:Landroid/graphics/Paint;

    iget v6, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->lineWidth:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 613
    iget-object v5, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paint:Landroid/graphics/Paint;

    iget-object v6, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->lineCap:Landroid/graphics/Paint$Cap;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 616
    iget v5, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->direction:I

    if-ne v5, v10, :cond_3

    .line 617
    iget v5, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->percent:F

    mul-float v1, v3, v5

    .line 618
    .local v1, "distance":F
    iget v5, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->startPoint:I

    int-to-float v5, v5

    add-float/2addr v5, v1

    sub-float v4, v5, v3

    .line 620
    .local v4, "movePoint":F
    iget-object v5, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    aput v9, v5, v11

    .line 621
    iget-object v5, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    iget v6, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->startPoint:I

    int-to-float v6, v6

    aput v6, v5, v10

    .line 622
    iget-object v5, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    aput v1, v5, v12

    .line 623
    iget-object v5, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    aput v3, v5, v13

    .line 625
    iget-object v5, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->path:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    invoke-direct {p0, p1, v5, v6, v9}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->renderDash(Landroid/graphics/Canvas;Landroid/graphics/Path;[FF)V

    .line 626
    cmpl-float v5, v4, v9

    if-lez v5, :cond_1

    .line 627
    iget-object v5, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern2:[F

    aput v4, v5, v11

    .line 628
    iget-object v5, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern2:[F

    aput v3, v5, v10

    .line 629
    iget-object v5, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->path:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern2:[F

    invoke-direct {p0, p1, v5, v6, v9}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->renderDash(Landroid/graphics/Canvas;Landroid/graphics/Path;[FF)V

    goto :goto_2

    .line 635
    .end local v1    # "distance":F
    .end local v4    # "movePoint":F
    :cond_3
    iget v5, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->percent:F

    mul-float v1, v3, v5

    .line 636
    .restart local v1    # "distance":F
    iget v5, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->startPoint:I

    if-lez v5, :cond_4

    .line 637
    iget-object v5, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    aput v9, v5, v11

    .line 638
    iget-object v5, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    iget v6, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->startPoint:I

    int-to-float v6, v6

    add-float/2addr v6, v3

    sub-float/2addr v6, v1

    aput v6, v5, v10

    .line 639
    iget-object v5, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    aput v1, v5, v12

    .line 640
    iget-object v5, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    aput v3, v5, v13

    .line 641
    iget-object v5, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->path:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    invoke-direct {p0, p1, v5, v6, v3}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->renderDash(Landroid/graphics/Canvas;Landroid/graphics/Path;[FF)V

    .line 645
    :cond_4
    iget v5, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->startPoint:I

    int-to-float v5, v5

    cmpl-float v5, v1, v5

    if-ltz v5, :cond_1

    .line 646
    iget-object v5, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    iget v6, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->startPoint:I

    int-to-float v6, v6

    add-float/2addr v6, v3

    aput v6, v5, v11

    .line 647
    iget-object v5, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    aput v3, v5, v10

    .line 648
    iget-object v5, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    aput v3, v5, v12

    .line 649
    iget-object v5, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    aput v3, v5, v13

    .line 650
    iget-object v5, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->path:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    const/high16 v7, 0x40a00000    # 5.0f

    mul-float/2addr v7, v3

    add-float/2addr v7, v1

    iget v8, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->startPoint:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-direct {p0, p1, v5, v6, v7}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->renderDash(Landroid/graphics/Canvas;Landroid/graphics/Path;[FF)V

    goto/16 :goto_2

    .line 654
    .end local v0    # "aModel":Lcom/altamirasoft/path_animation/PathLineAnimatorModel;
    .end local v1    # "distance":F
    .end local v3    # "length":F
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 675
    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    if-eqz v0, :cond_0

    .line 676
    const-string v0, "log"

    const-string/jumbo v1, "onRestoreInstanceState - view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 679
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 667
    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    if-eqz v0, :cond_0

    .line 668
    const-string v0, "log"

    const-string/jumbo v1, "onSaveInstanceState - view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 684
    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    if-eqz v0, :cond_0

    .line 685
    const-string v0, "log"

    const-string/jumbo v1, "onSizeChanged - view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 688
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 689
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveSize:Z

    .line 690
    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->initData()V

    .line 692
    :cond_1
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 697
    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    if-eqz v0, :cond_0

    .line 698
    const-string v0, "log"

    const-string/jumbo v1, "onViewAttachedToWindow - view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 705
    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    if-eqz v0, :cond_0

    .line 706
    const-string v0, "log"

    const-string/jumbo v1, "onViewDetachedFromWindow - view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_0
    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->cancel()V

    .line 709
    return-void
.end method

.method public pause()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 323
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 324
    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    if-eqz v0, :cond_0

    .line 325
    const-string v0, "log"

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

    .line 328
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :cond_1
    :goto_0
    return-void

    .line 329
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mAnimatorListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 236
    return-void
.end method

.method public removeReverseAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mReverseAnimatorListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 247
    return-void
.end method

.method public resetListener()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 164
    new-instance v0, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;

    invoke-direct {v0, p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;-><init>(Lcom/altamirasoft/path_animation/PathLineAnimationView;)V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->selfListener:Landroid/animation/Animator$AnimatorListener;

    .line 224
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->selfListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 225
    return-void
.end method

.method public resetProgress()V
    .locals 3

    .prologue
    .line 413
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 414
    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;

    .line 415
    .local v0, "aModel":Lcom/altamirasoft/path_animation/PathLineAnimatorModel;
    iget-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isReverse:Z

    if-nez v2, :cond_0

    .line 416
    const/4 v2, 0x0

    iput v2, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->percent:F

    .line 413
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 418
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->percent:F

    goto :goto_1

    .line 421
    .end local v0    # "aModel":Lcom/altamirasoft/path_animation/PathLineAnimatorModel;
    :cond_1
    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->invalidate()V

    .line 422
    return-void
.end method

.method public resume()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 338
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 339
    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    if-eqz v0, :cond_0

    .line 340
    const-string v0, "log"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resume-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isPaused()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->resume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :cond_1
    :goto_0
    return-void

    .line 345
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public reverse()V
    .locals 2

    .prologue
    .line 354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isReverse:Z

    .line 355
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->startDelay:J

    .line 356
    invoke-direct {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->runAnimation()V

    .line 357
    return-void
.end method

.method public reverse(J)V
    .locals 1
    .param p1, "startDelay"    # J

    .prologue
    .line 361
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isReverse:Z

    .line 362
    iput-wide p1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->startDelay:J

    .line 363
    invoke-direct {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->runAnimation()V

    .line 364
    return-void
.end method

.method public setOnPathAnimatorListener(Lcom/altamirasoft/path_animation/PathAnimatorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/altamirasoft/path_animation/PathAnimatorListener;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    .line 253
    return-void
.end method

.method public setOnPathListener(Lcom/altamirasoft/path_animation/PathListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/altamirasoft/path_animation/PathListener;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->listener:Lcom/altamirasoft/path_animation/PathListener;

    .line 264
    return-void
.end method

.method public setOnReversePathAnimatorListener(Lcom/altamirasoft/path_animation/PathAnimatorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/altamirasoft/path_animation/PathAnimatorListener;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->reverseAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    .line 258
    return-void
.end method

.method public setSVG(I)V
    .locals 2
    .param p1, "svgResource"    # I

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    if-eqz v0, :cond_0

    .line 270
    const-string v0, "log"

    const-string/jumbo v1, "setSVG"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveLoaded:Z

    .line 275
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveSVG:Z

    .line 278
    new-instance v0, Lcom/altamirasoft/path_animation/SvgHelper;

    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pathPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Lcom/altamirasoft/path_animation/SvgHelper;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mSvg:Lcom/altamirasoft/path_animation/SvgHelper;

    .line 279
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mSvg:Lcom/altamirasoft/path_animation/SvgHelper;

    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/altamirasoft/path_animation/SvgHelper;->load(Landroid/content/Context;I)V

    .line 280
    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->initData()V

    .line 281
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    if-eqz v0, :cond_0

    .line 287
    const-string v0, "log"

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

    .line 290
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isReverse:Z

    .line 291
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->startDelay:J

    .line 292
    invoke-direct {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->runAnimation()V

    .line 293
    return-void
.end method

.method public start(J)V
    .locals 3
    .param p1, "startDelay"    # J

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    if-eqz v0, :cond_0

    .line 299
    const-string v0, "log"

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

    .line 301
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isReverse:Z

    .line 302
    iput-wide p1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->startDelay:J

    .line 303
    invoke-direct {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->runAnimation()V

    .line 304
    return-void
.end method
