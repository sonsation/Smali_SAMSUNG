.class Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView$2$1;
.super Ljava/lang/Object;
.source "WaveAnimationView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView$2;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView$2;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView$2$1;->this$1:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 144
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 145
    .local v1, "value":F
    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView$2$1;->this$1:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView$2;

    iget-object v2, v2, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView$2;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;

    invoke-static {v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->-get3(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;)F

    move-result v2

    sub-float v0, v1, v2

    .line 146
    .local v0, "diff":F
    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView$2$1;->this$1:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView$2;

    iget-object v2, v2, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView$2;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;

    invoke-static {v2, v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->-set2(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;F)F

    .line 147
    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView$2$1;->this$1:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView$2;

    iget-object v2, v2, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView$2;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;

    invoke-static {v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->-get6(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;)F

    move-result v3

    add-float/2addr v3, v0

    invoke-static {v2, v3}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->-set5(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;F)F

    .line 148
    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView$2$1;->this$1:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView$2;

    iget-object v2, v2, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView$2;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;

    invoke-virtual {v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->invalidate()V

    .line 143
    return-void
.end method
