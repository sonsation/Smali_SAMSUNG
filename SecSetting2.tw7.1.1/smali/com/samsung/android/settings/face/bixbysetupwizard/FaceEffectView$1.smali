.class Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView$1;
.super Ljava/lang/Object;
.source "FaceEffectView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->setCompleteAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView$1;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 93
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView$1;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->-set0(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;F)F

    .line 94
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView$1;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;

    invoke-static {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->-get0(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;)Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCompleteView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView$1;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;

    invoke-static {v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->-get1(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCompleteView;->setRatio(F)V

    .line 92
    return-void
.end method
