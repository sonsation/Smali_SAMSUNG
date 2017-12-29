.class public Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;
.super Ljava/lang/Object;
.source "PathLineAnimationModelFactory.java"


# instance fields
.field animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

.field defaultDelay:I

.field defaultDirection:I

.field defaultDuration:I

.field defaultInterpolator:Landroid/animation/TimeInterpolator;

.field defaultRepeatCount:I

.field defaultRepeatMode:I

.field defaultStartPoint:I

.field mDelay:[I

.field mDirection:[I

.field mDuration:[I

.field mInterpolator:[Landroid/animation/TimeInterpolator;

.field mRepeatCount:[I

.field mRepeatMode:[I

.field mStartPoint:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12c

    .line 27
    iput v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->defaultDuration:I

    .line 28
    iput v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->defaultDelay:I

    .line 29
    iput v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->defaultDirection:I

    .line 30
    iput v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->defaultStartPoint:I

    .line 31
    iput v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->defaultRepeatMode:I

    .line 32
    iput v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->defaultRepeatCount:I

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->defaultInterpolator:Landroid/animation/TimeInterpolator;

    .line 196
    new-instance v0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory$1;

    invoke-direct {v0, p0}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory$1;-><init>(Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;)V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    .line 267
    return-void
.end method

.method public static newInstance()Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    invoke-direct {v0}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getAnimatorListener()Lcom/altamirasoft/path_animation/PathAnimatorListener;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    return-object v0
.end method

.method public setDefaultInterpolator(Landroid/animation/TimeInterpolator;)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;
    .locals 1
    .param p1, "defaultInterpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    const/4 v0, 0x0

    .line 189
    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->mInterpolator:[Landroid/animation/TimeInterpolator;

    .line 190
    iput-object p1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->defaultInterpolator:Landroid/animation/TimeInterpolator;

    .line 191
    return-object p0
.end method

.method public setDelay([I)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;
    .locals 0
    .param p1, "mDelay"    # [I

    .prologue
    .line 59
    iput-object p1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->mDelay:[I

    .line 60
    return-object p0
.end method

.method public setDirection([I)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;
    .locals 0
    .param p1, "mDirection"    # [I

    .prologue
    .line 69
    iput-object p1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->mDirection:[I

    .line 70
    return-object p0
.end method

.method public setDuration([I)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;
    .locals 0
    .param p1, "mDuration"    # [I

    .prologue
    .line 50
    iput-object p1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->mDuration:[I

    .line 51
    return-object p0
.end method
