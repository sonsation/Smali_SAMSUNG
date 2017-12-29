.class Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect$2$1;
.super Ljava/lang/Object;
.source "SolidBounceEffect.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect$2;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect$2;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect$2$1;->this$1:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 164
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 165
    .local v1, "value":F
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect$2$1;->this$1:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect$2;

    iget-object v2, v2, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect$2;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    invoke-static {v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->-get3(Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;)F

    move-result v2

    sub-float v0, v1, v2

    .line 166
    .local v0, "diff":F
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect$2$1;->this$1:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect$2;

    iget-object v2, v2, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect$2;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    invoke-static {v2, v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->-set2(Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;F)F

    .line 167
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect$2$1;->this$1:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect$2;

    iget-object v2, v2, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect$2;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    invoke-static {v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->-get6(Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;)F

    move-result v3

    add-float/2addr v3, v0

    invoke-static {v2, v3}, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->-set5(Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;F)F

    .line 168
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect$2$1;->this$1:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect$2;

    iget-object v2, v2, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect$2;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    invoke-virtual {v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->invalidate()V

    .line 163
    return-void
.end method
