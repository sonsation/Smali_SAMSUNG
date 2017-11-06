.class Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;
.super Ljava/lang/Object;
.source "BaseScrollListLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;

    .prologue
    .line 304
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;"
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private lessModule(FF)F
    .locals 3
    .param p1, "v1"    # F
    .param p2, "v2"    # F

    .prologue
    .line 352
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;"
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 353
    .local v0, "min":F
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 354
    neg-float v0, v0

    .line 356
    .end local v0    # "min":F
    :cond_0
    return v0
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;"
    const/4 v9, -0x1

    .line 308
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->unscheduleAnimation()V

    .line 310
    const/4 v2, 0x0

    .line 311
    .local v2, "kinematic":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->access$100(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    move-result-object v6

    instance-of v6, v6, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;

    if-eqz v6, :cond_0

    .line 312
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->access$100(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    move-result-object v2

    .end local v2    # "kinematic":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;
    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;

    .line 315
    .restart local v2    # "kinematic":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->access$100(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    move-result-object v6

    invoke-interface {v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;->update()Z

    move-result v5

    .line 316
    .local v5, "more":Z
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->access$100(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    move-result-object v6

    invoke-interface {v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;->getDx()F

    move-result v0

    .line 317
    .local v0, "dx":F
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->access$100(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    move-result-object v6

    invoke-interface {v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;->getDy()F

    move-result v1

    .line 318
    .local v1, "dy":F
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->getGotoIndex()I

    move-result v6

    if-eq v6, v9, :cond_1

    .line 319
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->getGotoIndex()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->getChildDelta(I)F

    move-result v4

    .line 320
    .local v4, "maxDelta":F
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_1

    .line 321
    invoke-direct {p0, v0, v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;->lessModule(FF)F

    move-result v0

    .line 322
    invoke-direct {p0, v1, v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;->lessModule(FF)F

    move-result v1

    .line 325
    .end local v4    # "maxDelta":F
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->handleScroll(FF)Z

    move-result v3

    .line 327
    .local v3, "limited":Z
    if-eqz v3, :cond_2

    .line 328
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->stopAnimation()V

    .line 330
    :cond_2
    sget-boolean v6, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->DEBUG_SCROLL:Z

    if-eqz v6, :cond_3

    .line 331
    const-string v6, "SMUSIC-BaseScrollListLayout"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mAnimationRunnable mCurAnimation: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;

    invoke-static {v8}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->access$100(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " dx: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;

    .line 332
    invoke-static {v8}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->access$100(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    move-result-object v8

    invoke-interface {v8}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;->getDx()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " dy: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;

    invoke-static {v8}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->access$100(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    move-result-object v8

    invoke-interface {v8}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;->getDy()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " more: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " limited: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 331
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_3
    if-eqz v5, :cond_4

    if-nez v3, :cond_4

    .line 336
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;

    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;

    invoke-static {v7}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->access$100(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->access$200(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;)V

    .line 342
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;

    iget-object v6, v6, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->requestRender()V

    .line 343
    return-void

    .line 338
    :cond_4
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;

    invoke-static {v6, v9}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->access$302(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;I)I

    .line 339
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->access$402(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;Z)Z

    .line 340
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->access$500(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;)V

    goto :goto_0
.end method
