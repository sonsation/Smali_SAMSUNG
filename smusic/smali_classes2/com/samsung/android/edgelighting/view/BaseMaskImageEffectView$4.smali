.class Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView$4;
.super Ljava/lang/Object;
.source "BaseMaskImageEffectView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->stopScaleAnimation(J)V
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
    .line 351
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView$4;->this$0:Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView$4;->this$0:Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;

    iget-object v0, v0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView$4;->this$0:Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;

    iget-object v0, v0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView$4;->this$0:Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mPaddingController:F

    .line 358
    return-void
.end method
