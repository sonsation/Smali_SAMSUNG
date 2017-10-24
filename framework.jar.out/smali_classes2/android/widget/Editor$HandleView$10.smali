.class Landroid/widget/Editor$HandleView$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$HandleView;->getHideAnimator()Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$HandleView;


# direct methods
.method constructor <init>(Landroid/widget/Editor$HandleView;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/Editor$HandleView;

    .prologue
    .line 5403
    iput-object p1, p0, Landroid/widget/Editor$HandleView$10;->this$1:Landroid/widget/Editor$HandleView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 5418
    iget-object v0, p0, Landroid/widget/Editor$HandleView$10;->this$1:Landroid/widget/Editor$HandleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 5419
    iget-object v0, p0, Landroid/widget/Editor$HandleView$10;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0}, Landroid/widget/Editor$HandleView;->-get2(Landroid/widget/Editor$HandleView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5421
    return-void

    .line 5425
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView$10;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0, v2}, Landroid/widget/Editor$HandleView;->-set0(Landroid/widget/Editor$HandleView;Z)Z

    .line 5426
    iget-object v0, p0, Landroid/widget/Editor$HandleView$10;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$HandleView;->hide()V

    .line 5417
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 5406
    iget-object v0, p0, Landroid/widget/Editor$HandleView$10;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 5407
    iget-object v0, p0, Landroid/widget/Editor$HandleView$10;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0, v1}, Landroid/widget/Editor$HandleView;->-set0(Landroid/widget/Editor$HandleView;Z)Z

    .line 5408
    iget-object v0, p0, Landroid/widget/Editor$HandleView$10;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0}, Landroid/widget/Editor$HandleView;->-get5(Landroid/widget/Editor$HandleView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$HandleView$10;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0}, Landroid/widget/Editor$HandleView;->-get5(Landroid/widget/Editor$HandleView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5412
    iget-object v0, p0, Landroid/widget/Editor$HandleView$10;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0}, Landroid/widget/Editor$HandleView;->-get5(Landroid/widget/Editor$HandleView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    .line 5405
    :cond_0
    return-void
.end method
