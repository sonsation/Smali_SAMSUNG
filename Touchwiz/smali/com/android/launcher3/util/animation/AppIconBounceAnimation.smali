.class public Lcom/android/launcher3/util/animation/AppIconBounceAnimation;
.super Ljava/lang/Object;
.source "AppIconBounceAnimation.java"


# static fields
.field private static final BOUNCE_ANIM_DOWN_DUR:I = 0xc8

.field public static final BOUNCE_ANIM_SCALE:F = 0.9f

.field private static final BOUNCE_ANIM_UP_DUR:I = 0x1f4


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mIconView:Landroid/view/View;

.field private mLastScale:F

.field private mThumbnailView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "icon"    # Landroid/view/View;

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;-><init>(Landroid/view/View;Landroid/view/View;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/view/View;F)V
    .locals 0
    .param p1, "icon"    # Landroid/view/View;
    .param p2, "initScale"    # F

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;-><init>(Landroid/view/View;)V

    .line 28
    iput p2, p0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->mLastScale:F

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "icon"    # Landroid/view/View;
    .param p2, "thumbnail"    # Landroid/view/View;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->mIconView:Landroid/view/View;

    .line 33
    iput-object p2, p0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->mThumbnailView:Landroid/view/View;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/util/animation/AppIconBounceAnimation;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->mIconView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/util/animation/AppIconBounceAnimation;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->mThumbnailView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/launcher3/util/animation/AppIconBounceAnimation;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/util/animation/AppIconBounceAnimation;
    .param p1, "x1"    # F

    .prologue
    .line 11
    iput p1, p0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->mLastScale:F

    return p1
.end method

.method static synthetic access$302(Lcom/android/launcher3/util/animation/AppIconBounceAnimation;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/util/animation/AppIconBounceAnimation;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method


# virtual methods
.method public animateDown()V
    .locals 4

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->cancel()V

    .line 39
    iget-object v0, p0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->mIconView:Landroid/view/View;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    .line 40
    iget-object v0, p0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 41
    iget-object v0, p0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    const/16 v1, 0x20

    invoke-static {v1}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 42
    iget-object v0, p0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/util/animation/AppIconBounceAnimation$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/util/animation/AppIconBounceAnimation$1;-><init>(Lcom/android/launcher3/util/animation/AppIconBounceAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 54
    iget-object v0, p0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/util/animation/AppIconBounceAnimation$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/util/animation/AppIconBounceAnimation$2;-><init>(Lcom/android/launcher3/util/animation/AppIconBounceAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 61
    iget-object v0, p0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 62
    return-void

    .line 39
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data
.end method

.method public animateUp()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 65
    invoke-virtual {p0}, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->cancel()V

    .line 67
    iget-object v0, p0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->mIconView:Landroid/view/View;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->mLastScale:F

    aput v3, v1, v2

    const/4 v2, 0x1

    aput v4, v1, v2

    invoke-static {v0, v1}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    .line 68
    iget-object v0, p0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 69
    iget-object v0, p0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/util/ElasticEaseOut;

    const v2, 0x3ecccccd    # 0.4f

    invoke-direct {v1, v4, v2}, Lcom/android/launcher3/util/ElasticEaseOut;-><init>(FF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 71
    iget-object v0, p0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/util/animation/AppIconBounceAnimation$3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/util/animation/AppIconBounceAnimation$3;-><init>(Lcom/android/launcher3/util/animation/AppIconBounceAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 83
    iget-object v0, p0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/util/animation/AppIconBounceAnimation$4;

    invoke-direct {v1, p0}, Lcom/android/launcher3/util/animation/AppIconBounceAnimation$4;-><init>(Lcom/android/launcher3/util/animation/AppIconBounceAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 111
    iget-object v0, p0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 112
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 117
    iget-object v0, p0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->mIconView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 118
    iget-object v0, p0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->mThumbnailView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->mThumbnailView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 122
    :cond_0
    return-void
.end method
