.class Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;
.super Ljava/lang/Object;
.source "SeslItemTouchHelper.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecoverAnimation"
.end annotation


# instance fields
.field final mActionState:I

.field final mAnimationType:I

.field mEnded:Z

.field private mFraction:F

.field public mIsPendingCleanup:Z

.field mOverridden:Z

.field final mStartDx:F

.field final mStartDy:F

.field final mTargetX:F

.field final mTargetY:F

.field private final mValueAnimator:Landroid/animation/ValueAnimator;

.field final mViewHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

.field mX:F

.field mY:F

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;IIFFFF)V
    .locals 2
    .param p2, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .param p3, "animationType"    # I
    .param p4, "actionState"    # I
    .param p5, "startDx"    # F
    .param p6, "startDy"    # F
    .param p7, "targetX"    # F
    .param p8, "targetY"    # F

    .prologue
    const/4 v0, 0x0

    .line 2523
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2516
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mOverridden:Z

    .line 2518
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mEnded:Z

    .line 2524
    iput p4, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mActionState:I

    .line 2525
    iput p3, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mAnimationType:I

    .line 2526
    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 2527
    iput p5, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mStartDx:F

    .line 2528
    iput p6, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mStartDy:F

    .line 2529
    iput p7, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mTargetX:F

    .line 2530
    iput p8, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mTargetY:F

    .line 2531
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 2532
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation$1;-><init>(Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2539
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    .line 2540
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2541
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->setFraction(F)V

    .line 2542
    return-void

    .line 2531
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 2554
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2555
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2592
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->setFraction(F)V

    .line 2593
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x1

    .line 2584
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mEnded:Z

    if-nez v0, :cond_0

    .line 2585
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 2587
    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mEnded:Z

    .line 2588
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2597
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2580
    return-void
.end method

.method public setDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 2545
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2546
    return-void
.end method

.method public setFraction(F)V
    .locals 0
    .param p1, "fraction"    # F

    .prologue
    .line 2558
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mFraction:F

    .line 2559
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 2549
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 2550
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2551
    return-void
.end method

.method public update()V
    .locals 4

    .prologue
    .line 2566
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mStartDx:F

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mTargetX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2567
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mX:F

    .line 2571
    :goto_0
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mStartDy:F

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mTargetY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 2572
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mY:F

    .line 2576
    :goto_1
    return-void

    .line 2569
    :cond_0
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mStartDx:F

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mFraction:F

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mTargetX:F

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mStartDx:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mX:F

    goto :goto_0

    .line 2574
    :cond_1
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mStartDy:F

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mFraction:F

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mTargetY:F

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mStartDy:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mY:F

    goto :goto_1
.end method
