.class Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator;
.super Ljava/lang/Object;
.source "ParallaxScrollController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResizeAnimator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator$ResizeAnimatable;
    }
.end annotation


# static fields
.field private static final DURATION:I = 0x14a


# instance fields
.field private final mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final mResizeViewAnimator:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator$ResizeAnimatable;

.field private final mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator$ResizeAnimatable;)V
    .locals 4
    .param p1, "resizeViewAnimator"    # Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator$ResizeAnimatable;

    .prologue
    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 507
    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 519
    new-instance v0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator$1;-><init>(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 512
    iput-object p1, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator;->mResizeViewAnimator:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator$ResizeAnimatable;

    .line 514
    iget-object v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 515
    iget-object v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 516
    iget-object v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x14a

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 517
    return-void
.end method

.method static synthetic access$2000(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator;)Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator$ResizeAnimatable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator;

    .prologue
    .line 499
    iget-object v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator;->mResizeViewAnimator:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator$ResizeAnimatable;

    return-object v0
.end method


# virtual methods
.method addListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "l"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 535
    iget-object v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 536
    return-void
.end method

.method isAnimating()Z
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public start(II)V
    .locals 3
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 539
    invoke-static {}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator;->mResizeViewAnimator:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator$ResizeAnimatable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".start() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 543
    iget-object v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 544
    return-void
.end method
