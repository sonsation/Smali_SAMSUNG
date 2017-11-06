.class public final Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
.super Ljava/lang/Object;
.source "SeslViewPropertyAnimatorCompat.java"


# instance fields
.field private mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    .line 32
    return-void
.end method


# virtual methods
.method public alpha(F)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 64
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 67
    :cond_0
    return-object p0
.end method

.method public alphaBy(F)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 81
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->alphaBy(F)Landroid/view/ViewPropertyAnimator;

    .line 84
    :cond_0
    return-object p0
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 421
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 424
    :cond_0
    return-void
.end method

.method public getDuration()J
    .locals 4

    .prologue
    .line 168
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->getDuration()J

    move-result-wide v2

    .line 171
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 2

    .prologue
    .line 202
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    check-cast v1, Landroid/view/animation/Interpolator;

    .line 205
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getStartDelay()J
    .locals 4

    .prologue
    .line 239
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->getStartDelay()J

    move-result-wide v2

    .line 242
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public rotation(F)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 257
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    .line 260
    :cond_0
    return-object p0
.end method

.method public rotationBy(F)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 274
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->rotationBy(F)Landroid/view/ViewPropertyAnimator;

    .line 277
    :cond_0
    return-object p0
.end method

.method public rotationX(F)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 291
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->rotationX(F)Landroid/view/ViewPropertyAnimator;

    .line 294
    :cond_0
    return-object p0
.end method

.method public rotationXBy(F)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 308
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->rotationXBy(F)Landroid/view/ViewPropertyAnimator;

    .line 311
    :cond_0
    return-object p0
.end method

.method public rotationY(F)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 325
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->rotationY(F)Landroid/view/ViewPropertyAnimator;

    .line 328
    :cond_0
    return-object p0
.end method

.method public rotationYBy(F)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 342
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->rotationYBy(F)Landroid/view/ViewPropertyAnimator;

    .line 345
    :cond_0
    return-object p0
.end method

.method public scaleX(F)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 359
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 362
    :cond_0
    return-object p0
.end method

.method public scaleXBy(F)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 376
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->scaleXBy(F)Landroid/view/ViewPropertyAnimator;

    .line 379
    :cond_0
    return-object p0
.end method

.method public scaleY(F)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 393
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 396
    :cond_0
    return-object p0
.end method

.method public scaleYBy(F)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 410
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->scaleYBy(F)Landroid/view/ViewPropertyAnimator;

    .line 413
    :cond_0
    return-object p0
.end method

.method public setDuration(J)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 47
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 50
    :cond_0
    return-object p0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 187
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 190
    :cond_0
    return-object p0
.end method

.method public setListener(Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;

    .prologue
    .line 687
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 688
    if-eqz p1, :cond_1

    .line 689
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat$1;-><init>(Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 709
    :cond_0
    :goto_0
    return-object p0

    .line 706
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method public setStartDelay(J)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 221
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 224
    :cond_0
    return-object p0
.end method

.method public setUpdateListener(Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorUpdateListener;)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorUpdateListener;

    .prologue
    .line 725
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 726
    const/4 v1, 0x0

    .line 727
    .local v1, "wrapped":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    if-eqz p1, :cond_0

    .line 728
    new-instance v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat$2;

    .end local v1    # "wrapped":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    invoke-direct {v1, p0, p1, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat$2;-><init>(Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorUpdateListener;Landroid/view/View;)V

    .line 735
    .restart local v1    # "wrapped":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    .line 737
    .end local v1    # "wrapped":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    :cond_1
    return-object p0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 607
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 608
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 610
    :cond_0
    return-void
.end method

.method public translationX(F)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 98
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 101
    :cond_0
    return-object p0
.end method

.method public translationXBy(F)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 505
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 506
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    .line 508
    :cond_0
    return-object p0
.end method

.method public translationY(F)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 115
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 118
    :cond_0
    return-object p0
.end method

.method public translationYBy(F)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 522
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 523
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    .line 525
    :cond_0
    return-object p0
.end method

.method public translationZ(F)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 556
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 557
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    .line 559
    :cond_0
    return-object p0
.end method

.method public translationZBy(F)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 539
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 540
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->translationZBy(F)Landroid/view/ViewPropertyAnimator;

    .line 542
    :cond_0
    return-object p0
.end method

.method public withEndAction(Ljava/lang/Runnable;)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 150
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 153
    :cond_0
    return-object p0
.end method

.method public withLayer()Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    .locals 2

    .prologue
    .line 644
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 645
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 647
    :cond_0
    return-object p0
.end method

.method public withStartAction(Ljava/lang/Runnable;)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 669
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 670
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 672
    :cond_0
    return-object p0
.end method

.method public x(F)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 437
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    .line 440
    :cond_0
    return-object p0
.end method

.method public xBy(F)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 454
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->xBy(F)Landroid/view/ViewPropertyAnimator;

    .line 457
    :cond_0
    return-object p0
.end method

.method public y(F)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 471
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    .line 474
    :cond_0
    return-object p0
.end method

.method public yBy(F)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 488
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 489
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->yBy(F)Landroid/view/ViewPropertyAnimator;

    .line 491
    :cond_0
    return-object p0
.end method

.method public z(F)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 573
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 574
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->z(F)Landroid/view/ViewPropertyAnimator;

    .line 576
    :cond_0
    return-object p0
.end method

.method public zBy(F)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 590
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 591
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->zBy(F)Landroid/view/ViewPropertyAnimator;

    .line 593
    :cond_0
    return-object p0
.end method
