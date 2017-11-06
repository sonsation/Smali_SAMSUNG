.class Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView$1;
.super Ljava/lang/Object;
.source "BaseMaskImageEffectView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->showPadding(J)V
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
    .line 194
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView$1;->this$0:Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 197
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView$1;->this$0:Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mStrokeWidth:F

    .line 198
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView$1;->this$0:Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->invalidate()V

    .line 199
    return-void
.end method
