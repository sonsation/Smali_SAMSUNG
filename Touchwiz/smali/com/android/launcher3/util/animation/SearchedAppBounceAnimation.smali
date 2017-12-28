.class public Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;
.super Ljava/lang/Object;
.source "SearchedAppBounceAnimation.java"


# instance fields
.field finalDeltaY:F

.field initDeltaY:F

.field mAnimator:Landroid/animation/ValueAnimator;

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;->mView:Landroid/view/View;

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;->initDeltaY:F

    .line 17
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;->finalDeltaY:F

    .line 18
    return-void
.end method


# virtual methods
.method public animate()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    .line 21
    iget-object v0, p0, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;->mView:Landroid/view/View;

    new-array v1, v2, [F

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    .line 22
    iget-object v0, p0, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 23
    iget-object v0, p0, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 24
    iget-object v0, p0, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 25
    iget-object v0, p0, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation$1;-><init>(Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 33
    iget-object v0, p0, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation$2;-><init>(Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 43
    iget-object v0, p0, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 44
    return-void

    .line 21
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 46
    const-string v0, "JYK"

    const-string v1, "SearchedAppBounceAnimation stop is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 48
    const-string v0, "JYK"

    const-string v1, "SearchedAppBounceAnimation stop "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 51
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    .line 52
    return-void
.end method
