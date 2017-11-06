.class Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11$2;
.super Ljava/lang/Object;
.source "SeslDefaultItemAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;

.field final synthetic val$hostView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;

    .prologue
    .line 762
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11$2;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;

    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11$2;->val$hostView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 765
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 766
    .local v0, "fraction":F
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11$2;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;)Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11$2;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->access$500(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 767
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11$2;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11$2;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->access$500(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 768
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11$2;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11$2;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11$2;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->access$700(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;)I

    move-result v3

    int-to-float v3, v3

    sub-float v4, v5, v0

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 769
    const-string v1, "SeslDefaultItemAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "animateMoveImpl : onPreDraw :collapseAnim2 : onAnimationUpdate : (int) (mTransY *(1 - fraction) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11$2;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->access$700(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;)I

    move-result v3

    int-to-float v3, v3

    sub-float v4, v5, v0

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    const-string v1, "SeslDefaultItemAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "animateMoveImpl : onPreDraw :collapseAnim2 : onAnimationUpdate : mVisibleGhostArea = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11$2;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    const-string v1, "SeslDefaultItemAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "animateMoveImpl : onPreDraw :collapseAnim2 : onAnimationUpdate : mCombinedBitmapDrawable.getBounds() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11$2;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->access$500(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11$2;->val$hostView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 774
    const-string v1, "SeslDefaultItemAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "animateMoveImpl : onPreDraw :collapseAnim2 : onAnimationUpdate : hostView = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11$2;->val$hostView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    const-string v1, "SeslDefaultItemAnimator"

    const-string v2, "animateMoveImpl : onPreDraw :collapseAnim2 : onAnimationUpdate : call hostView.invalidate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11$2;->val$hostView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11$2;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 779
    :cond_0
    return-void
.end method
