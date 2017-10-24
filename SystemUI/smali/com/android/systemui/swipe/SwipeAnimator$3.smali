.class Lcom/android/systemui/swipe/SwipeAnimator$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/swipe/SwipeAnimator;->showTapAffordanceAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private tapAnimationCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/swipe/SwipeAnimator;


# direct methods
.method constructor <init>(Lcom/android/systemui/swipe/SwipeAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/swipe/SwipeAnimator;

    .prologue
    .line 447
    iput-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 457
    const-string/jumbo v0, "SwipeAnimator"

    const-string/jumbo v1, "Tap Animation cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->tapAnimationCancelled:Z

    .line 456
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 12
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v11, 0x2

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 462
    iget-boolean v2, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->tapAnimationCancelled:Z

    if-eqz v2, :cond_0

    .line 463
    return-void

    .line 465
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v2}, Lcom/android/systemui/swipe/SwipeAnimator;->-get11(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v2

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v4}, Lcom/android/systemui/swipe/SwipeAnimator;->-get2(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v4

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v7}, Lcom/android/systemui/swipe/SwipeAnimator;->-get2(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 466
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v2}, Lcom/android/systemui/swipe/SwipeAnimator;->-get11(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v2

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v4}, Lcom/android/systemui/swipe/SwipeAnimator;->-get2(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v4

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v7}, Lcom/android/systemui/swipe/SwipeAnimator;->-get2(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 467
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v2}, Lcom/android/systemui/swipe/SwipeAnimator;->-get11(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v2

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v4}, Lcom/android/systemui/swipe/SwipeAnimator;->-get2(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v4

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v7}, Lcom/android/systemui/swipe/SwipeAnimator;->-get2(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 469
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v2}, Lcom/android/systemui/swipe/SwipeAnimator;->-get6(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 470
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v2}, Lcom/android/systemui/swipe/SwipeAnimator;->-get11(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v2

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v4}, Lcom/android/systemui/swipe/SwipeAnimator;->-get6(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v4

    .line 471
    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 470
    new-array v6, v11, [F

    .line 471
    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v7}, Lcom/android/systemui/swipe/SwipeAnimator;->-get6(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    .line 470
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 472
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v2}, Lcom/android/systemui/swipe/SwipeAnimator;->-get11(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v2

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v4}, Lcom/android/systemui/swipe/SwipeAnimator;->-get6(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v4

    .line 473
    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 472
    new-array v6, v11, [F

    .line 473
    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v7}, Lcom/android/systemui/swipe/SwipeAnimator;->-get6(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    .line 472
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 474
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v2}, Lcom/android/systemui/swipe/SwipeAnimator;->-get11(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v2

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v4}, Lcom/android/systemui/swipe/SwipeAnimator;->-get6(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v4

    .line 475
    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 474
    new-array v6, v11, [F

    .line 475
    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v7}, Lcom/android/systemui/swipe/SwipeAnimator;->-get6(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    .line 474
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 479
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v2}, Lcom/android/systemui/swipe/SwipeAnimator;->-get11(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v2

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v4}, Lcom/android/systemui/swipe/SwipeAnimator;->-get9(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v4

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v7}, Lcom/android/systemui/swipe/SwipeAnimator;->-get9(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 480
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v2}, Lcom/android/systemui/swipe/SwipeAnimator;->-get11(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v2

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v4}, Lcom/android/systemui/swipe/SwipeAnimator;->-get9(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v4

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v7}, Lcom/android/systemui/swipe/SwipeAnimator;->-get9(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 481
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v2}, Lcom/android/systemui/swipe/SwipeAnimator;->-get11(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v2

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v4}, Lcom/android/systemui/swipe/SwipeAnimator;->-get9(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v4

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v7}, Lcom/android/systemui/swipe/SwipeAnimator;->-get9(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 483
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_NOTIFICATION_ICONS_ONLY:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v2}, Lcom/android/systemui/swipe/SwipeAnimator;->-get5(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 484
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v2}, Lcom/android/systemui/swipe/SwipeAnimator;->-get11(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v2

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v4}, Lcom/android/systemui/swipe/SwipeAnimator;->-get5(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v4

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v7}, Lcom/android/systemui/swipe/SwipeAnimator;->-get5(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 485
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v2}, Lcom/android/systemui/swipe/SwipeAnimator;->-get11(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v2

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v4}, Lcom/android/systemui/swipe/SwipeAnimator;->-get5(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v4

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v7}, Lcom/android/systemui/swipe/SwipeAnimator;->-get5(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 486
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v2}, Lcom/android/systemui/swipe/SwipeAnimator;->-get11(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v2

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v4}, Lcom/android/systemui/swipe/SwipeAnimator;->-get5(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v4

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v7}, Lcom/android/systemui/swipe/SwipeAnimator;->-get5(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 489
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v2}, Lcom/android/systemui/swipe/SwipeAnimator;->-get1(Lcom/android/systemui/swipe/SwipeAnimator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "v$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 490
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 491
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v2}, Lcom/android/systemui/swipe/SwipeAnimator;->-get11(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v2

    new-array v3, v9, [Landroid/animation/Animator;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v11, [F

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v6

    aput v6, v5, v8

    aput v10, v5, v9

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 492
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v2}, Lcom/android/systemui/swipe/SwipeAnimator;->-get11(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v2

    new-array v3, v9, [Landroid/animation/Animator;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v11, [F

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v6

    aput v6, v5, v8

    aput v10, v5, v9

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 493
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v2}, Lcom/android/systemui/swipe/SwipeAnimator;->-get11(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v2

    new-array v3, v9, [Landroid/animation/Animator;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v11, [F

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v6

    aput v6, v5, v8

    aput v10, v5, v9

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    .line 496
    .end local v0    # "v":Landroid/view/View;
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v2}, Lcom/android/systemui/swipe/SwipeAnimator;->-get11(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 461
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 452
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->tapAnimationCancelled:Z

    .line 451
    return-void
.end method
