.class Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView$8;
.super Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper$ShortAnimatorListener;
.source "BixbyUserSayingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->stopUserSaying()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView$8;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper$ShortAnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 392
    invoke-super {p0, p1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper$ShortAnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 393
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView$8;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;

    invoke-static {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->-get17(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView$8;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;

    invoke-static {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->-get17(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 395
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView$8;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;

    invoke-static {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->-get17(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 398
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->-get1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "stopUserSaying sequence done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView$8;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->-set1(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;Z)Z

    .line 400
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView$8;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->invalidate()V

    .line 391
    return-void
.end method
