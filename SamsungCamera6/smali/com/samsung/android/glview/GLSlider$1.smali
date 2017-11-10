.class Lcom/samsung/android/glview/GLSlider$1;
.super Ljava/lang/Object;
.source "GLSlider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/glview/GLSlider;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/glview/GLSlider;

.field final synthetic val$nearestId:I

.field final synthetic val$posX:F

.field final synthetic val$posY:F


# direct methods
.method constructor <init>(Lcom/samsung/android/glview/GLSlider;IFF)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/glview/GLSlider$1;->this$0:Lcom/samsung/android/glview/GLSlider;

    iput p2, p0, Lcom/samsung/android/glview/GLSlider$1;->val$nearestId:I

    iput p3, p0, Lcom/samsung/android/glview/GLSlider$1;->val$posX:F

    iput p4, p0, Lcom/samsung/android/glview/GLSlider$1;->val$posY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const v8, 0x3dcccccd    # 0.1f

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider$1;->this$0:Lcom/samsung/android/glview/GLSlider;

    iget-object v1, v1, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider$1;->this$0:Lcom/samsung/android/glview/GLSlider;

    iget-object v1, v1, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    iget v3, p0, Lcom/samsung/android/glview/GLSlider$1;->val$nearestId:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider$1;->this$0:Lcom/samsung/android/glview/GLSlider;

    iget-object v1, v1, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider$1;->this$0:Lcom/samsung/android/glview/GLSlider;

    iget-object v1, v1, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    iget v3, p0, Lcom/samsung/android/glview/GLSlider$1;->val$nearestId:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v2, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider$1;->this$0:Lcom/samsung/android/glview/GLSlider;

    iget-object v1, v1, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v8

    iput v2, v1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider$1;->this$0:Lcom/samsung/android/glview/GLSlider;

    iget-object v1, v1, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    const v2, -0x42333333    # -0.1f

    invoke-virtual {v1, v2, v7}, Lcom/samsung/android/glview/GLButton;->translate(FF)V

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider$1;->this$0:Lcom/samsung/android/glview/GLSlider;

    iget-object v1, v1, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider$1;->this$0:Lcom/samsung/android/glview/GLSlider;

    iget-object v1, v1, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider$1;->this$0:Lcom/samsung/android/glview/GLSlider;

    iget v4, p0, Lcom/samsung/android/glview/GLSlider$1;->val$posX:F

    iget-object v5, p0, Lcom/samsung/android/glview/GLSlider$1;->this$0:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLSlider;->getLeft()F

    move-result v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/samsung/android/glview/GLSlider$1;->val$posY:F

    iget-object v6, p0, Lcom/samsung/android/glview/GLSlider$1;->this$0:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLSlider;->getTop()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/glview/GLSlider;->findNearestStepId(FF)I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    cmpg-float v1, v2, v1

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider$1;->this$0:Lcom/samsung/android/glview/GLSlider;

    iget-object v1, v1, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v8

    iput v2, v1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider$1;->this$0:Lcom/samsung/android/glview/GLSlider;

    iget-object v1, v1, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v8, v7}, Lcom/samsung/android/glview/GLButton;->translate(FF)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider$1;->this$0:Lcom/samsung/android/glview/GLSlider;

    iget-object v1, v1, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/glview/GLSlider$1;->this$0:Lcom/samsung/android/glview/GLSlider;

    iget v2, v2, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLSlider$1;->this$0:Lcom/samsung/android/glview/GLSlider;

    iget-object v2, v2, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->getTranslateX()F

    move-result v2

    sub-float v0, v1, v2

    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider$1;->this$0:Lcom/samsung/android/glview/GLSlider;

    iget-object v1, v1, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0, v7}, Lcom/samsung/android/glview/GLButton;->translate(FF)V

    cmpl-float v1, v0, v7

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider$1;->this$0:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLSlider;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider$1;->this$0:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLSlider;->setGaugeBarSize()V

    return-void
.end method
