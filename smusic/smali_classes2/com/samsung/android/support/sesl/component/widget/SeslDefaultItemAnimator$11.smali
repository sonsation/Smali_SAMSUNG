.class Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;
.super Ljava/lang/Object;
.source "SeslDefaultItemAnimator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->animateMoveImpl(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;IIIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

.field final synthetic val$deltaY:I

.field final synthetic val$oldBoundTop:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;Landroid/view/View;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    .prologue
    .line 692
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->val$oldBoundTop:I

    iput p4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->val$deltaY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 695
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->getHostView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 696
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->getHostView()Landroid/view/View;

    move-result-object v3

    .line 697
    .local v3, "hostView":Landroid/view/View;
    const/4 v5, 0x0

    .line 698
    .local v5, "oldBounds":Landroid/graphics/Rect;
    const/4 v4, 0x0

    .line 700
    .local v4, "newBounds":Landroid/graphics/Rect;
    const-string v9, "SeslDefaultItemAnimator"

    const-string v10, "animateMoveImpl : onPreDraw : create bitmap translationY animation"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    const-string v9, "SeslDefaultItemAnimator"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "animateMoveImpl : onPreDraw : view.getLeft() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->val$view:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", view.getTop() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->val$view:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", view.getRight() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->val$view:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", view.getBottom() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->val$view:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    invoke-static {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->access$500(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 704
    new-instance v5, Landroid/graphics/Rect;

    .end local v5    # "oldBounds":Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->val$view:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->val$oldBoundTop:I

    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->val$view:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v11

    iget v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->val$oldBoundTop:I

    iget-object v13, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    invoke-static {v13}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->access$500(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v13

    add-int/2addr v12, v13

    invoke-direct {v5, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 705
    .restart local v5    # "oldBounds":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    .end local v4    # "newBounds":Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->val$view:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->val$view:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->val$view:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v11

    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->val$view:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v12

    iget-object v13, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    invoke-static {v13}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->access$500(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v13

    add-int/2addr v12, v13

    invoke-direct {v4, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 706
    .restart local v4    # "newBounds":Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    invoke-static {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->access$500(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 708
    const-string v9, "SeslDefaultItemAnimator"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "animateMoveImpl : onPreDraw : oldBounds = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    const-string v9, "SeslDefaultItemAnimator"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "animateMoveImpl : onPreDraw : newBounds = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    const-string v9, "SeslDefaultItemAnimator"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "animateMoveImpl : onPreDraw : deltaY = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->val$deltaY:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    const-string v9, "SeslDefaultItemAnimator"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "animateMoveImpl : onPreDraw : newBounds.bottom - oldBounds.bottom = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v4, Landroid/graphics/Rect;->bottom:I

    iget v12, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    const-string v9, "SeslDefaultItemAnimator"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "animateMoveImpl : onPreDraw : mCombinedBitmapDrawable = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    invoke-static {v11}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->access$500(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    invoke-static {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->access$500(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v9

    const-string v10, "bounds"

    sget-object v11, Lcom/samsung/android/support/sesl/component/animation/SeslAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    new-array v12, v14, [Ljava/lang/Object;

    aput-object v5, v12, v7

    aput-object v4, v12, v8

    invoke-static {v9, v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 720
    .local v0, "animBounds":Landroid/animation/ObjectAnimator;
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->getExpandCollapseDuration()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 722
    new-instance v8, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11$1;

    invoke-direct {v8, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11$1;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;)V

    invoke-virtual {v0, v8}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 755
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 756
    .local v1, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    invoke-static {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 760
    new-array v8, v14, [F

    fill-array-data v8, :array_0

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 761
    .local v2, "collapseAnim2":Landroid/animation/ValueAnimator;
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->getExpandCollapseDuration()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 762
    new-instance v8, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11$2;

    invoke-direct {v8, p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11$2;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;Landroid/view/View;)V

    invoke-virtual {v2, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 781
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 784
    .local v6, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 785
    new-instance v8, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11$3;

    invoke-direct {v8, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11$3;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;)V

    invoke-virtual {v6, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 807
    const-string v8, "SeslDefaultItemAnimator"

    const-string v9, "animateMoveImpl : onPreDraw : set.start()"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    .line 810
    .end local v0    # "animBounds":Landroid/animation/ObjectAnimator;
    .end local v1    # "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v2    # "collapseAnim2":Landroid/animation/ValueAnimator;
    .end local v6    # "set":Landroid/animation/AnimatorSet;
    :goto_0
    return v7

    .line 714
    :cond_0
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->access$400(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;)V

    move v7, v8

    .line 715
    goto :goto_0

    .line 760
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
