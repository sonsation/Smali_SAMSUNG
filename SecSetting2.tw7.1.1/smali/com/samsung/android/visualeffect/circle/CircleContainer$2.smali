.class Lcom/samsung/android/visualeffect/circle/CircleContainer$2;
.super Ljava/lang/Object;
.source "CircleContainer.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/visualeffect/circle/CircleContainer;->startRippleAnim(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/visualeffect/circle/CircleContainer;


# direct methods
.method constructor <init>(Lcom/samsung/android/visualeffect/circle/CircleContainer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/visualeffect/circle/CircleContainer;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer$2;->this$0:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 255
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer$2;->this$0:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    invoke-static {v0}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->-get0(Lcom/samsung/android/visualeffect/circle/CircleContainer;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 250
    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer$2;->this$0:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    iget-object v0, v0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorRipple:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer$2;->this$0:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    invoke-static {v0}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->-get2(Lcom/samsung/android/visualeffect/circle/CircleContainer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 248
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 260
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 242
    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer$2;->this$0:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    iget-object v0, v0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorRipple:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer$2;->this$0:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    iget-object v0, v0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorRipple:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 243
    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer$2;->this$0:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    iget-object v0, v0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorRipple:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 244
    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer$2;->this$0:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    iget-object v0, v0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorRipple:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 241
    return-void
.end method
