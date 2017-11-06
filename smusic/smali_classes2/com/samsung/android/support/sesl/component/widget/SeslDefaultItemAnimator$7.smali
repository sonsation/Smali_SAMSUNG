.class Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$7;
.super Ljava/lang/Object;
.source "SeslDefaultItemAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->animateExpandImpl(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

.field final synthetic val$hostView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    .prologue
    .line 487
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$7;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$7;->val$hostView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 490
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$7;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$7;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->access$100(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;)I

    move-result v2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 491
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$7;->val$hostView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 492
    const-string v0, "SeslDefaultItemAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expandAnim : onAnimationUpdate : hostView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$7;->val$hostView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const-string v0, "SeslDefaultItemAnimator"

    const-string v1, "expandAnim : onAnimationUpdate : call hostView.invalidate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$7;->val$hostView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$7;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 496
    :cond_0
    return-void
.end method
