.class Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView$3;
.super Ljava/lang/Object;
.source "BaseMaskImageEffectView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->startScaleAnimation(FJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;


# direct methods
.method constructor <init>(Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView$3;->this$0:Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 332
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 333
    .local v0, "temp":F
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView$3;->this$0:Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;

    iput v0, v1, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mPaddingController:F

    .line 334
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView$3;->this$0:Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;

    invoke-virtual {v1}, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->invalidate()V

    .line 336
    return-void
.end method
