.class Lcom/android/launcher3/common/view/DragLayer$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/view/DragLayer;->animateView(Lcom/android/launcher3/common/drag/DragView;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/view/DragLayer;

.field final synthetic val$animationEndStyle:I

.field final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/view/DragLayer;Ljava/lang/Runnable;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/view/DragLayer;

    .prologue
    .line 773
    iput-object p1, p0, Lcom/android/launcher3/common/view/DragLayer$4;->this$0:Lcom/android/launcher3/common/view/DragLayer;

    iput-object p2, p0, Lcom/android/launcher3/common/view/DragLayer$4;->val$onCompleteRunnable:Ljava/lang/Runnable;

    iput p3, p0, Lcom/android/launcher3/common/view/DragLayer$4;->val$animationEndStyle:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 793
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer$4;->val$onCompleteRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer$4;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 797
    :cond_0
    iget v0, p0, Lcom/android/launcher3/common/view/DragLayer$4;->val$animationEndStyle:I

    packed-switch v0, :pswitch_data_0

    .line 804
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer$4;->this$0:Lcom/android/launcher3/common/view/DragLayer;

    invoke-static {v0}, Lcom/android/launcher3/common/view/DragLayer;->access$400(Lcom/android/launcher3/common/view/DragLayer;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 805
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer$4;->this$0:Lcom/android/launcher3/common/view/DragLayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/common/view/DragLayer;->access$402(Lcom/android/launcher3/common/view/DragLayer;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 806
    return-void

    .line 799
    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer$4;->this$0:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/common/view/DragLayer;->clearAnimatedView()V

    goto :goto_0

    .line 797
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 776
    iget-object v2, p0, Lcom/android/launcher3/common/view/DragLayer$4;->this$0:Lcom/android/launcher3/common/view/DragLayer;

    invoke-static {v2}, Lcom/android/launcher3/common/view/DragLayer;->access$000(Lcom/android/launcher3/common/view/DragLayer;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 777
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 778
    .local v0, "anchorViewRect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/launcher3/common/view/DragLayer$4;->this$0:Lcom/android/launcher3/common/view/DragLayer;

    iget-object v3, p0, Lcom/android/launcher3/common/view/DragLayer$4;->this$0:Lcom/android/launcher3/common/view/DragLayer;

    invoke-static {v3}, Lcom/android/launcher3/common/view/DragLayer;->access$000(Lcom/android/launcher3/common/view/DragLayer;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v1

    .line 779
    .local v1, "scale":F
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    .line 781
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 782
    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 783
    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 784
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 786
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/common/view/DragLayer$4;->this$0:Lcom/android/launcher3/common/view/DragLayer;

    invoke-static {v2, v0}, Lcom/android/launcher3/common/view/DragLayer;->access$102(Lcom/android/launcher3/common/view/DragLayer;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 787
    iget-object v2, p0, Lcom/android/launcher3/common/view/DragLayer$4;->this$0:Lcom/android/launcher3/common/view/DragLayer;

    iget-object v3, p0, Lcom/android/launcher3/common/view/DragLayer$4;->this$0:Lcom/android/launcher3/common/view/DragLayer;

    invoke-static {v3}, Lcom/android/launcher3/common/view/DragLayer;->access$000(Lcom/android/launcher3/common/view/DragLayer;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/launcher3/common/view/DragLayer;->access$202(Lcom/android/launcher3/common/view/DragLayer;I)I

    .line 789
    .end local v0    # "anchorViewRect":Landroid/graphics/Rect;
    .end local v1    # "scale":F
    :cond_1
    return-void
.end method
