.class Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView$8;
.super Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyAnimatorHelper$ShortAnimatorListener;
.source "BixbyUserSayingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;->stopUserSaying()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;

    .prologue
    .line 383
    iput-object p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView$8;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;

    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyAnimatorHelper$ShortAnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 386
    invoke-super {p0, p1}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyAnimatorHelper$ShortAnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 387
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView$8;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;

    invoke-static {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;->-get17(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView$8;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;

    invoke-static {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;->-get17(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 389
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView$8;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;

    invoke-static {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;->-get17(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 392
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;->-get1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "stopUserSaying sequence done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView$8;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;->-set1(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;Z)Z

    .line 394
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView$8;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;->invalidate()V

    .line 385
    return-void
.end method
