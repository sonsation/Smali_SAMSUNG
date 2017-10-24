.class Landroid/widget/Editor$HandleView$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$HandleView;->getShowAnimator()Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$HandleView;

.field final synthetic val$drawableTargetHeight:I

.field final synthetic val$drawableTargetWidth:I


# direct methods
.method constructor <init>(Landroid/widget/Editor$HandleView;II)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/Editor$HandleView;
    .param p2, "val$drawableTargetWidth"    # I
    .param p3, "val$drawableTargetHeight"    # I

    .prologue
    .line 5329
    iput-object p1, p0, Landroid/widget/Editor$HandleView$8;->this$1:Landroid/widget/Editor$HandleView;

    iput p2, p0, Landroid/widget/Editor$HandleView$8;->val$drawableTargetWidth:I

    iput p3, p0, Landroid/widget/Editor$HandleView$8;->val$drawableTargetHeight:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 5347
    iget-object v0, p0, Landroid/widget/Editor$HandleView$8;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0}, Landroid/widget/Editor$HandleView;->-get4(Landroid/widget/Editor$HandleView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5349
    return-void

    .line 5354
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView$8;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/Editor$HandleView$8;->this$1:Landroid/widget/Editor$HandleView;

    iget v2, p0, Landroid/widget/Editor$HandleView$8;->val$drawableTargetWidth:I

    iget v3, p0, Landroid/widget/Editor$HandleView$8;->val$drawableTargetHeight:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/Editor$HandleView;->getDrawableBounds(II)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 5355
    iget-object v0, p0, Landroid/widget/Editor$HandleView$8;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$HandleView;->invalidate()V

    .line 5356
    iget-object v0, p0, Landroid/widget/Editor$HandleView$8;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0, v4}, Landroid/widget/Editor$HandleView;->-set2(Landroid/widget/Editor$HandleView;Z)Z

    .line 5357
    iget-object v0, p0, Landroid/widget/Editor$HandleView$8;->this$1:Landroid/widget/Editor$HandleView;

    iget v0, v0, Landroid/widget/Editor$HandleView;->mHandleType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 5358
    iget-object v0, p0, Landroid/widget/Editor$HandleView$8;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/Editor$HandleView$8;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_2

    .line 5359
    iget-object v0, p0, Landroid/widget/Editor$HandleView$8;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$HandleView;->removeHiderCallback()V

    .line 5364
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView$8;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v0, v4, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 5346
    return-void

    .line 5361
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor$HandleView$8;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$HandleView;->hideAfterDelay()V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 5335
    iget-object v0, p0, Landroid/widget/Editor$HandleView$8;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0}, Landroid/widget/Editor$HandleView;->-get1(Landroid/widget/Editor$HandleView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$HandleView$8;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0}, Landroid/widget/Editor$HandleView;->-get1(Landroid/widget/Editor$HandleView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5337
    iget-object v0, p0, Landroid/widget/Editor$HandleView$8;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0}, Landroid/widget/Editor$HandleView;->-get1(Landroid/widget/Editor$HandleView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 5339
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView$8;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v1, p0, Landroid/widget/Editor$HandleView$8;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v1}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 5340
    iget-object v0, p0, Landroid/widget/Editor$HandleView$8;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0, v2}, Landroid/widget/Editor$HandleView;->-set2(Landroid/widget/Editor$HandleView;Z)Z

    .line 5341
    iget-object v0, p0, Landroid/widget/Editor$HandleView$8;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 5342
    iget-object v0, p0, Landroid/widget/Editor$HandleView$8;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$HandleView;->showImmediately()V

    .line 5332
    return-void
.end method
