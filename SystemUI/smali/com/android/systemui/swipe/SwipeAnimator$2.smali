.class Lcom/android/systemui/swipe/SwipeAnimator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/swipe/SwipeAnimator;->setFullScreenMode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isAnimationCanceled:Z

.field final synthetic this$0:Lcom/android/systemui/swipe/SwipeAnimator;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/swipe/SwipeAnimator;Z)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/swipe/SwipeAnimator;
    .param p2, "val$enabled"    # Z

    .prologue
    .line 381
    iput-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator$2;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    iput-boolean p2, p0, Lcom/android/systemui/swipe/SwipeAnimator$2;->val$enabled:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 382
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator$2;->isAnimationCanceled:Z

    .line 381
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 402
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator$2;->isAnimationCanceled:Z

    .line 401
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 386
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$2;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v1}, Lcom/android/systemui/swipe/SwipeAnimator;->-get4(Lcom/android/systemui/swipe/SwipeAnimator;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 387
    .local v0, "alpha":F
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$2;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v1}, Lcom/android/systemui/swipe/SwipeAnimator;->-get0(Lcom/android/systemui/swipe/SwipeAnimator;)Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;->getBarStatus()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 388
    const/high16 v0, 0x3f800000    # 1.0f

    .line 390
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$2;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v1}, Lcom/android/systemui/swipe/SwipeAnimator;->-get8(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 392
    iget-boolean v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$2;->val$enabled:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$2;->isAnimationCanceled:Z

    if-eqz v1, :cond_3

    .line 385
    :cond_1
    :goto_1
    return-void

    .line 386
    .end local v0    # "alpha":F
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    .restart local v0    # "alpha":F
    goto :goto_0

    .line 393
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$2;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v1, v2}, Lcom/android/systemui/swipe/SwipeAnimator;->-set0(Lcom/android/systemui/swipe/SwipeAnimator;Z)Z

    .line 395
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$2;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v1}, Lcom/android/systemui/swipe/SwipeAnimator;->-get3(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "com.android.systemui"

    .line 396
    const-string/jumbo v3, "LWFV"

    .line 395
    invoke-static {v1, v2, v3, v4, v4}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1
.end method
