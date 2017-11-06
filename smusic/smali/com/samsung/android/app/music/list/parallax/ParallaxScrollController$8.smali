.class Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$8;
.super Ljava/lang/Object;
.source "ParallaxScrollController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->initExpandableView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$8;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 379
    const/4 v3, 0x0

    .line 380
    .local v3, "isAnimating":Z
    iget-object v6, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$8;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    invoke-static {v6}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->access$1300(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator;

    .line 381
    .local v1, "animator":Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator;->isAnimating()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 382
    const/4 v3, 0x1

    .line 387
    .end local v1    # "animator":Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator;
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$8;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    invoke-static {v6}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->access$1100(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v0

    .line 388
    .local v0, "alpha":F
    iget-object v6, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$8;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    invoke-static {v6}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->access$300(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTranslationY()F

    move-result v5

    .line 389
    .local v5, "transitionY":F
    invoke-static {}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mParallaxThumbnailContainer.onClick() - isAnimating: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", alpha: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", transitionY: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-nez v6, :cond_2

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v0, v6

    if-nez v6, :cond_2

    if-eqz v3, :cond_3

    .line 414
    :cond_2
    return-void

    .line 395
    :cond_3
    iget-object v7, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$8;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    iget-object v6, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$8;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    invoke-static {v6}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->access$1400(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v6, 0x1

    :goto_0
    invoke-static {v7, v6}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->access$1402(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;Z)Z

    .line 396
    iget-object v6, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$8;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    invoke-static {v6}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->access$1500(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string/jumbo v7, "show_full_thumbnail"

    iget-object v8, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$8;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    .line 398
    invoke-static {v8}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->access$1400(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)Z

    move-result v8

    .line 397
    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 398
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 399
    iget-object v6, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$8;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    iget-object v7, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$8;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    iget-object v8, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$8;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    invoke-static {v8}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->access$1400(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)Z

    move-result v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->access$1700(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;Z)I

    move-result v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->access$1602(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;I)I

    .line 403
    iget-object v6, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$8;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    invoke-static {v6}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->access$1400(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 404
    iget-object v6, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$8;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    invoke-static {v6}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->access$1800(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)I

    move-result v2

    .line 405
    .local v2, "from":I
    iget-object v6, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$8;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    invoke-static {v6}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->access$1900(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)I

    move-result v4

    .line 411
    .local v4, "to":I
    :goto_1
    iget-object v6, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$8;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    invoke-static {v6}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->access$1300(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator;

    .line 412
    .restart local v1    # "animator":Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator;
    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator;->start(II)V

    goto :goto_2

    .line 395
    .end local v1    # "animator":Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator;
    .end local v2    # "from":I
    .end local v4    # "to":I
    :cond_4
    const/4 v6, 0x0

    goto :goto_0

    .line 407
    :cond_5
    iget-object v6, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$8;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    invoke-static {v6}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->access$1900(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)I

    move-result v2

    .line 408
    .restart local v2    # "from":I
    iget-object v6, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$8;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    invoke-static {v6}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->access$1800(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)I

    move-result v4

    .restart local v4    # "to":I
    goto :goto_1
.end method
